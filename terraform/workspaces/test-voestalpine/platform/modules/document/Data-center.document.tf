resource "dynatrace_document" "Data-center" {
  name      = "Data-center"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "layouts": {
        "1": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 10,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "2": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 6
        },
        "3": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 6
        },
        "4": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 6
        },
        "5": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 6
        },
        "6": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "7": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 10
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Data center overview\n[Host inventory](/ui/apps/dynatrace.infraops/explorer/Hosts) and monitoring coverage across all datacenters (AWS, Azure, GCP, VMware, geolocation sites).\nHere's what each column in the  Data centers view stands for.\n\n* Data center: The name or identifier of the data center or availability zone.\n* Type: The type of data center, such as:\n  * AWS Availability Zone\n  * GCP zone\n  * Azure Region\n  * Geo Location Site\n* Hosts: The total number of hosts in the data center.\n* Alerts: Aggregated count of active alerts across all hosts in the data center. Critical are marked with red, warnings with yellow emphasis.\n* Monitored: The percentage of hosts actively monitored within the data center. Lower than 100% means Dynatrace identified unmonitored instances based on host connections.",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// ─── Fetch hosts \u0026 resolve data center affiliation ─────────────────\nfetch dt.entity.host\n// Extract the datacenter/zone/region relationship for each host\n// Each host may belong to one of these infrastructure types depending\n// on the cloud provider or on-prem virtualization platform.\n| fields\n    id,\n    dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone],\n    dt.entity.azure_region = belongs_to[dt.entity.azure_region],\n    dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site],\n    dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone],\n    dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter]\n| fieldsAdd\n    awsDataCenterName = entityName(dt.entity.aws_availability_zone),\n    azureRegionName = entityName(dt.entity.azure_region),\n    vmwareDatacenterName = entityName(dt.entity.vmware_datacenter),\n    geolocSiteName = entityName(dt.entity.geoloc_site),\n    gcpZoneName = entityName(dt.entity.gcp_zone)\n\n// ─── Normalize to a single data center ID + name ─────────\n// Use coalesce() to pick the FIRST non-null value across all\n// providers. The order defines precedence: AWS \u003e Azure \u003e VMware\n// \u003e GCP \u003e Geolocation. Hosts with no datacenter relationship\n// receive the synthetic fallback \"NO_DATACENTER\" / \"No Data center\".\n| fields\n    id,\n    dataCenter = coalesce(dt.entity.aws_availability_zone, dt.entity.azure_region, dt.entity.vmware_datacenter, dt.entity.gcp_zone, dt.entity.geoloc_site, \"NO_DATACENTER\"),\n    dataCenterName = coalesce(awsDataCenterName, azureRegionName, vmwareDatacenterName, gcpZoneName, geolocSiteName, \"No Data center\")\n\n// ─── LOOKUP #1 — Host Availability ───────────────────────────────\n// Enrich each host with its latest availability metric.\n// The sub-query creates a timeseries of dt.host.availability,\n// filtered to only the \"up\" state, then extracts the last data\n// point (arrayLast) as a 0/1 indicator. A value of 1 means the\n// host was reporting \"up\" at the end of the selected timeframe.\n// The prefix \"availability.\" namespaces the joined field to avoid\n// collisions (result: availability.available).\n| lookup [\n    timeseries avg(dt.host.availability), from: toTimestamp($dt_timeframe_from), to: toTimestamp($dt_timeframe_to), alias: availability, by:{dt.entity.host, availability.state}, filter: availability.state == \"up\"\n    | fieldsAdd available = arrayLast(availability)\n    | fields dt.entity.host, available\n  ],\n  sourceField: id, lookupField: dt.entity.host, prefix: \"availability.\"\n\n// ─── LOOKUP #2 — fetch Davis Events \u0026 Alerts ───────────────────────────\n// fetches Davis event snapshots, filters to relevant infrastructure events, correlates them with Davis Problems\n// classifies each event as a \"Health Indicator\" or \"Custom Alert\", and aggregates per affected entity.\n| lookup [\n  // Widen the time window by 6h10m before and 1m after the dashboard\n  // timeframe to capture events that started before but are still active, or that closed just at the boundary.\n  fetch dt.davis.events.snapshots, from: toTimestamp($dt_timeframe_from) - 6h - 10m, to: toTimestamp($dt_timeframe_to) + 1m\n  // Only keep events that have at least one affected entity\n  | filter isNotNull(affected_entity_ids)\n  // Exclude graceful shutdowns and INFO events; keep host-affecting or OS service availability events\n  | filter (event.type != \"OSI_GRACEFULLY_SHUTDOWN\"\n      and event.category != \"INFO\"\n      and event.name != \"Host gracefully rebooted\"\n      and event.name != \"Host shutdown\"\n      and in(affected_entity_types, \"dt.entity.host\"))\n    or (event.type == \"AVAILABILITY_EVENT\" and dt.source_entity.type == \"os:service\")\n  // Davis may produce multiple snapshots for the same event. Keep only the most recent snapshot (latest timestamp) per event.\n  | dedup event.id, sort: {timestamp desc}\n  // Merge host entity into affected_entity_ids for completeness\n  | fieldsAdd affected_entity_ids = arrayDistinct(arrayConcat(affected_entity_ids, toArray(dt.entity.host)))\n  // Extract disk entity from dt.query for disk anomaly detectors\n  | parse dt.query, \"DATA 'dt.entity.disk==' DQS: dt.entity.disk\",\n      parsingPrerequisite: dt.settings.schema_id == \"builtin:infrastructure.disk.edge.anomaly-detectors\" and isNull(dt.entity.disk),\n      preserveFieldsOnFailure: true\n  | filterOut event.provider == \"ROOT_CAUSE_ANALYSIS\"\n  // Keep only events overlapping with the dashboard timeframe\n  | filter (isNull(event.end) or event.end \u003e= toTimestamp($dt_timeframe_from))\n      and event.start \u003c= toTimestamp($dt_timeframe_to)\n  | limit 200000\n\n  // ─── Sub-lookup: Correlate events with Davis Problems ───\n  | lookup [\n    fetch dt.davis.problems, from: toTimestamp($dt_timeframe_from) - 6h - 10m, to: toTimestamp($dt_timeframe_to)\n    // Only problems that affect hosts or are availability-related\n    | filter in(affected_entity_types, \"dt.entity.host\") or event.category == \"AVAILABILITY\"\n    | limit 200000\n    | expand dt.davis.event_ids\n    | summarize {\n        problems = collectArray(record(problem.id = event.id), maxLength: 1),\n        investigationMode = countIf(false)\n      }, by: {dt.davis.event_ids}\n  ], sourceField: event.id, lookupField: dt.davis.event_ids, fields: {problems, investigationMode}, executionOrder: leftFirst\n  // Keep only ACTIVE events or events linked to problems\n  | filter event.status == \"ACTIVE\" or investigationMode \u003e 0\n  | expand affected_entity_ids\n\n  // ─── Classify events: Health Indicators vs Custom Alerts ───\n  // Classify each event into one of two buckets:\n  //   • HEALTH_INDICATOR — well-known infrastructure signals\n  //     (CPU saturation, high memory, slow/low disk, NIC errors,\n  //      OS service availability, ungraceful reboots, etc.)\n  //   • CUSTOM_ALERT — everything else (user-defined thresholds,\n  //     custom metric alerts, etc.)\n  | fieldsAdd isHealthAlert = if(\n      (in(event.name, {\"CPU Saturation\", \"CPU saturation\"}) and in(event.provider, {\"ONEAGENT\"}))\n      or in(event.type, {\"EC2_HIGH_CPU\", \"ESXI_GUEST_CPU_LIMIT_REACHED\", \"ESXI_VM_IMPACT_HOST_CPU_SATURATION\", \"OSI_HIGH_MEMORY\", \"ESXI_VM_IMPACT_HOST_MEMORY_SATURATION\", \"OSI_SLOW_DISK\", \"OSI_LOW_DISK_SPACE\", \"OSI_DISK_LOW_INODES\", \"OSI_UNEXPECTEDLY_UNAVAILABLE\"})\n      or (matchesValue(dt.query, \"*dt.host.disk.read_time*\") or matchesValue(dt.query, \"*dt.host.disk.write_time*\") or matchesValue(dt.query, \"*dt.host.disk.avail*\") or matchesValue(dt.query, \"*dt.host.disk.free*\") or (matchesValue(dt.query, \"*dt.host.disk.inodes_total*\") and in(dt.settings.schema_id, {\"builtin:infrastructure.disk.edge.anomaly-detectors\"})))\n      or (matchesValue(event.description, \"Detected read only file system on disk*\") and in(dt.settings.schema_id, {\"builtin:infrastructure.disk.edge.anomaly-detectors\"}) and isNotNull(dt.entity.disk))\n      or (matchesValue(dt.query, \"*dt.host.disk.inodes_avail*\") and in(dt.settings.schema_id, {\"builtin:infrastructure.disk.edge.anomaly-detectors\"}) and matchesValue(event.description, \"*percentage*\"))\n      or (in(event.name, {\"High rate of dropped packets\"}) and isNotNull(dt.entity.network_interface) and in(event.provider, {\"ONEAGENT\"}))\n      or (in(event.type, {\"OSI_NIC_ERRORS_HIGH\", \"OSI_NIC_UTILIZATION_HIGH\"}) and isNotNull(dt.entity.network_interface))\n      or (in(event.type, {\"AVAILABILITY_EVENT\"}) and in(dt.source_entity.type, {\"os:service\"}))\n      or (in(event.type, {\"AVAILABILITY_EVENT\"}) and in(dt.settings.schema_id, {\"builtin:processavailability\"}))\n      or in(event.name, {\"Host ungracefully rebooted\"}),\n    True)\n  | dedup {event.id, affected_entity_ids}\n\n  // ─── Pre-compute the alert record before summarize ───\n  | fieldsAdd alertType = if(isHealthAlert == True, \"HEALTH_INDICATOR\", else: \"CUSTOM_ALERT\")\n  | fieldsAdd problemIDs = problems[][problem.id]\n  | fieldsAdd alertRecord = record(\n      type = alertType,\n      eventId = event.id,\n      eventStatus = event.status,\n      problemsIDs = problemIDs,\n      entity = affected_entity_ids,\n      category = event.category\n    )\n\n  // ─── Single summarize: aggregate alerts per entity ───\n  // Group by affected_entity_ids (which is now a single entity ID\n  // per row after expand). Collect all alert records into an array\n  // and count active errors vs active warnings separately.\n  | summarize {\n      alerts = collectArray(alertRecord),\n      _activeEventsCount = countIf(event.status == \"ACTIVE\" and event.category != \"WARNING\"),\n      _activeWarningEventsCount = countIf(event.status == \"ACTIVE\" and event.category == \"WARNING\")\n    }, by: {affected_entity_ids}\n\n], sourceField: id, lookupField: affected_entity_ids, fields: {alerts, _activeEventsCount, _activeWarningEventsCount}\n\n// ─── Aggregate by Data Center ─────────────────────────────────────\n| summarize {\n    _activeEventsCount = sum(_activeEventsCount),\n    _activeWarningEventsCount = sum(_activeWarningEventsCount),\n    alertsRaw = collectArray(alerts),\n    name = takeFirst(dataCenterName),\n    hostIds = collectDistinct(id),\n    availabilityHosts = countIf(availability.available == 1)\n  },\n  by: {dataCenter, alias: id}\n// Flatten the nested array-of-arrays (each host contributed an\n// array of alerts; collectArray wrapped them in another array)\n// and strip out any null entries from hosts with no alerts.\n| fieldsAdd alerts = arrayRemoveNulls(arrayFlatten(alertsRaw))\n// Derive total host count from the distinct ID set\n| fieldsAdd hosts = arraySize(hostIds)\n| fieldsRemove alertsRaw, hostIds\n\n// ─── Presentation layer \n| fieldsAdd alertsLabel = if(\n    coalesce(_activeEventsCount, 0) == 0 and coalesce(_activeWarningEventsCount, 0) == 0,\n    \"-\",\n    else: concat(\n      if(coalesce(_activeEventsCount, 0) \u003e 0, concat(\"🔴 \", toLong(_activeEventsCount), \" \"), else: \"\"),\n      if(coalesce(_activeWarningEventsCount, 0) \u003e 0, concat(\"🟡 \", toLong(_activeWarningEventsCount)), else: \"\")\n    )\n  )\n// Calculate monitoring coverage as a percentage:\n| fieldsAdd availabilityDatacenter = round(toDouble(availabilityHosts) * 100 / hosts, decimals: 2)\n| fieldsAdd dataCenterType = splitString(id, \"-\")[0]\n| sort isNull(alerts) asc, alerts desc\n| limit 10000\n| fields Id = id, `Data center` = name, Type = dataCenterType, Hosts = hosts, Availability = availabilityDatacenter, Alerts = alertsLabel\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Data center inventory",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"Id\"]",
                "[\"Data center\"]",
                "[\"Type\"]",
                "[\"Hosts\"]",
                "[\"Alerts\"]",
                "[\"Availability\"]"
              ],
              "columnWidths": {
                "[\"Hosts\"]": 115.5,
                "[\"Monitored\"]": 139.09,
                "[\"Type\"]": 272,
                "[\"Unhealthy\"]": 146.59,
                "[\"name\"]": 257.5
              },
              "sortBy": [
                {
                  "columnId": "[\"Data center\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1776940976457,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Count Distinct Datacenters Across All Host Entities\n// Load all host entities from the Dynatrace entity model\nfetch dt.entity.host \n// Extract the datacenter/zone/region relationship for each host\n// Each host may belong to ONE of these infrastructure types depending\n// on the cloud provider or on-prem virtualization platform.\n| fields \n  id, \n  // AWS: Get the availability zone this host resides in\n  aws_az = belongs_to[dt.entity.aws_availability_zone], \n  // Azure: Get the Azure region this host resides in\n  azure_region = belongs_to[dt.entity.azure_region], \n  // On-prem / Geolocation: Get the geolocation site (physical DC)\n  geoloc_site = belongs_to[dt.entity.geoloc_site], \n  // GCP: Get the Google Cloud zone this host resides in\n  gcp_zone = belongs_to[dt.entity.gcp_zone], \n  // VMware: Get the VMware datacenter this host resides in\n  vmware_datacenter = belongs_to[dt.entity.vmware_datacenter] \n// Unify all provider-specific datacenter fields into one\n// coalesce() returns the FIRST non-null value from the list.\n// If a host is in AWS, aws_az will be populated and the rest null.\n// If NONE of the relationships exist, default to \"NO_DATACENTER\".\n| fieldsAdd dataCenter = coalesce(\n    aws_az, \n    azure_region, \n    vmware_datacenter, \n    gcp_zone, \n    geoloc_site, \n    \"NO_DATACENTER\") \n| filter isNotNull(dataCenter)\n// Aggregate — count the number of unique datacenters\n// countDistinct() returns the cardinality of unique values.\n| summarize total_datacenters = countDistinctExact(dataCenter)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total data centers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "datacenters",
              "labelMode": "none",
              "prefixIcon": "DataCenterFilledIcon"
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Count monitored hosts\nfetch dt.entity.host \n| summarize total_hosts = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total monitored hosts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "hosts",
              "labelMode": "none",
              "prefixIcon": "HostsIcon"
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "It takes monitored hosts and excludes monitoring candidates, assigns each host to a **data center** (AWS availability zone / Azure region / GCP zone / VMware datacenter / geoloc site, otherwise “No Data center”), looks up each host’s **latest** `dt.host.availability`, computes **per data center** the percentage of hosts that are **up** (`availability == 1`), and finally returns the **average of those per–data center percentages** as `avg_coverage`.",
          "query": "// Fetches all hosts, determines which datacenter/zone each belongs to,\n// checks host availability via a metric lookup, calculates per-DC\n// monitored-host percentage, then averages across all datacenters.\nfetch dt.entity.host \n// Extract the datacenter/zone/region relationship for each host\n// Each host may belong to ONE of these infrastructure types depending\n// on the cloud provider or on-prem virtualization platform.\n| fields \n  id, \n  dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone], \n  dt.entity.azure_region = belongs_to[dt.entity.azure_region], \n  dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site], \n  dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone], \n  dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter] \n| fieldsAdd \n  awsName = entityName(dt.entity.aws_availability_zone), \n  azureName = entityName(dt.entity.azure_region), \n  vmwareName = entityName(dt.entity.vmware_datacenter), \n  geolocName = entityName(dt.entity.geoloc_site), \n  gcpName = entityName(dt.entity.gcp_zone) \n| fieldsAdd \n  dataCenter = coalesce(\n    dt.entity.aws_availability_zone, \n    dt.entity.azure_region, \n    dt.entity.vmware_datacenter, \n    dt.entity.gcp_zone, \n    dt.entity.geoloc_site, \n    \"NO_DATACENTER\"\n    ), \n  dataCenterName = coalesce(\n      awsName, azureName, vmwareName, gcpName, geolocName, \"No Data center\") \n| fields id, dataCenter, dataCenterName \n// Enrich each host with its latest availability status via a timeseries lookup on dt.host.availability\n| lookup \n  [\n    timeseries avail = avg(dt.host.availability), from: toTimestamp($dt_timeframe_from), to: toTimestamp($dt_timeframe_to), by: {dt.entity.host} \n    | fieldsAdd isUp = arrayLast(avail)\n  ], sourceField: id, lookupField: dt.entity.host, prefix: \"avail.\" \n| fieldsRemove avail.dt.entity.host \n// Summarize groups all host rows by data center\n| summarize { \n    name = takeFirst(dataCenterName), \n    hosts = countDistinctExact(id), \n    monitoredHosts = countIf(avail.isUp == 1) \n  }, by: {dataCenter} \n// Calculate for each data center availability percentage\n| fieldsAdd monitoredPct = round(toDouble(monitoredHosts) * 100 / hosts, decimals: 2) \n| fieldsRemove monitoredHosts \n| summarize avg_coverage = round(avg(monitoredPct), decimals: 2)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Data centers availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "% avg coverage",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1776938288883,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg_coverage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// fetches all hosts, maps each to a datacenter (AWS, Azure, VMware, GCP, or Geolocation), \n// joins host availability data, computes per-datacenter monitoring percentages, and counts how many fall below 90%\nfetch dt.entity.host \n// Extract the datacenter/zone/region relationship for each host\n// Each host may belong to ONE of these infrastructure types depending\n// on the cloud provider or on-prem virtualization platform.\n| fields \n  id, \n  dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone], \n  dt.entity.azure_region = belongs_to[dt.entity.azure_region], \n  dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site], \n  dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone], \n  dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter] \n| fieldsAdd \n  awsName = entityName(dt.entity.aws_availability_zone), \n  azureName = entityName(dt.entity.azure_region), \n  vmwareName = entityName(dt.entity.vmware_datacenter), \n  geolocName = entityName(dt.entity.geoloc_site), \n  gcpName = entityName(dt.entity.gcp_zone) \n| fieldsAdd \n  dataCenter = coalesce(\n    dt.entity.aws_availability_zone, \n    dt.entity.azure_region, \n    dt.entity.vmware_datacenter, \n    dt.entity.gcp_zone, \n    dt.entity.geoloc_site, \n    \"NO_DATACENTER\"), \n  dataCenterName = coalesce(\n    awsName, azureName, vmwareName, gcpName, geolocName, \"No Data center\") \n| fields id, dataCenter, dataCenterName \n// Enrich each host with its latest availability status via a timeseries lookup on dt.host.availability\n| lookup \n  [\n    timeseries avail = avg(dt.host.availability), from: toTimestamp($dt_timeframe_from), to: toTimestamp($dt_timeframe_to), by: {dt.entity.host} \n    | fieldsAdd isUp = arrayLast(avail)\n  ], sourceField: id, lookupField: dt.entity.host, prefix: \"avail.\" \n| fieldsRemove avail.dt.entity.host \n// Summarize groups all host rows by data center\n| summarize { \n    name = takeFirst(dataCenterName), \n    hosts = arraySize(collectDistinct(id)), \n    monitoredHosts = countIf(avail.isUp == 1) \n  }, by: {dataCenter} \n// Calculate for each data center availability percentage\n| fieldsAdd monitoredPct = round(toDouble(monitoredHosts) * 100 / hosts, decimals: 1) \n| fieldsRemove monitoredHosts \n// \n| filter monitoredPct \u003c 90 \n| summarize low_coverage_dcs = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Data centers with availability \u003c 90%",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-warning-default, #a9780f)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "low_coverage_dcs",
                  "type": "long",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "label": "datacenters",
              "labelMode": "none",
              "prefixIcon": "WarningIcon"
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// fetches all hosts, determines which datacenter each belongs to (across 5 cloud/infrastructure providers),\n// then counts distinct hosts per data center type\nfetch dt.entity.host \n| fields \n    id, \n    dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone], \n    dt.entity.azure_region = belongs_to[dt.entity.azure_region], \n    dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site], \n    dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone], \n    dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter] \n// dataCenter: Uses coalesce() to pick the first non-null value from the five relationship fields, \n// falling back to the literal string \"NO_DATACENTER\"\n| fieldsAdd dataCenter = coalesce(\n    dt.entity.aws_availability_zone, \n    dt.entity.azure_region, \n    dt.entity.vmware_datacenter, \n    dt.entity.gcp_zone, \n    dt.entity.geoloc_site, \n    \"NO_DATACENTER\"), \n  // dcType: Takes the same coalesced value, splits it by \"-\", and takes the first element ([0]). \n  // This extracts the entity type prefix from the entity ID (e.g., from \"AWS_AVAILABILITY_ZONE-ABC123\" it would extract \"AWS_AVAILABILITY_ZONE\"\n  dcType = splitString(\n    coalesce(\n      dt.entity.aws_availability_zone, \n      dt.entity.azure_region, \n      dt.entity.vmware_datacenter, \n      dt.entity.gcp_zone, \n      dt.entity.geoloc_site, \n      \"NO_DATACENTER\"), \n    \"-\")[0] \n// Groups all hosts by their dcType (the entity type prefix) and counts hosts per group\n| summarize host_count = count(), by: {dcType} \n| sort host_count desc\n| limit 5",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hosts by data center type",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// fetches all hosts, determines which datacenter each belongs to (across 5 cloud/infrastructure providers), \n// then counts distinct hosts per data center and returns the top 10\nfetch dt.entity.host \n// Extract the datacenter/zone/region relationship for each host\n// Each host may belong to one of these infrastructure types depending\n// on the cloud provider or on-prem virtualization platform.\n| fields \n  id, \n  dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone], \n  dt.entity.azure_region = belongs_to[dt.entity.azure_region], \n  dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site], \n  dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone], \n  dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter] \n| fieldsAdd \n  awsName = entityName(dt.entity.aws_availability_zone), \n  azureName = entityName(dt.entity.azure_region), \n  vmwareName = entityName(dt.entity.vmware_datacenter), \n  geolocName = entityName(dt.entity.geoloc_site), \n  gcpName = entityName(dt.entity.gcp_zone) \n| fieldsAdd \n  dataCenter = coalesce(\n    dt.entity.aws_availability_zone, \n    dt.entity.azure_region, \n    dt.entity.vmware_datacenter, \n    dt.entity.gcp_zone, \n    dt.entity.geoloc_site, \n    \"NO_DATACENTER\"), \n  dataCenterName = coalesce(\n    awsName, azureName, vmwareName, gcpName, geolocName, \"No Data center\") \n| fields id, dataCenter, dataCenterName \n// count distinct hosts per datacenter\n| summarize { \n    name = takeFirst(dataCenterName), \n    hosts = countDistinctExact(id) \n  }, by: {dataCenter} \n| sort hosts desc \n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 data centers by host count",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ]
              },
              "legend": {
                "hidden": true
              }
            },
            "legend": {
              "ratio": 25
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.infraops.Data-center"
  # private = false
}
