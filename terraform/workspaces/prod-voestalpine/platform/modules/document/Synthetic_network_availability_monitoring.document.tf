resource "dynatrace_document" "Synthetic_network_availability_monitoring" {
  name      = "Synthetic network availability monitoring"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "100": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 85
        },
        "104": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 2
        },
        "105": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "106": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "107": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "108": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 105
        },
        "109": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 2
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 27
        },
        "24": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 11
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 27
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "35": {
          "h": 3,
          "w": 8,
          "x": 12,
          "y": 11
        },
        "36": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "37": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "38": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "41": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 11
        },
        "42": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 14
        },
        "43": {
          "h": 3,
          "w": 8,
          "x": 12,
          "y": 14
        },
        "44": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 14
        },
        "45": {
          "h": 3,
          "w": 8,
          "x": 12,
          "y": 17
        },
        "46": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 17
        },
        "47": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 17
        },
        "49": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 61
        },
        "50": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 54
        },
        "51": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 49
        },
        "52": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 61
        },
        "53": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 75
        },
        "54": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 85
        },
        "55": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 91
        },
        "56": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 77
        },
        "62": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 4
        },
        "64": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "65": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "66": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 34
        },
        "68": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "69": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 34
        },
        "70": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 4
        },
        "71": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 4
        },
        "74": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 59
        },
        "77": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 91
        },
        "78": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 83
        },
        "81": {
          "h": 6,
          "w": 20,
          "x": 4,
          "y": 41
        },
        "82": {
          "h": 6,
          "w": 4,
          "x": 0,
          "y": 41
        },
        "83": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "84": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 97
        },
        "85": {
          "h": 6,
          "w": 20,
          "x": 4,
          "y": 99
        },
        "86": {
          "h": 6,
          "w": 4,
          "x": 0,
          "y": 99
        },
        "87": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 67
        },
        "88": {
          "h": 6,
          "w": 20,
          "x": 4,
          "y": 69
        },
        "89": {
          "h": 6,
          "w": 4,
          "x": 0,
          "y": 69
        },
        "91": {
          "h": 3,
          "w": 8,
          "x": 4,
          "y": 11
        },
        "92": {
          "h": 3,
          "w": 8,
          "x": 4,
          "y": 14
        },
        "93": {
          "h": 3,
          "w": 8,
          "x": 4,
          "y": 17
        },
        "96": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "97": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 49
        },
        "98": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 54
        },
        "99": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 77
        }
      },
      "settings": {},
      "tiles": {
        "100": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Shows the performance trends of network targets across various synthetic locations over the past 7 days. Use this chart to identify periods of degraded performance or improvement, understand normal behavior for each location, and compare values with the availability and performance data from other sections",
          "query": "// Analyze the average DNS resolution time over the past 7 days, grouped by host, multiprotocol monitor, and synthetic location, filtered by host tags, monitor tags, and synthetic locations matching predefined values, and summarize the performance by timeframe, interval, and location name.\ntimeseries performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time), \n  by:{dt.entity.host, \n      dt.entity.multiprotocol_monitor, \n      dt.entity.synthetic_location},  \n  interval:1d, \n  from:now() - 7d\n\n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| fieldsAdd Performance = arrayAvg(performance_series)\n| sort Performance desc\n| summarize { performance_time = avg(performance_series[]) }, by:{timeframe, interval, location_name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average resolution time trends by locations (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "performance_time"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Round-trip time"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "location_name"
              ]
            },
            "legend": {
              "ratio": 19
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "performance_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "104": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve multiprotocol monitors with their execution status, associated problems, host tags, monitor tags, and assigned synthetic locations, \n// filtering for monitors with active problems or matching tags, and sorting by the last execution timestamp.\nfetch dt.entity.multiprotocol_monitor \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags = tags, assignedLocations, hosts = monitors[dt.entity.host]\n| expand dt.entity.host = hosts\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| summarize host_tags = collectDistinct(host_tags, expand: true), by:{id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags, assignedLocations}\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| sort lastExecutionTimestamp desc\n| limit 10000\n\n// get the last execution \n| fieldsAdd execution = lookup ([\n    timeseries series = sum(dt.synthetic.multi_protocol.request.executions), \n               interval: 15m,\n              // from: toTimestamp($dt_timeframe_from) - 90m,\n               by:{ dt.synthetic.monitored_entity_ids,\n                    dt.entity.multiprotocol_monitor,\n                    dt.entity.synthetic_location,\n                    result.state,\n                    result.status.message,\n                    result.http_status.code,\n                    calls\n                  }\n    | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n    | filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n    | filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n    | summarize { state = takeLast(result.state), message = takeLast(result.status.message), code = takeLast(result.http_status.code)}, by: {dt.entity.multiprotocol_monitor}\n], sourceField:id, lookupField:dt.entity.multiprotocol_monitor)\n\n// get the active problems \n| fieldsAdd problem = lookup ([\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids)\n\n| fields dt.entity.multiprotocol_monitor = id, \n         monitor_name = entity.name, \n         entity_ids = problem[affected_entity_ids], \n         event.id=problem[event.id], \n         event.kind=problem[event.kind],\n         lastExecutionTimestamp, \n         problem_name = problem[event.name], \n         execution\n| fieldsAdd status = if(isNotNull(problem_name), \"problem\", \n                          else: if(isNull(execution[code]) and isNull(execution[state]), \"no_data\", else: \"ok\"))",
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
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "comparator": "=",
                  "id": 2310421.5,
                  "value": "problem"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "=",
                  "id": 2317547.6000000015,
                  "value": "ok"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-02-default, #84859a)"
                  },
                  "comparator": "=",
                  "id": 2325469.5,
                  "value": "no_data"
                }
              ],
              "dataMappings": {
                "value": "status"
              },
              "displayedFields": [
                "monitor_name",
                "event.id"
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
        "105": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve all multiprotocol monitors with their associated hosts, tags, and assigned locations, filter for monitors matching wildcard patterns in host tags or monitor tags, and assigned to synthetic locations,\n// then join with active problems affecting these monitors to count the distinct number of active problems per monitor.\nfetch dt.entity.multiprotocol_monitor \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags = tags, assignedLocations, hosts = monitors[dt.entity.host]\n| expand dt.entity.host = hosts\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| summarize host_tags = collectDistinct(host_tags, expand: true), by:{id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags, assignedLocations}\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n     | filter event.status == \"ACTIVE\"\n     | expand affected_entity_ids\n     | limit 10000\n ], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.http_check = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n//| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.http_check) }, by:{lookup.event.name}\n| summarize countDistinct(event.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network monitors with problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "countDistinct(event.id)",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "countDistinct(event.id)",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon"
            }
          }
        },
        "106": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve the top 10 active Davis problems involving multiprotocol monitors, filtering by synthetic locations and excluding duplicates. \n// Include details such as problem ID, time, name, monitor name, and other relevant attributes, sorted by the most recent event start time.\nfetch dt.davis.problems\n| filter in(array(\"dt.entity.multiprotocol_monitor\"), affected_entity_types)\n| filter event.status == \"ACTIVE\"\n| expand affected_entity_id = affected_entity_ids\n\n//| filter in($HostTag, \"All\") or in(affected_entity_ids, arrayFirst(splitString($HostTag, \" : \")))\n| filter in(arrayFlatten(dt.entity.synthetic_location), iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| filter not(dt.davis.is_duplicate)\n| expand affected_entity_id = affected_entity_ids\n| fieldsAdd monitor_name = coalesce(entityName(affected_entity_id, type:\"dt.entity.synthetic_test\"), entityName(affected_entity_id, type:\"dt.entity.multiprotocol_monitor\"))\n| fieldsAdd monitor_tags = coalesce(entityAttr(affected_entity_id, type:\"dt.entity.synthetic_test\", \"tags\"), entityAttr(affected_entity_id, type:\"dt.entity.multiprotocol_monitor\", \"tags\"))\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n\n| summarize { time = takeLast(event.start), \n              title = takeLast(event.name), \n              location = arrayFlatten(collectDistinct(dt.entity.synthetic_location)),\n              status=takeLast(event.status), \n              monitor_name =  collectDistinct(monitor_name),\n              dt.synthetic.monitor_ids = collectDistinct(affected_entity_id),\n              event.id = takeLast(event.id),\n              event.kind = takeLast(event.kind)},               \n            by: {id = display_id}\n| sort time desc\n| fieldsRename `Problem id` = id, `Time` = time, `Name` = title, `Monitor name` = monitor_name\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit most recent problems",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "hiddenColumns": [
                [
                  "location"
                ],
                [
                  "status"
                ],
                [
                  "dt.synthetic.monitor_ids"
                ],
                [
                  "event.id"
                ],
                [
                  "event.kind"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Time\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "107": {
          "content": "##### Availability and performance",
          "type": "markdown"
        },
        "108": {
          "content": "**Data is missing or you want to learn more? Please follow the links below to complete your data onboarding:**\n\n* [Configure Network Availability Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/network-availability-monitors/create-a-nam-monitor) \n* [Learn more about Network Availability Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/network-availability-monitors/network-availability-monitoring) \n* [Learn more about types of Synthetic Monitors](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/general-information/types-of-synthetic-monitors) \n* [Discover more capabilities of Synthetic Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring) ",
          "type": "markdown"
        },
        "109": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve all multiprotocol monitors, including their tags, assigned locations, and associated hosts, filter them by matching tags and synthetic locations, \n// and correlate them with active problems to summarize the number of problems and associated monitor IDs for each problem name.\nfetch dt.entity.multiprotocol_monitor \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags = tags, assignedLocations, hosts = monitors[dt.entity.host]\n| expand dt.entity.host = hosts\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| summarize host_tags = collectDistinct(host_tags, expand: true), by:{id, entity.name, lastExecutionTimestamp, isEnabled, monitor_tags, assignedLocations}\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n     | filter event.status == \"ACTIVE\"\n     | expand affected_entity_ids\n     | limit 10000\n ], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.http_check = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n| fieldsAdd lookup.event.name = coalesce(lookup.event.name, \"none\")\n| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.http_check) }, by:{lookup.event.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network monitor problem types",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "lookup.event.name"
                ],
                "categoryAxisLabel": "lookup.event.name",
                "valueAxis": [
                  "problems"
                ],
                "valueAxisLabel": "problems"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 37
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Retrieve ICMP request metrics grouped by host, monitor, and synthetic location, filter for specific synthetic locations, and calculate average availability and round-trip time for each location, renaming the fields for clarity.\ntimeseries { \n    availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n    performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)\n   },\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location }, \n  filter: request.type == \"icmp\",\n  union: true\n  \n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { location = takeFirst(location_name),\n             availability = avg(arrayAvg(availability_series)), \n             performance = avg(arrayAvg(performance_series))},\n          by:{ dt.entity.synthetic_location }\n| fieldsRename `Location` = location, `Availability` = availability, `Round-trip time` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ICMP monitor availability and performance by locations",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Availability\"]": 152.015625,
                "[\"Location\"]": 239.71875,
                "[\"avg(availability)\"]": 126.26249694824219,
                "[\"dt.entity.synthetic_location\"]": 188.921875
              },
              "enableSparklines": true,
              "hiddenColumns": [
                [
                  "dt.entity.synthetic_location"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1726822934212,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726822945338,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Round-trip time",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "// Analyze the average availability of ICMP synthetic multi-protocol requests grouped by request type, host, monitor, and synthetic location, filtering by host tags, monitor tags, and synthetic locations, and summarize the data by timeframe and interval.\ntimeseries series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"icmp\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { availability = avg(arrayAvg(series)), availability_series = avg(series[]) }, by:{timeframe, interval}\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ICMP monitors availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "singleValue": {
              "label": "ICMP availability",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Availability",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1724414769483,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Shows the performance trends of network targets across various synthetic locations over the past 7 days. Use this chart to identify periods of degraded performance or improvement, understand normal behavior for each location, and compare values with the availability and performance data from other sections",
          "query": "// Analyze the average ICMP round trip time over the last 7 days, grouped by host, monitor, and synthetic location, while filtering for specific tags and synthetic locations. Summarize the data by timeframe, interval, and location name, and calculate the average round trip time for each group.\ntimeseries performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time), \n  by:{dt.entity.host, \n      dt.entity.multiprotocol_monitor, \n      dt.entity.synthetic_location},  \n  interval:1d, \n  from:now() - 7d,\n  union: true\n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| fieldsAdd Performance = arrayAvg(performance_series)\n| sort Performance desc\n| summarize { round_trip_time = avg(performance_series[]) }, by:{timeframe, interval, location_name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Avarage round-trip time trends by locations (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "round_trip_time"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Round-trip time"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "location_name"
              ]
            },
            "legend": {
              "ratio": 25
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "round_trip_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Retrieve and summarize ICMP request metrics for synthetic monitors, filtering by host tags, monitor tags, and synthetic locations, and display the top 10 monitors sorted by availability with renamed fields for clarity.\ntimeseries { \n      availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n      performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time), \n      executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: {request.type, \n       dt.entity.host, \n       dt.entity.multiprotocol_monitor, \n       dt.entity.synthetic_location}, \n  filter: request.type == \"icmp\",\n  union:true\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.multiprotocol_monitor, \"entity.name\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {name = takeAny(monitor_name), \n            availability = avg(arrayAvg(availability_series)), \n            performance = avg(arrayAvg(performance_series)),\n            executions = sum(arraySum(executions_series))}, \n        by:{dt.entity.multiprotocol_monitor}\n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Availability` = availability, `Round-trip time` = performance, `Name` = name, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit ICMP monitors with lowest availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Availability\"]": 116.94,
                "[\"Id\"]": 232.25,
                "[\"Location\"]": 216.71875,
                "[\"Name\"]": 317.53,
                "[\"Round-trip time\"]": 126.98,
                "[\"dt.entity.synthetic_location\"]": 267.921875,
                "[\"multiprotocol_monitor_name\"]": 165.609375
              },
              "hiddenColumns": [
                [
                  "dt.entity.multiprotocol_monitor"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727121347109,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Round-trip time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727121355981,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "35": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "unit": {
                    "baseUnit": "millisecond",
                    "unitCategory": "time"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)\n| fieldsAdd performance=arrayAvg(series)\n\n\n",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "settings": {
                "visibleSections": "ALL"
              }
            },
            "enabled": false
          },
          "query": "// Analyze ICMP request performance and availability metrics grouped by request type, host, monitor, and synthetic location, filtered by synthetic locations and their tags, and present the average performance and availability over time with renamed fields for clarity.\ntimeseries { performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time),\n             availability_series = avg(dt.synthetic.multi_protocol.request.availability) }, \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location }, \n  filter: request.type == \"icmp\",\n  union: true\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { performance = avg(performance_series[]), availability = avg(availability_series[]), takeFirst(interval) }, by:{timeframe}\n| fieldsRename `Availability` = availability, `Round-trip time` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ICMP monitor availability \u0026 round-trip time trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Round-trip time",
                  "Availability"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Round-trip time"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability",
                "max": {
                  "mode": "custom",
                  "value": 105
                }
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    }
                  },
                  "seriesId": [
                    "Availability"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                    }
                  },
                  "seriesId": [
                    "Performance"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Availability"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Performance"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Round-trip time",
                "Availability"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1719577133195,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727084998754,
                "baseUnit": "percent",
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
        "36": {
          "content": "#### ICMP monitors\nThorough examination of ICMP availability and performance, spotlighting the worst locations, targets, and monitors. Additionally, this section provides a 7 day overview of round trip times across various locations helping to identify and address regional network inefficiencies.",
          "type": "markdown"
        },
        "37": {
          "content": "#### TCP monitors\nDetailed insights into TCP availability and performance across locations with the lowest availability. This section helps identify regional disparities in service delivery and pinpoint areas for improvement. This section also includes a 7 day summary of connection times across different locations.",
          "type": "markdown"
        },
        "38": {
          "content": "### Synthetic Network Monitors Health \u0026 Performance\nGet broad visibility and insights on problems for all available synthetic network monitors, which assess the performance and availability of network components. If you don´t see data, configure a [Network Availability Monitor](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/network-availability-monitors/create-a-nam-monitor) or explore this dashboard in our [playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.synthetic.synthetic-nam-monitoring).",
          "type": "markdown"
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter ICMP request executions by host, monitor, and synthetic location tags, then calculate the total executions grouped by timeframe.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"icmp\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]), takeFirst(interval) }, by:{timeframe}\n| fieldsRename `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ICMP monitor executions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Executions"
              ]
            }
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze the average availability of TCP synthetic multi-protocol requests grouped by request type, host, monitor, and synthetic location, while filtering by host tags, monitor tags, and synthetic locations extracted from predefined strings. Summarize the data by timeframe and interval, and rename the availability metric for clarity.\ntimeseries series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\"\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { availability = avg(arrayAvg(series)), availability_series = avg(series[]) }, by:{timeframe, interval}\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TCP monitors availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "singleValue": {
              "label": "TCP availability",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Availability",
              "sparklineSettings": {
                "isVisible": false,
                "record": "availability_series"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1724414808116,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "43": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "unit": {
                    "baseUnit": "millisecond",
                    "unitCategory": "time"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)\n| fieldsAdd performance=arrayAvg(series)\n\n\n",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "settings": {
                "visibleSections": "ALL"
              }
            },
            "enabled": false
          },
          "query": "// Analyze TCP request performance and availability metrics grouped by request type, host, multiprotocol monitor, and synthetic location, filtering for hosts and monitors with tags matching certain conditions and synthetic locations from a predefined list, then summarize the average performance and availability over time.\ntimeseries  { performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time), \n              availability_series = avg(dt.synthetic.multi_protocol.request.availability) },\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\",\n  union: true\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { performance = avg(performance_series[]), availability = avg(availability_series[]),  takeFirst(interval) }, by:{timeframe}\n| fieldsRename `Performance` = performance, `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TCP monitor availability \u0026 connection time trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Performance",
                  "Availability"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Connection time"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability",
                "max": {
                  "mode": "custom",
                  "value": 105
                }
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                    }
                  },
                  "seriesId": [
                    "Performance"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    }
                  },
                  "seriesId": [
                    "Availability"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Performance"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Availability"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Performance",
                "Availability"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1719577133195,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727086099441,
                "baseUnit": "percent",
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
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter TCP requests by host, monitor, and synthetic location tags, calculate the total executions per timeframe, and rename the result field to \"Executions\".\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]), takeFirst(interval) }, by:{timeframe}\n| fieldsRename `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TCP monitor executions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Executions"
              ]
            }
          }
        },
        "45": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)\n| fieldsAdd performance=arrayAvg(series)\n\n\n",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "settings": {
                "visibleSections": "ALL"
              }
            },
            "enabled": false
          },
          "query": "// Analyze DNS performance and availability metrics grouped by request type, host, multiprotocol monitor, and synthetic location, filtering for DNS requests and specific synthetic locations, while incorporating host and monitor tags for filtering, and summarizing the average performance and availability over time intervals.\ntimeseries { performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time), \n            availability_series = avg(dt.synthetic.multi_protocol.request.availability) },\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"dns\",\n  union: true\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { performance = avg(performance_series[]), availability = avg(availability_series[])}, by:{timeframe, interval}\n| fieldsRename `Performance` = performance, `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DNS monitor availability \u0026 resolution time trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Performance",
                  "Availability"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Resolution time"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability",
                "max": {
                  "mode": "custom",
                  "value": 105
                }
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                    }
                  },
                  "seriesId": [
                    "Performance"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    }
                  },
                  "seriesId": [
                    "Availability"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Performance"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Availability"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Performance",
                "Availability"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1719577133195,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727086312984,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze the average availability of DNS synthetic multi-protocol requests grouped by host, monitor, and synthetic location, filtering by tags and synthetic location IDs, and summarize the results by timeframe and interval.\ntimeseries series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"dns\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { availability = avg(arrayAvg(series)), availability_series = avg(series[]) }, by:{timeframe, interval}\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DNS monitors availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "Availability",
                  "value": 80
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 80
                }
              ]
            },
            "singleValue": {
              "label": "DNS availability",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Availability",
              "sparklineSettings": {
                "isVisible": false,
                "record": "availability_series"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1725625636636,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter DNS request executions by host, monitor, and synthetic location tags, and aggregate the total executions over time.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"dns\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]), takeFirst(interval) }, by:{timeframe}\n| fieldsRename `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DNS monitor executions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Executions"
              ]
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
          "query": "// Retrieve and summarize TCP request metrics for synthetic locations, filtering by host tags, monitor tags, and specific synthetic locations, then calculate average availability and connection time, sort by these metrics, and limit the results to the top 10 targets.\ntimeseries { \n  availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n  performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time)\n}, by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address, \n        target_port = request.tcp_port_number}, \n    filter: request.type == \"tcp\",\n    union:true\n    \n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd host_name = entityAttr(dt.entity.host, \"entity.name\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {dt.entity.multiprotocol_monitor = takeFirst(dt.entity.multiprotocol_monitor), \n             availability = avg(arrayAvg(availability_series)), \n             performance = avg(arrayAvg(performance_series)), \n             dt.entity.host = takeAny(dt.entity.host), \n             name = takeAny(host_name)}, \n        by:{target = concat(target_address, \":\", target_port)}\n| sort availability asc, performance desc\n| limit toLong($TopLimit)\n| fieldsRename `Target` = target, `Availability` = availability, `Name` = name, `Connection time` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit TCP request targets with the lowest availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 100
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Name\"]": 190.59375000000006,
                "[\"dt.entity.multiprotocol_monitor\"]": 234.3125,
                "[\"host_name\"]": 254.1875
              },
              "hiddenColumns": [
                [
                  "dt.entity.multiprotocol_monitor"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1728478598408,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Connection time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1745329653951,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Analyze TCP synthetic request metrics grouped by synthetic locations, including availability, connection time, and executions, while filtering by host tags, monitor tags, and specific synthetic locations, and rename the output fields for clarity.\ntimeseries { \n    availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n    performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time), \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)\n  },\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location\n      },\n  filter: request.type == \"tcp\",\n  union:true\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { location_name = takeFirst(location_name),\n              availability = avg(arrayAvg(availability_series)), \n              performance = avg(arrayAvg(performance_series)), \n              executions = sum(arraySum(executions_series))\n            }, \n            by:{ dt.entity.synthetic_location }\n| fieldsRename `Location` = location_name,`Availability` = availability, `Connection time` = performance, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TCP monitors availability and performance by locations",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Availability\"]": 178.015625,
                "[\"Location\"]": 209.71875,
                "[\"avg(availability)\"]": 126.26249694824219,
                "[\"dt.entity.synthetic_location\"]": 188.921875,
                "[\"location_name\"]": 231.546875
              },
              "enableSparklines": true,
              "hiddenColumns": [
                [
                  "dt.entity.synthetic_location"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1728418171539,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1728418179046,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Connection time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Analyze TCP request metrics for synthetic locations, focusing on availability, connection time, and execution counts, while filtering by host tags, monitor tags, and predefined synthetic locations. Summarize results by monitor, sort by availability, and limit to the top 10 monitors.\ntimeseries { \n  availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n  performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time), \n  executions_series = sum(dt.synthetic.multi_protocol.request.executions)}, \n  by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\",\n  union: true\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| filter isNotNull(monitor_name)\n\n| summarize {name = takeAny(monitor_name), \n             availability = avg(arrayAvg(availability_series)), \n             performance = avg(arrayAvg(performance_series)), \n             executions = sum(arraySum(executions_series))}, \n          by:{dt.entity.multiprotocol_monitor}\n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Availability` = availability, `Name` = name, `Executions` = executions, `Connection time` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit TCP monitors with lowest availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Availability\"]": 183.015625,
                "[\"Location\"]": 216.71875,
                "[\"Name\"]": 241.796875,
                "[\"dt.entity.synthetic_location\"]": 267.921875,
                "[\"multiprotocol_monitor_id\"]": 209.40625,
                "[\"multiprotocol_monitor_name\"]": 255.609375
              },
              "hiddenColumns": [
                [
                  "dt.entity.multiprotocol_monitor"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1728418118011,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1728418131495,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Connection time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This chart tracks the TCP connection time for various monitored targets across multiple locations over the past 7 days. Connection time represents the total time taken to establish a TCP connection.",
          "query": "// Retrieve and analyze TCP request data from the last 7 days, grouped by host, monitor, synthetic location, target address, and port. Calculate average availability and connection time, filter by host tags, monitor tags, and synthetic locations matching predefined values, and summarize by timeframe, interval, and concatenated target. Sort by availability and performance, and limit the output to the top 10 records.\ntimeseries { \n  availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n  performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time)\n}, by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address, \n        target_port = multi_protocol.request.tcp_port_number}, \n    filter: request.type == \"tcp\", \n    interval: 1d,\n    from: now() - 7d,\n    union: true\n    \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd host_name = entityAttr(dt.entity.host, \"entity.name\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { availability = avg(arrayAvg(availability_series)), performance = avg(arrayAvg(performance_series)), connection_time = avg(performance_series[]) }, by:{timeframe, interval, target = concat(target_address, \":\", target_port)}\n| sort availability asc, performance desc\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average TCP connection time for top $TopLimit request targets (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "connection_time"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "target"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "connection_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "53": {
          "content": "#### DNS monitors\nDNS availability and performance, highlighting the worst locations, hosts, and monitors. This section also includes a 7 day summary of resolution times across different locations, aiding in the identification and resolution of regional DNS performance issues.",
          "type": "markdown"
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve DNS request metrics grouped by target address, filtered by synthetic locations and tags, and calculate aggregated values such as availability, resolution time, and executions for the top 10 targets sorted by availability.\ntimeseries { \navailability_series = avg(dt.synthetic.multi_protocol.request.availability),\nperformance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time),\nexecutions_series = sum(dt.synthetic.multi_protocol.request.executions)\n}, by: {request.type, dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target = request.target_address, \n        record_type = multi_protocol.request.dns_record_type}, \n      filter: request.type == \"dns\",\n      union:false\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {dt.entity.multiprotocol_monitor = takeFirst(dt.entity.multiprotocol_monitor),\n             record_type = takeAny(record_type), \n             monitor_name = takeFirst(monitor_name),              \n             availability = avg(arrayAvg(availability_series)), \n             performance = avg(arrayAvg(performance_series)),              \n             dt.entity.host = takeAny(dt.entity.host),\n             executions = sum(arraySum((executions_series)))}, \n          by:{target}\n          \n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Target` = target, `Monitor` = monitor_name, `Availability` = availability, `Record type` = record_type, `Resolution time` = performance, `Executions` = executions\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit DNS request targets with the lowset availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 100
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Monitor\"]": 216,
                "[\"Target\"]": 220.21875,
                "[\"host_name\"]": 254.1875
              },
              "hiddenColumns": [
                [
                  "dt.entity.multiprotocol_monitor"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1727165376592,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727165415898,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Resolution time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Analyze DNS request metrics grouped by host, monitor, and synthetic location, filtering for DNS requests and specific synthetic locations, and calculate average availability, average resolution time, and total executions for each location, renaming the output fields for clarity.\ntimeseries { \n    availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n    performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time), \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location },\n  filter: request.type == \"dns\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { availability = avg(arrayAvg(availability_series)), \n              performance = avg(arrayAvg(performance_series)), \n              executions = sum(arraySum(executions_series))\n            }, \n            by:{ location_name }\n| fieldsRename `Location` = location_name,`Availability` = availability, `Resolution time` = performance, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DNS monitor availability and performance by location",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 100
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"Location\"]",
                "[\"Availability\"]",
                "[\"Resolution time\"]",
                "[\"Executions\"]"
              ],
              "columnWidths": {
                "[\"Availability\"]": 152.015625,
                "[\"Location\"]": 148.71875,
                "[\"Resolution time\"]": 248.59375,
                "[\"avg(availability)\"]": 126.26249694824219,
                "[\"dt.entity.synthetic_location\"]": 188.921875
              },
              "enableSparklines": true,
              "hiddenColumns": [
                [
                  "Executions"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1728479139742,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Resolution time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1728479183573,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Analyze DNS request metrics for synthetic monitors grouped by monitor, filtering by host tags, monitor tags, and synthetic locations, and summarize the top 10 monitors by availability and resolution time.\ntimeseries { \n  availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n  performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time),\n  executions_series = sum(dt.synthetic.multi_protocol.request.executions)\n}, by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location}, \n    filter: request.type == \"dns\"\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.multiprotocol_monitor, \"entity.name\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {name = takeAny(monitor_name), \n              availability = avg(arrayAvg(availability_series)), \n              performance = avg(arrayAvg(performance_series)),\n              executions = sum(arraySum(executions_series))}, \n            by:{dt.entity.multiprotocol_monitor}\n| sort availability asc, performance desc\n| limit toLong($TopLimit)\n| fieldsRename `Name` = name, `Availability` = availability, `Resolution time` = performance, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit DNS monitors with the lowest availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 100
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"dt.entity.multiprotocol_monitor\"]",
                "[\"Name\"]",
                "[\"Availability\"]",
                "[\"Resolution time\"]",
                "[\"Executions\"]"
              ],
              "columnWidths": {
                "[\"Availability\"]": 201.015625,
                "[\"Executions\"]": 132,
                "[\"Location\"]": 216.71875,
                "[\"Name\"]": 207.140625,
                "[\"Resolution time\"]": 129,
                "[\"dt.entity.synthetic_location\"]": 267.921875,
                "[\"multiprotocol_monitor_id\"]": 212.1875,
                "[\"multiprotocol_monitor_name\"]": 255.609375
              },
              "hiddenColumns": [
                [
                  "dt.entity.multiprotocol_monitor"
                ],
                [
                  "Executions"
                ]
              ],
              "linewrapEnabled": true
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Resolution time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727165787626,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1728481357521,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count distinct ICMP monitors grouped by request type, filtering by synthetic locations and tags associated with hosts and monitors.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location},\n    filter: request.type == \"icmp\"\n    \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitors = countDistinct(dt.entity.multiprotocol_monitor) }, \n    by:{request.type}\n    \n| fieldsRename `ICMP monitors` = monitors",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total ICMP monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "Availability",
                  "value": 99.99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "ICMP monitors",
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon",
              "recordField": "ICMP monitors",
              "sparklineSettings": {
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1724414769483,
                "baseUnit": "percent",
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
        "64": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count distinct target addresses for synthetic requests grouped by request type, host, monitor, synthetic location, and target address, \n// while filtering by host tags, monitor tags, and synthetic locations \ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address}\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize targets = countDistinct(target_address)\n| fieldsRename `Targets` = targets",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total targets",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "Targets",
              "labelMode": "none",
              "prefixIcon": "TargetFilledIcon",
              "recordField": "Targets",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Group synthetic request executions by request type, host, monitor, and synthetic location, filter by host and monitor tags, and include only matching synthetic locations matching.\n// Count distinct synthetic locations and rename the result.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location}\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| filter isNotNull(dt.entity.synthetic_location)\n| summarize { locations = countDistinct(dt.entity.synthetic_location) }\n| fieldsRename `Locations` = locations",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total locations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "Locations",
              "labelMode": "none",
              "prefixIcon": "LocationMarkerFilledIcon",
              "recordField": "Locations",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "// Retrieve and analyze ICMP request metrics grouped by target address, filtering by synthetic locations and tags, and calculate average availability and round-trip time for the top 10 targets sorted by performance and availability.\ntimeseries { \n  availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n  performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)\n}, by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location,\n        target_address = request.target_address}, \n   filter: request.type == \"icmp\",\n   union: true\n   \n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor),  \n              availability = avg(arrayAvg(availability_series)),\n              performance = avg(arrayAvg(performance_series)),\n              dt.entity.host = takeFirst(host) }, \n            by:{target_address}\n            \n| sort availability asc, performance desc\n| limit toLong($TopLimit)\n| fieldsRename `Target` = target_address, `Availability` = availability, `Round-trip time` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit ICMP request targets with the lowest availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Performance\"]": 132.921875,
                "[\"Target\"]": 360,
                "[\"dt.entity.host\"]": 137
              },
              "hiddenColumns": [
                [
                  "dt.synthetic.monitor_ids"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 1727098328492,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Round-trip time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727098339748,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "68": {
          "content": "##### ICMP request targets\nThis section tracks the availability and  round-trip time of individual hosts or devices through synthetic ICMP monitoring, helping to assess network health, device performance, and potential downtime.",
          "type": "markdown"
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This chart visualizes the Round-Trip Time (RTT) trends for key monitored targets over the past 7 days. The RTT measures the time taken for an ICMP request to travel to the target and back. Lower RTT values reflect faster response times and a healthier network connection.",
          "query": "// Retrieve and summarize ICMP performance and availability metrics for synthetic locations and target addresses over the last 7 days, filtering by host tags, monitor tags, and specific synthetic locations, and return the top 10 results sorted by availability and performance averages.\ntimeseries performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address}, \n   filter: request.type == \"icmp\",\n   interval: 1d,\n   from: now() - 7d,\n   union: true\n   \n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n | lookup [ timeseries availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n              by: {request.type, \n                   dt.entity.host, \n                    dt.entity.multiprotocol_monitor, \n                    dt.entity.synthetic_location, \n                    target_address = request.target_address}, \n               filter: request.type == \"icmp\"\n\n               | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n               | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n               | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n               | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n ], sourceField:target_address, lookupField:target_address, fields:{availability_series}\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n  | summarize { dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor),\n                availability_avg = avg(arrayAvg(availability_series)),\n                performance_avg = avg(arrayAvg(performance_series)),\n                performance = avg(performance_series[])\n             }, \n             by:{target_address, interval, timeframe}\n| filter isNotNull(performance)          \n| sort availability_avg asc, performance_avg desc\n| limit toLong($TopLimit)\n| fieldsRename `Target` = target_address, `Performance` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average round-trip time trends for top $TopLimit request targets (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Performance"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Round-trip time"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Target"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1727098954342,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the distinct TCP monitors grouped by request type, filtering for synthetic locations in Virginia and upstream proxy, while including host tags, monitor tags, and location names.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location},\n    filter: request.type == \"tcp\"\n    \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitors = countDistinct(dt.entity.multiprotocol_monitor) }, \n    by:{request.type}\n    \n| fieldsRename `TCP monitors` = monitors",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total TCP monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "Availability",
                  "value": 99.99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "TCP monitors",
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon",
              "recordField": "TCP monitors",
              "sparklineSettings": {
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1724414769483,
                "baseUnit": "percent",
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
        "71": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count distinct DNS monitors for synthetic locations in Virginia, filtering by host and monitor tags, and group by request type.\ntimeseries executions_series = sum(dt.synthetic.multi_protocol.request.executions), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location},\n    filter: request.type == \"dns\"\n    \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitors = countDistinct(dt.entity.multiprotocol_monitor) }, \n    by:{request.type}\n    \n| fieldsRename `DNS monitors` = monitors",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total DNS monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "Availability",
                  "value": 99.99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "Availability",
                  "value": 99.99
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "DNS monitors",
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon",
              "recordField": "DNS monitors",
              "sparklineSettings": {
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1724414769483,
                "baseUnit": "percent",
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
        "74": {
          "content": "##### TCP request targets\nThis section tracks the availability and response time of individual services through synthetic TCP monitoring, helping to assess network health, device performance, and potential downtime. The goal is to quickly identify targets that require attention due to poor availability or degraded performance.",
          "type": "markdown"
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This chart tracks the DNS resolution time for different request targets (domains/hostnames) across various locations over the past 7 days. DNS resolution time measures how long it takes for a DNS server to convert a domain name into its corresponding IP address, which directly affects how quickly users can access services.",
          "query": "// Retrieve and analyze DNS resolution performance and ICMP availability for synthetic locations, filtering by host tags, monitor tags, and specific synthetic locations. Summarize the data by target address, interval, and timeframe, calculating averages for availability and performance, and sort the results by availability and performance metrics. Limit the output to the top 10 results and rename fields for clarity.\ntimeseries performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time), \n    by: {request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor, \n        dt.entity.synthetic_location, \n        target_address = request.target_address}, \n   filter: request.type == \"dns\",\n   interval: 1d,\n   from: now() - 7d\n   \n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n | lookup [ timeseries availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n              by: {request.type, \n                   dt.entity.host, \n                    dt.entity.multiprotocol_monitor, \n                    dt.entity.synthetic_location, \n                    target_address = request.target_address}, \n               filter: request.type == \"icmp\"\n\n               | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n               | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n               | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n               | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n ], sourceField:target_address, lookupField:target_address, fields:{availability_series}\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n  | summarize {  dt.entity.multiprotocol_monitor = collectDistinct(dt.entity.multiprotocol_monitor), \n                availability_avg = avg(arrayAvg(availability_series)),\n                performance_avg = avg(arrayAvg(performance_series)),\n                performance = avg(performance_series[])\n             }, \n             by:{target_address, interval, timeframe}\n| filter isNotNull(performance)          \n| sort availability_avg asc, performance_avg desc\n| limit toLong($TopLimit)\n| fieldsRename `Target` = target_address, `Performance` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average DNS resolution time trends for top $TopLimit request targets (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Performance"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.multiprotocol_monitor"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1727098954342,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "78": {
          "content": "##### DNS request targets\nThis section displays the **availability** and **resolution time** for various request targets. It serves as a tool for assessing the **reliability** of DNS servers and their efficiency in resolving domain names.\nBy monitoring these metrics, optimal performance and reliability of the DNS infrastructure can be ensured.\n",
          "type": "markdown"
        },
        "81": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze ICMP synthetic monitoring data to calculate the percentage and total number of failed executions per status message, timeframe, and interval, while filtering by host tags, monitor tags, and synthetic locations. Include distinct monitor names and IDs in the results.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message},\n  filter: request.type == \"icmp\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]),\n              multi_protocol.monitor.names = collectDistinct(monitor_name),\n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.multi_protocol.request.executions), filter: request.type == \"icmp\"\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n\n| filter result.status.message != \"SUCCESS\"\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]\n| fieldsAdd executions_number = arraySum(executions)\n\n| fieldsRemove executions, total_execution_series, executions_number",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failure status code distribution",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "fireplace-inverted",
              "fieldMapping": {
                "leftAxisValues": [
                  "executions_perc"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Executions"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "result.status.message"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1728542929389,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "82": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze ICMP request executions grouped by host, monitor, synthetic location, and status message, filtering by host tags, monitor tags, and synthetic locations matching predefined values. Summarize the total executions, distinct monitor names, and monitor IDs, and sort the results by execution count in descending order.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message },\n  filter: request.type == \"icmp\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(arraySum(executions_series)),\n              multi_protocol.monitor.names = collectDistinct(monitor_name),             \n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n| sort executions desc\n| fieldsRename `Status` = result.status.message, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Status code statistics",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Status"
                ],
                "categoryAxisLabel": "Status",
                "valueAxis": [
                  "Executions"
                ],
                "valueAxisLabel": "Executions"
              },
              "categoryOverrides": {
                "SUCCESS": {
                  "added": 1728548468694,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "fireplace"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "SUCCESS"
                }
              ]
            }
          }
        },
        "83": {
          "content": "##### ICMP status codes\nThis section provides an overview of ICMP status codes encountered during synthetic monitoring, focusing on error status codes",
          "type": "markdown"
        },
        "84": {
          "content": "##### DNS status codes overview\nThis section provides an overview of DNS status codes encountered during synthetic monitoring, focusing on error status codes.",
          "type": "markdown"
        },
        "85": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze DNS request executions by host, monitor, synthetic location, and status message, filtering by tags and synthetic locations, and calculate the percentage of failed executions relative to total executions.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message },\n  filter: request.type == \"dns\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]),\n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.multi_protocol.request.executions), filter: request.type == \"dns\"\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n\n| filter result.status.message != \"SUCCESS\"\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]\n| fieldsRemove executions, total_execution_series",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failure status code distribution",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions_perc"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Executions"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "result.status.message"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1728542929389,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "86": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze DNS request executions grouped by host, monitor, synthetic location, and status message, filtering by synthetic location IDs and tags, and summarize the total executions and distinct monitor IDs per timeframe and interval, sorted by execution count.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message },\n  filter: request.type == \"dns\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(arraySum(executions_series)),\n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n| sort executions desc\n| fieldsRename `Status` = result.status.message, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Status code statistics",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Status"
                ],
                "categoryAxisLabel": "Status",
                "valueAxis": [
                  "Executions"
                ],
                "valueAxisLabel": "Executions"
              },
              "categoryOverrides": {
                "SUCCESS": {
                  "added": 1728545393712,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "fireplace"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "SUCCESS"
                }
              ]
            }
          }
        },
        "87": {
          "content": "##### TCP status codes\nThis section provides an overview of TCP status codes encountered during synthetic monitoring, focusing on error status codes",
          "type": "markdown"
        },
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze TCP request executions by synthetic location, host, and monitor, filtering for non-successful statuses, and calculate the percentage of executions relative to the total executions for predefined synthetic locations and tags.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message },\n  filter: request.type == \"tcp\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(executions_series[]),\n              multi_protocol.monitor.names = collectDistinct(monitor_name),\n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.multi_protocol.request.executions), filter: request.type == \"tcp\"\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n\n| filter result.status.message != \"SUCCESS\"\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]\n| fieldsRemove executions, total_execution_series",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failure status code distribution",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "fireplace-inverted",
              "fieldMapping": {
                "leftAxisValues": [
                  "executions_perc"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Executions"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "result.status.message"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1728542929389,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze TCP request executions by host, monitor, synthetic location, and status message, filtering by tags and synthetic locations, and summarize execution counts and distinct monitors, sorted by execution count.\ntimeseries { \n    executions_series = sum(dt.synthetic.multi_protocol.request.executions)},\n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location,\n        result.status.message },\n  filter: request.type == \"tcp\"\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { executions = sum(arraySum(executions_series)),\n              multi_protocol.monitor.names = collectDistinct(monitor_name),\n              dt.synthetic.monitor_ids = collectDistinct(dt.entity.multiprotocol_monitor)\n            },\n          by:{ timeframe, interval, result.status.message }\n| sort executions desc\n| fieldsRename `Status` = result.status.message, `Executions` = executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Status code statistics",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Status"
                ],
                "categoryAxisLabel": "Status",
                "valueAxis": [
                  "Executions"
                ],
                "valueAxisLabel": "Executions"
              },
              "categoryOverrides": {
                "SUCCESS": {
                  "added": 1728545393712,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "fireplace"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "SUCCESS"
                }
              ]
            }
          }
        },
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter ICMP request availability data by host, monitor, and synthetic location, calculate average availability per monitor, and sort results by availability.\ntimeseries availability_series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"icmp\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {availability = avg(arrayAvg(availability_series)), monitor_name = takeFirst(monitor_name), dt.entity.multiprotocol_monitor = takeFirst(dt.entity.multiprotocol_monitor)}, by:{entity = dt.entity.multiprotocol_monitor}\n| sort availability\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ICMP monitors availability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "≥",
                  "id": 0,
                  "value": 99.9
                },
                {
                  "color": "#ECA440",
                  "comparator": "≥",
                  "id": 692380.3999999985,
                  "value": 99
                },
                {
                  "color": "#C4233B",
                  "comparator": "≥",
                  "id": 734172.8999999985,
                  "value": 0
                }
              ],
              "dataMappings": {
                "value": "Availability"
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
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter TCP synthetic multi-protocol requests by host tags, monitor tags, and synthetic locations, calculate the average availability per monitor, and sort monitors by availability in ascending order.\ntimeseries availability_series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {availability = avg(arrayAvg(availability_series)), monitor_name = takeFirst(monitor_name), dt.entity.multiprotocol_monitor = takeFirst(dt.entity.multiprotocol_monitor)}, by:{entity = dt.entity.multiprotocol_monitor}\n| sort availability\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TCP monitors availability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "≥",
                  "id": 0,
                  "value": 99.9
                },
                {
                  "color": "#ECA440",
                  "comparator": "≥",
                  "id": 692380.3999999985,
                  "value": 99
                },
                {
                  "color": "#C4233B",
                  "comparator": "≥",
                  "id": 734172.8999999985,
                  "value": 0
                }
              ],
              "dataMappings": {
                "value": "Availability"
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
        "93": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter DNS request data by synthetic locations and tags, calculate the average availability per multi-protocol monitor, and sort the results by availability.\ntimeseries availability_series = avg(dt.synthetic.multi_protocol.request.availability), \n  by: { request.type, \n        dt.entity.host, \n        dt.entity.multiprotocol_monitor,\n        dt.entity.synthetic_location}, \n  filter: request.type == \"dns\"\n      \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityName(dt.entity.multiprotocol_monitor)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {availability = avg(arrayAvg(availability_series)), monitor_name = takeFirst(monitor_name), dt.entity.multiprotocol_monitor = takeFirst(dt.entity.multiprotocol_monitor)}, by:{entity = dt.entity.multiprotocol_monitor}\n| sort availability\n| fieldsRename `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DNS monitors availability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "≥",
                  "id": 0,
                  "value": 99.9
                },
                {
                  "color": "#ECA440",
                  "comparator": "≥",
                  "id": 692380.3999999985,
                  "value": 99
                },
                {
                  "color": "#C4233B",
                  "comparator": "≥",
                  "id": 734172.8999999985,
                  "value": 0
                }
              ],
              "dataMappings": {
                "value": "Availability"
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
        "96": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve and analyze ICMP request data from the last 7 days, grouped by request type, host, multi-protocol monitor, and synthetic location. Filter the data based on host tags, monitor tags, and synthetic location IDs. Calculate average availability and round-trip time for each monitor, sort by availability, and limit the results to the top 10 monitors. Rename the fields for clarity in the output.\ntimeseries { \n      availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n      performance_series = avg(dt.synthetic.multi_protocol.icmp.round_trip_time)},\n  by: {request.type, \n       dt.entity.host, \n       dt.entity.multiprotocol_monitor, \n       dt.entity.synthetic_location}, \n  filter: request.type == \"icmp\",\n  interval:1d, \n  from:now() - 7d,\n  union: true\n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.multiprotocol_monitor, \"entity.name\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize {name = takeAny(monitor_name), \n            availability = avg(arrayAvg(availability_series)), \n            performance = avg(performance_series[])\n            }, \n        by:{timeframe, interval, dt.entity.multiprotocol_monitor}\n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Availability` = availability, `Round-trip time` = performance, `Name` = name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avarage round-trip time trends (7 days) for top $TopLimit monitors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Round-trip time"
                ],
                "timestamp": "timeframe"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1738152061186,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Round-trip time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "97": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve and summarize the availability and connection time of TCP requests over the last 7 days, grouped by host, monitor, and synthetic location. Filter the data to include only records with non-null monitor names, matching host or monitor tags, and synthetic locations from a predefined list. Sort the results by availability and limit the output to the top 10 entries, renaming fields for clarity.\ntimeseries { \n      availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n      performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time)},\n  by: {request.type, \n       dt.entity.host, \n       dt.entity.multiprotocol_monitor, \n       dt.entity.synthetic_location}, \n  filter: request.type == \"tcp\",\n  interval:1d, \n  from:now() - 7d,\n  union:true\n  \n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.multiprotocol_monitor, \"entity.name\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| filter isNotNull(monitor_name)\n\n| summarize {name = takeAny(monitor_name), \n            availability = avg(arrayAvg(availability_series)), \n            performance = avg(performance_series[])\n            }, \n        by:{timeframe, interval, dt.entity.multiprotocol_monitor}\n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Availability` = availability, `Connection time` = performance, `Name` = name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average TCP connection time trends for top $TopLimit monitors (7 days)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1738152061186,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Connection time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "98": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Shows the performance trends of network targets across various synthetic locations over the past 7 days. Use this chart to identify periods of degraded performance or improvement, understand normal behavior for each location, and compare values with the availability and performance data from other sections",
          "query": "// Analyze the average TCP connection time over the past 7 days, grouped by host, monitor, and synthetic location, with a daily interval. Include tags and IDs for hosts and monitors, filter for records matching wildcard patterns or specific synthetic locations, and calculate the average performance per location. Sort the results by performance in descending order and summarize by timeframe, interval, and location name.\ntimeseries performance_series = avg(dt.synthetic.multi_protocol.tcp.connection_time), \n  by:{dt.entity.host, \n      dt.entity.multiprotocol_monitor, \n      dt.entity.synthetic_location},  \n  interval:1d, \n  from:now() - 7d,\n  union: true\n\n | fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n | fieldsAdd host = entityAttr(dt.entity.host, \"id\")\n | fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n | fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| fieldsAdd Performance = arrayAvg(performance_series)\n| sort Performance desc\n| summarize { performance_time = avg(performance_series[]) }, by:{timeframe, interval, location_name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average TCP connection time trends by locations (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "performance_time"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Round-trip time"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "location_name"
              ]
            },
            "legend": {
              "ratio": 25
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "performance_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "99": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve and summarize DNS request metrics for the last 7 days, grouped by request type, host, multi-protocol monitor, and synthetic location. Include average availability and DNS resolution time, filter by host tags, monitor tags, and synthetic locations. Sort by availability, limit to 10 records, and rename fields for clarity.\ntimeseries { \n      availability_series = avg(dt.synthetic.multi_protocol.request.availability),\n      performance_series = avg(dt.synthetic.multi_protocol.dns.resolution_time)},\n  by: {request.type, \n       dt.entity.host, \n       dt.entity.multiprotocol_monitor, \n       dt.entity.synthetic_location}, \n  filter: request.type == \"dns\",\n  interval:1d, \n  from:now() - 7d\n  \n\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.multiprotocol_monitor, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.multiprotocol_monitor, \"entity.name\")\n| fieldsAdd location_name = entityName(dt.entity.synthetic_location)\n\n| filter in($HostTag, \"*\") or in($HostTag, host_tags)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize {name = takeAny(monitor_name), \n            availability = avg(arrayAvg(availability_series)), \n            performance = avg(performance_series[])\n            }, \n        by:{timeframe, interval, dt.entity.multiprotocol_monitor}\n| sort availability asc\n| limit toLong($TopLimit)\n| fieldsRename `Availability` = availability, `Resolution time` = performance, `Name` = name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average resolution time trends for top $TopLimit monitors (7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Resolution time"
                ],
                "timestamp": "timeframe"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1738152061186,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Resolution time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "*",
          "editable": true,
          "input": "fetch dt.entity.multiprotocol_monitor\n| expand tags\n| fieldsKeep tags\n| append [\n      data record(tags = \"*\")\n  ]  \n| filter isNotNull(tags)\n| sort if(tags == \"*\", \"!\", else: tags) asc",
          "key": "MonitorTag",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "*",
          "editable": true,
          "input": "timeseries series = avg(dt.synthetic.multi_protocol.request.executions), by: {dt.entity.host}\n| fieldsAdd host_tags = entityAttr(dt.entity.host, \"tags\")\n| fieldsKeep host_tags\n| expand host_tags\n| filter isNotNull(host_tags)\n| append [\n      data record(host_tags = \"*\")\n  ]\n| sort if(host_tags == \"*\", \"!\", else: host_tags) asc",
          "key": "HostTag",
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
          "input": "timeseries series = avg(dt.synthetic.multi_protocol.request.executions), by: {entity = dt.entity.synthetic_location}\n| filter isNotNull(entity)\n| summarize location = takeFirst(concat(entity, \" : \", entityName(entity, type:\"dt.entity.synthetic_location\"))), by:{ entity }\n| fieldsRemove entity\n| sort location asc",
          "key": "Location",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "10",
          "editable": true,
          "input": "data \nrecord(limit = 1),\nrecord(limit = 5),\nrecord(limit = 10),\nrecord(limit = 50),\nrecord(limit = 100)",
          "key": "TopLimit",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.synthetic.synthetic-nam-monitoring"
  # private = false
}
