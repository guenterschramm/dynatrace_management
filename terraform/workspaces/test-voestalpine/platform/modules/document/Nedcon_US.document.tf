resource "dynatrace_document" "Nedcon_US" {
  name    = "Nedcon US 2161"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 3,
          "x": 3,
          "y": 12
        },
        "1": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 12
        },
        "15": {
          "h": 6,
          "w": 18,
          "x": 0,
          "y": 17
        },
        "19": {
          "h": 4,
          "w": 12,
          "x": 6,
          "y": 2
        },
        "2": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 8
        },
        "20": {
          "h": 3,
          "w": 3,
          "x": 0,
          "y": 3
        },
        "22": {
          "h": 4,
          "w": 4,
          "x": 14,
          "y": 8
        },
        "24": {
          "h": 5,
          "w": 8,
          "x": 10,
          "y": 12
        },
        "26": {
          "h": 4,
          "w": 4,
          "x": 10,
          "y": 8
        },
        "27": {
          "h": 1,
          "w": 6,
          "x": 0,
          "y": 2
        },
        "28": {
          "h": 2,
          "w": 9,
          "x": 0,
          "y": 6
        },
        "29": {
          "h": 2,
          "w": 8,
          "x": 10,
          "y": 6
        },
        "3": {
          "h": 4,
          "w": 3,
          "x": 3,
          "y": 8
        },
        "30": {
          "h": 2,
          "w": 18,
          "x": 0,
          "y": 0
        },
        "31": {
          "h": 4,
          "w": 4,
          "x": 6,
          "y": 8
        },
        "32": {
          "h": 5,
          "w": 4,
          "x": 6,
          "y": 12
        },
        "4": {
          "h": 3,
          "w": 3,
          "x": 3,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978196623,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.service\n| filter serviceType != \"DATABASE_SERVICE\"\n| lookup [\n  fetch dt.davis.problems\n  | filter event.status == \"ACTIVE\"\n  | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Service Health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "no"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "1": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978146448,
                "icon": "HostsIcon",
                "name": "Hosts",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Hosts"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host\n| lookup [\n  fetch dt.davis.problems\n  | filter event.status == \"ACTIVE\"\n  | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Host Health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "no"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { sum(nedcon.loglevel.counter), value.A = count(nedcon.loglevel.counter, scalar: true) }, by: { loglevel }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "loglevel"
                ],
                "convertToValue": "Count",
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "nedcon.loglevel.counter"
                }
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Loglines by loglevel",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "log-level",
                  "comparator": "= *value*",
                  "field": "loglevel",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 15
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n| fields Problem_ID = display_id, Category = event.category, Status = event.status, Severity=event.severity, Affected_Entities  = affected_entity_names, Duration = resolved_problem_duration, Start = event.start, End=event.end\n| sort Status asc ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "=",
                  "field": "Status",
                  "metadata": {
                    "applyTo": "row"
                  },
                  "type": "string",
                  "value": "ACTIVE"
                }
              ]
            }
          }
        },
        "2": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978114826,
                "icon": "HostsIcon",
                "name": "Hosts",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Hosts"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hosts monitored",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "20": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777977744577,
                "icon": "EventIcon",
                "name": "Problems",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.davis.problems"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n| filter event.status == \"ACTIVE\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "\u003e",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                },
                {
                  "color": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "=",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "22": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978177499,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count distinct target addresses for synthetic requests grouped by request type, host, monitor, synthetic location, and target address, \n// while filtering by host tags, monitor tags, and synthetic locations \ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address}\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| summarize targets = countDistinct(target_address)\n| fieldsRename `Targets` = targets",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Targets",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "TargetFilledIcon"
            }
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve multiprotocol monitors with their execution status, associated problems, host tags, monitor tags, and assigned synthetic locations, \n// filtering for monitors with active problems or matching tags, and sorting by the last execution timestamp.\nfetch dt.entity.multiprotocol_monitor \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags = tags, assignedLocations, hosts = monitors[dt.entity.host]\n| expand dt.entity.host = hosts\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| summarize host_tags = collectDistinct(host_tags, expand: true), by:{id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags, assignedLocations}\n\n| sort lastExecutionTimestamp desc\n| limit 10000\n\n// get the last execution \n| fieldsAdd execution = lookup ([\n    timeseries series = sum(dt.synthetic.multi_protocol.request.executions), \n               interval: 15m,\n              // from: toTimestamp($dt_timeframe_from) - 90m,\n               by:{ dt.synthetic.monitored_entity_ids,\n                    dt.entity.multiprotocol_monitor,\n                    dt.entity.synthetic_location,\n                    result.state,\n                    result.status.message,\n                    result.http_status.code,\n                    calls\n                  }\n    | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n    | summarize { state = takeLast(result.state), message = takeLast(result.status.message), code = takeLast(result.http_status.code)}, by: {dt.entity.multiprotocol_monitor}\n], sourceField:id, lookupField:dt.entity.multiprotocol_monitor)\n\n// get the active problems \n| fieldsAdd problem = lookup ([\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids)\n\n| fields dt.entity.multiprotocol_monitor = id, \n         monitor_name = entity.name, \n         entity_ids = problem[affected_entity_ids], \n         event.id=problem[event.id], \n         event.kind=problem[event.kind],\n         lastExecutionTimestamp, \n         problem_name = problem[event.name], \n         execution\n| fieldsAdd status = if(isNotNull(problem_name), \"problem\", \n                          else: if(isNull(execution[code]) and isNull(execution[state]), \"no_data\", else: \"ok\"))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network monitor overview",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "status",
                  "value": "problem"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "status",
                  "value": "ok"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-02-default, #84859a)"
                  },
                  "field": "status",
                  "value": "no_data"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "status"
              },
              "displayedFields": [
                "monitor_name"
              ],
              "labels": {
                "showLabels": true
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "26": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978177499,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count distinct ICMP monitors grouped by request type, filtering by synthetic locations and tags associated with hosts and monitors.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location},\n    filter: request.type == \"icmp\"\n    \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| summarize { monitors = countDistinct(dt.entity.multiprotocol_monitor) }, \n    by:{request.type}\n    \n| fieldsRename `ICMP monitors` = monitors",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon"
            }
          }
        },
        "27": {
          "content": "# Problems [Problem Details](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.davis.problems/)",
          "type": "markdown"
        },
        "28": {
          "content": "# Infrastructure Overview \n\n [Hosts](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Compute/Hosts) | [Services](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services/) |\n [Network Devices](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Network/Network%20devices)",
          "type": "markdown"
        },
        "29": {
          "content": "# Device Availability \n[Overview Dashboard](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/dynatrace.synthetic.synthetic-nam-monitoring)",
          "type": "markdown"
        },
        "3": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978177499,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.service\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Services monitored",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "30": {
          "content": "# Dashboards\n\n[Network Overview](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/com-dynatrace-extension-snmp-auto-discovery-generic-network-overview) |\n[Cisco Devices](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/com-dynatrace-extension-snmp-generic-cisco-device-overview) |\n[Databases](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.database.overview/home) |\n[Site Topology](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.smartscape/view/dynatrace.smartscape.smartscape-on-grail)",
          "type": "markdown"
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| filter in(name, $Devices)\n| summarize count=count(), by: {monitoring_mode}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Devices by monitoring mode",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "count",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count",
              "labelMode": "data",
              "recordField": "count",
              "recordLabel": "monitoring_mode",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| filter in(name, $Devices)\n| fields name, monitoring_mode",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Devices by monitoring mode",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-03-default, #627cfe)"
                  },
                  "field": "monitoring_mode",
                  "type": "string",
                  "value": "Neighbor"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "field": "monitoring_mode",
                  "type": "string",
                  "value": "Discovery"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "monitoring_mode"
              },
              "displayedFields": [
                "name"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            }
          }
        },
        "4": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777977744577,
                "icon": "EventIcon",
                "name": "Problems",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.davis.problems"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Problems Total",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": null
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes EXT_NETWORK_DEVICE\n| fields value=name",
          "key": "Devices",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  private = true
}
