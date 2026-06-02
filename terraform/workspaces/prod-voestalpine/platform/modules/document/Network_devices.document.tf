resource "dynatrace_document" "Network_devices" {
  name      = "Network devices"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "18": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 16
        },
        "19": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 16
        },
        "21": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 24
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 20
        },
        "24": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 20
        },
        "28": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "48": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 2
        },
        "49": {
          "h": 2,
          "w": 3,
          "x": 6,
          "y": 2
        },
        "50": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 6
        },
        "51": {
          "h": 2,
          "w": 3,
          "x": 9,
          "y": 2
        },
        "53": {
          "h": 4,
          "w": 9,
          "x": 9,
          "y": 6
        },
        "54": {
          "h": 4,
          "w": 9,
          "x": 0,
          "y": 6
        },
        "55": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 2
        },
        "56": {
          "h": 4,
          "w": 9,
          "x": 3,
          "y": 10
        },
        "57": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 10
        },
        "58": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 12
        },
        "59": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 2
        },
        "64": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 4
        },
        "65": {
          "h": 2,
          "w": 3,
          "x": 9,
          "y": 4
        },
        "66": {
          "h": 2,
          "w": 3,
          "x": 6,
          "y": 4
        },
        "69": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "7": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "72": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 4
        },
        "73": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "8": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 24
        }
      },
      "settings": {
        "defaultSegments": {
          "enabled": false,
          "value": []
        }
      },
      "tiles": {
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic per second divided by interface maximum speed.",
          "query": "// Computes incoming traffic load per interface for selected devices\n\n// Sum incoming bytes per interface with speed\ntimeseries {\n  bytesIn = sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0)\n},\nby: {`dt.entity.network:interface`, if.name, if.speed},\nunion: true,\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Remove null or zero interface speeds\n| filterOut isNull(if.speed) or if.speed == \"0\"\n// Convert bytes to bits per second and compute interface speed in bits per second\n| fieldsAdd bitsInPerSec = bytesIn[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */,\n            interfaceSpeedBitsPerSec = toDouble(if.speed) * power(10, 6)\n// Compute load percentage\n| fieldsAdd load = bitsInPerSec[] / interfaceSpeedBitsPerSec * 100\n// Order by load descending\n| sort load desc\n// Keep top N interfaces\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit interfaces by inbound load",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "load"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "if.name"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "unitsOverrides": [
              {
                "added": 1705060132996,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "load",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic per second divided by interface maximum speed.",
          "query": "// Computes outgoing traffic load per interface for selected devices\n\n// Sum outgoing bytes per interface with speed\ntimeseries {\n  bytesOut = sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\nby: {`dt.entity.network:interface`, if.speed},\nunion: true,\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Remove null or zero interface speeds\n| filterOut isNull(if.speed) or if.speed == \"0\"\n// Convert bytes to bits per second and compute interface speed in bits per second\n| fieldsAdd bitsPerSec = bytesOut[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */,\n            interfaceSpeedBitsPerSec = toDouble(if.speed) * power(10, 6),\n            interfaceName = entityName(`dt.entity.network:interface`)\n// Compute load percentage\n| fieldsAdd load = bitsPerSec[] / interfaceSpeedBitsPerSec * 100\n// Order by load descending\n| sort load desc\n// Keep top N interfaces\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit interfaces by outbound load",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "load"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "if.name",
                "interfaceName"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "unitsOverrides": [
              {
                "added": 1705060184157,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "load",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The sorted list of the network interfaces with the top most  inbound and outbound errors rates,  inbound and outbound discards rates.",
          "query": "// Aggregates interface errors and discards for selected devices\n\n// Sum errors and discards per interface\ntimeseries {\n  errorsIn = sum(com.dynatrace.extension.network_device.if.in.errors.count),\n  errorsOut = sum(com.dynatrace.extension.network_device.if.out.errors.count),\n  discardsIn = sum(com.dynatrace.extension.network_device.if.in.discards.count),\n  discardsOut = sum(com.dynatrace.extension.network_device.if.out.discards.count)\n}, \nby: {`dt.entity.network:interface`, if.name, `dt.entity.network:device`}, \nunion: true,\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Compute total errors + discards\n| fieldsAdd sum = coalesce(errorsIn[], 0) + coalesce(errorsOut[], 0) + \n                  coalesce(discardsIn[], 0) + coalesce(discardsOut[], 0)\n// Average per second over interval\n| fieldsAdd sumAvgPerSecond = arrayAvg(sum) / (toDouble(interval) / 1000000000)\n// Order by rate descending\n| sort sumAvgPerSecond DESC\n// keep top N\n| limit toLong($TopLimit)\n| fields `dt.entity.network:interface`, `dt.entity.network:device`, Device = entityName(`dt.entity.network:device`), Interface = entityName(`dt.entity.network:interface`), `Discards and errors` = sumAvgPerSecond",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit interfaces by discards and errors",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"DNS name\"]": 231
              },
              "hiddenColumns": [
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758099374425,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Discards and errors",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic.",
          "query": "// Selects incoming byte counters for chosen devices, ranks interfaces by incoming bytes\n\n// Sum incoming bytes per interface\ntimeseries {\n  bytesIn = sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0)\n},\nby: {`dt.entity.network:interface`, if.name},\nunion: true,\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Order by incoming bytes descending\n| sort bytesIn DESC\n// Keep top N interfaces\n| limit toLong($TopLimit)\n// Convert bytes to bits per second\n| fieldsAdd bitsInPerSec = bytesIn[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit interfaces by inbound traffic",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bitsInPerSec"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "if.name"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "unitsOverrides": [
              {
                "added": 1705056612480,
                "baseUnit": "bitps",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bitsInPerSec",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic.",
          "query": "// Selects outgoing byte counters for chosen devices, ranks interfaces by outgoing bytes\n\n// Sum outgoing bytes per interface\ntimeseries {\n  bytesOut = sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\nby: {`dt.entity.network:interface`, if.name},\nunion: true,\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Order by outgoing bytes descending\n| sort bytesOut DESC\n// Keep top N interfaces\n| limit toLong($TopLimit)\n// Convert bytes to bits per second\n| fieldsAdd bitsOutPerSec = bytesOut[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit interfaces by outbound traffic",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bitsOutPerSec"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "if.name"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "unitsOverrides": [
              {
                "added": 1705057252272,
                "baseUnit": "bitps",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bitsOutPerSec",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "28": {
          "content": "### Network interfaces performance\n\nUse dashboard filter \"NetworkDevices\" to narrow down to interfaces from specific devices.",
          "type": "markdown"
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of network devices monitored in the environment. Unaffected by dashboard variables, displays total value for this tenant.",
          "query": "// Calculate count of network devices that being tracked by monitoring setup\nfetch `dt.entity.network:device`\n| summarize count(), alias: devices",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network devices",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "NetworkDevicesIcon"
            }
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display value only for selected devices.",
          "query": "// Counts network devices that currently have active problems\nfetch `dt.entity.network:device`\n// Filter devices selected in $NetworkDevices variable\n| filter in(entity.name, $NetworkDevices)\n| lookup [\n  // Retrieves problem snapshots from 6 hours 10 minutes before the timeframe start until now (or timeframe end)\n  fetch dt.davis.problems.snapshots,\n    from: toTimestamp($dt_timeframe_from)-6h-10m, \n    to: toTimestamp($dt_timeframe_to)\n  | expand affectedDevice = affected_entity_ids\n  // Filters for problems affecting custom devices\n  | filter startsWith(affectedDevice, \"CUSTOM_DEVICE\")\n  | sort timestamp\n  | summarize {\n    event.status = takeLast(event.status),\n    dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate)\n    // Groups by problem ID and affected device\n  }, by: {event.id, affectedDevice}\n  // Excludes duplicate problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  // Keeps only ACTIVE problems\n  | filter event.status == \"ACTIVE\"\n  // Counts problems per device\n  | summarize problems = count(), by: {affectedDevice}\n  // Joins the data matching device IDs with affected devices\n], sourceField: id, lookupField: affectedDevice, fields: {problems}, executionOrder: leftFirst\n// Filters to only devices that have at least one active problem\n| fields problemCount = toDouble(coalesce(problems, 0))\n| filter problemCount \u003e 0\n// Counts how many devices meet this criteria\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Devices with problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "NetworkDevicesIcon"
            }
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Reachability for configured devices. Can be filtered by \"NetworkDevices\" variable. More info on the topic: https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/general-information/types-of-synthetic-monitors#nam-monitors. To see details, click on chart sparkline, hover over \"dt.entity.network:device\", select \"Open with...\" option to open device in other applications.",
          "query": "// Identifies the top network devices by reachability/availability\n\n// Collects synthetic monitoring data: Availability percentage from multi-protocol synthetic monitors\ntimeseries availability = avg(dt.synthetic.multi_protocol.request.availability),\n// Aggregates data per monitor and target IP address\nby: {dt.entity.multiprotocol_monitor, multi_protocol.request.target_address, request.target_address}\n\n| fieldsAdd targetAddress = coalesce(request.target_address, multi_protocol.request.target_address)\n// Enriches with device data\n| lookup [\n  fetch `dt.entity.network:device`\n  | expand dt.ip_addresses\n  // Match target IP addresses to network devices, Retrieves device ID and name from the device entity\n], sourceField: targetAddress, lookupField: dt.ip_addresses, fields: {deviceId = id, deviceName = entity.name}\n// Filters out unmapped targets: removes entries that don't match any network device\n| filterOut isNull(deviceId)\n| summarize {\n  // Averages availability across all monitors per device\n  availability = avg(arrayAvg(availability))\n}, by: {monitor = dt.entity.multiprotocol_monitor, deviceId, deviceName}\n| fieldsAdd name = entityName(monitor, type: \"dt.entity.multiprotocol_monitor\")\n| filterOut isNull(name)\n| summarize {\n  // Counts total monitors and unavailable monitors (availability \u003c 100%)\n  totalMonitors = count(),\n  unavailableMonitors  = countIf(availability \u003c 100)\n}, by:{ deviceId, deviceName }\n// Calculates device reachability percentage: (total - unavailable) / total * 100\n| fieldsAdd reachability = 100 * (totalMonitors - unavailableMonitors ) / toDouble(totalMonitors)\n// Sorts devices ascending by reachability (lowest first)\n| sort reachability ASC\n// Returns top N devices based on $TopLimit variable\n| limit toLong($TopLimit)\n| fields name = deviceName, reachability, `dt.entity.network:device` = deviceId // transforming so it can be opened via \"Open with..\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by lowest reachability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorPalette": "red-green-inverted",
              "displayedFields": [
                "name"
              ],
              "labels": {
                "showLabels": true
              },
              "max": {
                "mode": "custom",
                "value": 100
              },
              "min": {
                "mode": "custom",
                "value": 0
              }
            },
            "unitsOverrides": [
              {
                "added": 1758034515466,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "reachability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display value only for selected devices.",
          "query": "// Counts the number of unique active problems \n\n// Fetches all Davis problems\nfetch dt.davis.problems\n// Filters for network device problems (problems affecting dt.entity.network:device entity type)\n| filter in(affected_entity_types, \"dt.entity.network:device\")\n// Expands affected entities to get individual device IDs from each problem\n| expand affected_entity_ids\n// Filter devices selected in $NetworkDevices dashboard variable\n| filter in(entityName(affected_entity_ids, type: \"dt.entity.network:device\"), $NetworkDevices)\n// Filters for active problems only\n| filter event.status == \"ACTIVE\"\n// Groups by problem display ID to ensure each problem is counted once (a problem can affect multiple devices)\n| summarize count(), by: { display_id }\n// Counts unique problems\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "CriticalIcon"
            },
            "unitsOverrides": [
              {
                "added": 1755084496214,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(problemCount)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "53": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables. To see details, click on chart sparkline, hover over \"dt.entity.network:device\", select \"Open with...\" option to open device in other applications.",
          "query": "// Identifies the top network devices ranked by their average memory utilization percentage\n\n// Collects time series data: Used memory (kilobytes), Free memory (kilobytes), Total memory (kilobytes), Memory utilization percentage\ntimeseries {\n  memoryUsed = avg(com.dynatrace.extension.network_device.memory_used), //   \"unit\": \"kBy\",\n  memoryFree = avg(com.dynatrace.extension.network_device.memory_free), //   \"unit\": \"kBy\",\n  memoryTotal = avg(com.dynatrace.extension.network_device.memory_total), // \"unit\": \"kBy\",\n  memoryUsage = avg(com.dynatrace.extension.network_device.memory_usage) //  \"unit\": \"%\",\n},\n// Aggregates metrics per device entity\nby: {`dt.entity.network:device`},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices),\nunion:true\n// Calculates and coalesces memory \n// - Uses reported value or calculates from total - free\n| fieldsAdd memoryUsed = coalesce(memoryUsed[], memoryTotal[] - memoryFree[])\n// - Uses reported value or calculates from used + free\n| fieldsAdd memoryTotal = coalesce(memoryTotal[], memoryUsed[] + memoryFree[])\n// - Uses reported percentage or calculates from used / total * 100\n| fieldsAdd memory = coalesce(memoryUsage[], memoryUsed[]  * 100 / memoryTotal[])\n// Sorts devices descending by memory usage percentage\n| sort memory DESC\n// Returns top N devices based on $TopLimit variable\n| limit toLong($TopLimit)\n| fields `dt.entity.network:device`, name = entityName(`dt.entity.network:device`), memory, timeframe, interval\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by memory usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "name"
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1755091145051,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "memory",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables. To see details, click on chart sparkline, hover over \"dt.entity.network:device\", select \"Open with...\" option to open device in other applications.",
          "query": "// Identifies the top network devices ranked by their average CPU utilization\n\n// Collects time series data of CPU utilization percentage\ntimeseries {\n  cpuPerc = avg(com.dynatrace.extension.network_device.cpu_usage)\n},\n// Groups by device, aggregates metrics per device entity\nby: {`dt.entity.network:device`},\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices),\nunion:true\n// Sorts devices descending by CPU usage\n| sort cpuPerc DESC\n// Returns top N devices based on $TopLimit variable\n| limit toLong($TopLimit)\n| fields `dt.entity.network:device`, name = entityName(`dt.entity.network:device`), cpuPerc, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by CPU usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "name"
              ]
            },
            "legend": {
              "ratio": 24
            }
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables. Traffic is counted for last 3 minutes of a timeframe. To see details, click on chart sparkline, hover over \"dt.entity.network:device\", select \"Open with...\" option to open device in other applications.",
          "query": "// Identifies the top network devices by total bandwidth utilization (bits per second)\n\n// Collects time series data for incoming and outgoing bytes\ntimeseries {\n  ifcBytesIn =  sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n  ifcBytesOut =  sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\n// Filter devices selected in $NetworkDevices variable\nfilter: isNotNull(`dt.entity.network:interface`) and in(entityName(`dt.entity.network:device`), $NetworkDevices),\n// Groups by speed information\nby:{ `dt.entity.network:device`, `dt.entity.network:interface`, if.speed}, union:true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates interface saturation metrics\n| fieldsAdd\n  // Total bytes in\n  ifcBytesInSum=arraySum(ifcBytesIn),\n  // Total bytes out\n  ifcBytesOutSum=arraySum(ifcBytesOut),\n  // Interface capacity (speed converted to bytes/minute)\n  ifSpeedInBytesPerMinute = ((toDouble(if.speed) * 1000000)/8)*60\n// Utilization percentage (traffic / capacity)\n| fieldsAdd ifcSaturation = ((arrayAvg(ifcBytesIn) + arrayAvg(ifcBytesOut))/(toDouble(interval) / 60000000000)) / ifSpeedInBytesPerMinute\n// Combined incoming + outgoing bits per second\n| fieldsAdd lastBitsInOutPerSecond = (arrayAvg(ifcBytesIn)+arrayAvg(ifcBytesOut))*8/(toDouble(interval)/1000000000)\n| summarize {\n  // Sums total bits per second across all interfaces per device\n  bitsInOutPerSecond = sum(lastBitsInOutPerSecond)\n  // Aggregates by device\n}, by: {`dt.entity.network:device`}\n// Removes null values\n| filterOut isNull(bitsInOutPerSecond)\n// Sorts descending by bandwidth usage\n| sort bitsInOutPerSecond DESC\n//Returns top devices based on $TopLimit variable\n| limit toLong($TopLimit)\n| fields `dt.entity.network:device`, name = entityName(`dt.entity.network:device`), bitsInOutPerSecond\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by network traffic",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "groupMode": "grouped",
                "isCategoryLabelVisible": false
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "unitsOverrides": [
              {
                "added": 1755092590880,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bitsInOutPerSecond",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "If chart is empty, that means there's no saturated devices at the moment. Can be filtered by \"TopLimit\", \"NetworkDevices\" variables.",
          "query": "// Identifies selected network devices with interfaces above 95% utilization\n\n// Collect in/out byte counters per interface\ntimeseries {\n  ifcBytesIn =  sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n  ifcBytesOut =  sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: isNotNull(`dt.entity.network:interface`) and in(entityName(`dt.entity.network:device`), $NetworkDevices),\n// Group by device, interface, and speed\nby: { `dt.entity.network:device`, `dt.entity.network:interface`, if.speed }, union:true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Compute byte sums and interface speed in bytes/minute\n| fieldsAdd\n  ifcBytesInSum=arraySum(ifcBytesIn),\n  ifcBytesOutSum=arraySum(ifcBytesOut),\n  ifSpeedInBytesPerMinute = ((toDouble(if.speed) * 1000000)/8)*60\n// Compute saturation ratio per interface\n| fieldsAdd ifcSaturation = ((arrayAvg(ifcBytesIn) + arrayAvg(ifcBytesOut))/(toDouble(interval) / 60000000000)) / ifSpeedInBytesPerMinute\n| summarize {\n// Count saturated interfaces per device (\u003e0.95)\n  saturatedInterfaces = toDouble(coalesce(countIf(ifcSaturation \u003e 0.95), 0))\n}, by: {`dt.entity.network:device`}\n\n| fields saturatedInterfaces, `dt.entity.network:device`, name = entityName(`dt.entity.network:device`)\n// Remove devices with zero saturation\n| filterOut isNull(saturatedInterfaces) or saturatedInterfaces == 0\n// Sort by saturated count descending\n| sort saturatedInterfaces DESC\n// Limit to top N devices\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by interfaces saturation",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "isValueLabelVisible": false,
                "valueAxisLabel": "Saturated interfaces count"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "legend": {
              "ratio": 37
            },
            "unitsOverrides": [
              {
                "added": 1755092897836,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "saturatedInterfaces",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables.",
          "query": "// Counts how many devices have at least one highly saturated interface\n\n// Collects inbound and outbound interface bytes\ntimeseries {\n  ifcBytesIn =  sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n  ifcBytesOut =  sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: isNotNull(`dt.entity.network:interface`) and in(entityName(`dt.entity.network:device`), $NetworkDevices),\nby: { `dt.entity.network:device`, `dt.entity.network:interface`, if.speed }, union:true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Computes per‑interface capacity in bytes per minute from if.speed\n| fieldsAdd\n  ifcBytesInSum=arraySum(ifcBytesIn),\n  ifcBytesOutSum=arraySum(ifcBytesOut),\n  ifSpeedInBytesPerMinute = ((toDouble(if.speed) * 1000000)/8)*60\n  // Calculates interface saturation as traffic rate divided by capacity\n| fieldsAdd ifcSaturation = ((arrayAvg(ifcBytesIn) + arrayAvg(ifcBytesOut))/(toDouble(interval) / 60000000000)) / ifSpeedInBytesPerMinute\n| summarize {\n  // Counts interfaces with saturation \u003e0.95 per device\n  saturatedInterfaces = toDouble(coalesce(countIf(ifcSaturation \u003e 0.95), 0))\n}, by: {`dt.entity.network:device`}\n\n| fields saturatedInterfaces\n// Filters devices with zero saturated interfaces\n| filterOut isNull(saturatedInterfaces) or saturatedInterfaces == 0\n// Summarizes the total count of devices that have at least one saturated interface\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Saturated devices",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "NetworkDevicesIcon"
            },
            "unitsOverrides": [
              {
                "added": 1755092897836,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "saturatedInterfaces",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables.",
          "query": "// Counts how many network devices have at least one interface running above 95% utilization\n\n// Collect in/out byte counters per interface\ntimeseries {\n  ifcBytesIn =  sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n  ifcBytesOut =  sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: isNotNull(`dt.entity.network:interface`) and in(entityName(`dt.entity.network:device`), $NetworkDevices),\n// Group by device, interface, and speed\nby: { `dt.entity.network:device`, `dt.entity.network:interface`, if.speed }, union:true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Compute sums and interface speed in bytes/minute\n| fieldsAdd\n  ifcBytesInSum=arraySum(ifcBytesIn),\n  ifcBytesOutSum=arraySum(ifcBytesOut),\n  ifSpeedInBytesPerMinute = ((toDouble(if.speed) * 1000000)/8)*60\n// Compute interface saturation ratio\n| fieldsAdd ifcSaturation = ((arrayAvg(ifcBytesIn) + arrayAvg(ifcBytesOut))/(toDouble(interval) / 60000000000)) / ifSpeedInBytesPerMinute\n| summarize {\n// Count saturated interfaces per device (\u003e0.95)\n  saturatedInterfaces = toDouble(coalesce(countIf(ifcSaturation \u003e 0.95), 0))\n}, by: {`dt.entity.network:device`}\n\n| fields saturatedInterfaces\n// Remove null or zero saturation devices\n| filterOut isNull(saturatedInterfaces) or saturatedInterfaces == 0\n// Sum saturated interfaces across devices\n| summarize sum(saturatedInterfaces)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Saturated interfaces",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "prefixIcon": "ArrowRightIcon"
            },
            "unitsOverrides": [
              {
                "added": 1755092897836,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(saturatedInterfaces)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays total in/out traffic for all devices. Can be filtered by \"NetworkDevices\" variable. Value is calculated as average of inbound and outbound traffic for latest 10 minutes.",
          "query": "// Monitor overall network load/bandwidth consumption across infrastructure\ntimeseries {\n  // Total bytes received\n  ifcBytesIn = sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n  // Total bytes sent\n  ifcBytesOut = sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices),\n// Groups data by individual network devices\nby: {`dt.entity.network:device`}, \nunion: true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates bandwidth in bits per second\n| fieldsAdd bitsInOutPerSecond = (arrayAvg(ifcBytesIn)+arrayAvg(ifcBytesOut)) * 8 / (toDouble(interval) / 1000000000)\n// Sums up the bandwidth across all selected devices\n| summarize sum(bitsInOutPerSecond)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total traffic",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "InternetIcon"
            },
            "unitsOverrides": [
              {
                "added": 1755092590880,
                "baseUnit": "bitps",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(bitsInOutPerSecond)",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "64": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display metric value only for selected devices.",
          "query": "// Calculates the average rate of outgoing network interface errors per second\ntimeseries count = sum(com.dynatrace.extension.network_device.if.out.errors.count),\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), {$NetworkDevices}),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates error rate\n// - Averages the error count over the time period using arrayAvg(count)\n// - Converts the time interval from nanoseconds to seconds\n// - Divides average errors by seconds to get errors per second\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors outbound",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1758095622578,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display metric value only for selected devices.",
          "query": "// Calculates the average rate of outgoing network interface discards per second \ntimeseries count = sum(com.dynatrace.extension.network_device.if.out.discards.count),\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), {$NetworkDevices}),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates discard rate\n// - Averages the discard count over the time period using arrayAvg(count)\n// - Converts the time interval from nanoseconds to seconds\n// - Divides average discards by seconds to get discards per second\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Discards outbound",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1758095700062,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display metric value only for selected devices.",
          "query": "// Calculates the average rate of incoming network interface discards per second\ntimeseries count = sum(com.dynatrace.extension.network_device.if.in.discards.count),\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), {$NetworkDevices}),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates discard rate\n// - Averages the discard count over the time period using arrayAvg(count)\n// - Converts the time interval from nanoseconds to seconds\n// - Divides average discards by seconds to get discards per second\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Discards inbound",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1758095662246,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"TopLimit\", \"NetworkDevices\" variables.",
          "query": "// Finds selected network devices where interfaces have `admin` status `up` but `oper` status `down`, counts those per device\n\n// Average interface status per interface, device, and admin/oper status\ntimeseries {\n  status = avg(com.dynatrace.extension.network_device.if.status)\n}, \nby: {`dt.entity.network:interface`, `dt.entity.network:device`, oper.status, admin.status},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Build record with latest status index and device info\n| fieldsAdd record = record(\n  latestStatusIndex = arrayLastIndexOf(status, arrayLast(status)),\n  adminStatus = admin.status,\n  operStatus = oper.status,\n  deviceId = `dt.entity.network:device`,\n  deviceName = entityName(`dt.entity.network:device`)\n)\n// takeMax on object will apply takeMax to 1st field in object (latestStatusIndex)\n| summarize record = takeMax(record), by: { `dt.entity.network:interface` }\n| summarize {\n// Count admin-up/oper-down interfaces per device\n  adminUpOperDown = toDouble(countIf(\n    startsWith(record[adminStatus], \"up\", caseSensitive: false) \n    and startsWith(record[operStatus], \"down\", caseSensitive: false)\n  ))\n}, by: {deviceId = record[deviceId], deviceName = record[deviceName]}\n// Remove null or zero counts\n| filterOut isNull(adminUpOperDown) or adminUpOperDown == 0\n| fields `dt.entity.network:device` = deviceId, deviceName, adminUpOperDown\n// Order by count descending\n| sort adminUpOperDown DESC\n// Keep top N devices\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit devices by Up/Down interfaces",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "deviceName"
                ],
                "categoryAxisLabel": "asdfasdf",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxisLabel": "Up/Down interfaces count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "unitsOverrides": [
              {
                "added": 1755509858046,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "adminUpOperDown",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "7": {
          "content": "### Network devices performance\n\nExplore the key metrics of the network devices available in your environment. If data is missing, [deploy network device extensions](/ui/apps/dynatrace.extensions.manager/).\nFor more details please visit\n[Infrastructure \u0026 Operations: Network devices](/ui/apps/dynatrace.infraops/explorer/Network%20devices).\n",
          "type": "markdown"
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Can be filtered by \"NetworkDevices\" variable. If filtered, will display metric value only for selected devices.",
          "query": "// Calculates the average rate of incoming network interface errors per second\ntimeseries count = sum(com.dynatrace.extension.network_device.if.in.errors.count),\n// Filter devices selected in $NetworkDevices variable\nfilter: in(entityName(`dt.entity.network:device`), {$NetworkDevices}),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n// Calculates error rate\n// - Averages the error count over the time period using arrayAvg(count)\n// - Converts the time interval from nanoseconds to seconds\n// - Divides average errors by seconds to get errors per second\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors inbound",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1758036915943,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "73": {
          "content": "**See this dashboard with test data in our Playground:** [Network devices performance in Playground](https://dt-url.net/networkDevicesPerformance).",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The list of network device interfaces in administratively up and operationally down state. Open in another application by going into cell action menu and selecting \"Open with...\" option.",
          "query": "// Finds interfaces on selected devices where `admin` is up and `oper` is down\n\n// Average interface status with device/interface fields\ntimeseries {\n  status = avg(com.dynatrace.extension.network_device.if.status)\n}, \nby: {\n  `dt.entity.network:interface`, `dt.entity.network:device`, oper.status, admin.status,\n  device.name, if.name // display fields\n},\n// Filter devices selected in \"NetworkDevices\" dashboard variable\nfilter: in(entityName(`dt.entity.network:device`), $NetworkDevices)\n// Build a record with latest status and names\n| fieldsAdd record = record(\n  latestStatusIndex = arrayLastIndexOf(status, arrayLast(status)),\n  adminStatus = admin.status,\n  operStatus = oper.status,\n  device=`dt.entity.network:device`,\n  interface = `dt.entity.network:interface`,\n  deviceName = entityName(`dt.entity.network:device`),\n  interfaceName = entityName(`dt.entity.network:interface`)\n)\n// // takeMax on object will apply takeMax to 1st field in object (latestStatusIndex)\n| summarize record = takeMax(record), by: { `dt.entity.network:interface` }\n// Admin up and oper down\n| filter startsWith(record[adminStatus], \"up\", caseSensitive: false) \n     and startsWith(record[operStatus], \"down\", caseSensitive: false)\n| fields Device = record[deviceName], Interface = record[interfaceName], `dt.entity.network:device` = record[device], `dt.entity.network:interface` = record[interface]\n// Order by device and interface ascending\n| sort Device ASC, Interface ASC",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Interfaces in Up/Down state",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "hiddenColumns": [
                [
                  "dt.entity.network:device"
                ],
                [
                  "dt.entity.network:interface"
                ]
              ],
              "lineWrapIds": [
                [
                  "Device"
                ],
                [
                  "Interface"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Device\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": "10",
          "editable": true,
          "input": "data \nrecord(limit = 1),\nrecord(limit = 3),\nrecord(limit = 10),\nrecord(limit = 50),\nrecord(limit = 100),\nrecord(limit = 500),\nrecord(limit = 1000)",
          "key": "TopLimit",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch `dt.entity.network:device`\n| summarize name = collectDistinct(entity.name)\n| expand name\n| fieldsAdd name = coalesce(name, \"*\")\n| sort name ASC",
          "key": "NetworkDevices",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.infraops.Network-devices-performance"
  # private = false
}
