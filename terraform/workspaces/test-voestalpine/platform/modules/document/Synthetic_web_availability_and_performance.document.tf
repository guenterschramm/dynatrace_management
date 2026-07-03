resource "dynatrace_document" "Synthetic_web_availability_and_performance" {
  name      = "Synthetic web availability and performance"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "100": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 78
        },
        "101": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 8
        },
        "102": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "103": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 12
        },
        "104": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 59
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "24": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 22
        },
        "25": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 19
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 27
        },
        "31": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 60
        },
        "32": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 54
        },
        "33": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 60
        },
        "34": {
          "h": 3,
          "w": 8,
          "x": 12,
          "y": 19
        },
        "35": {
          "h": 3,
          "w": 8,
          "x": 12,
          "y": 22
        },
        "36": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "37": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 52
        },
        "39": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 22
        },
        "40": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 19
        },
        "42": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 73
        },
        "44": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "45": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 40
        },
        "56": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 71
        },
        "57": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 73
        },
        "60": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 6
        },
        "61": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 6
        },
        "62": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 12
        },
        "63": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "67": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 40
        },
        "68": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 66
        },
        "69": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 65
        },
        "70": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 66
        },
        "73": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "74": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 45
        },
        "76": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 54
        },
        "80": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 27
        },
        "83": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "87": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 2
        },
        "88": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 8
        },
        "91": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "92": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "94": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "95": {
          "h": 3,
          "w": 8,
          "x": 4,
          "y": 22
        },
        "96": {
          "h": 3,
          "w": 8,
          "x": 4,
          "y": 19
        },
        "97": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 10
        },
        "98": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 4
        },
        "99": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 8
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-24h",
            "to": "now()"
          }
        }
      },
      "tiles": {
        "100": {
          "content": "**Data is missing or you want to learn more? Please follow the links below to complete your data onboarding:**\n\n* [Configure Browser Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/browser-monitors/create-a-single-url-browser-monitor)\n* [Configure HTTP Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/synthetic-on-grail/synthetic-app/create-and-configure-an-http-monitor)\n* [Learn more about types of Synthetic Monitors](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/general-information/types-of-synthetic-monitors) \n* [Discover more capabilities of Synthetic Monitoring](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring) ",
          "type": "markdown"
        },
        "101": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve a summary of enabled HTTP checks filtered by service calls, application calls, tags, and assigned synthetic locations,\n// including their last execution timestamps and associated active problems grouped by event names.\nfetch dt.entity.http_check \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, calls\n| filter isEnabled == true\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), calls[dt.entity.service])\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), calls[dt.entity.application])\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.http_check = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n| fieldsAdd lookup.event.name = coalesce(lookup.event.name, \"none\")\n| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.http_check) }, by:{lookup.event.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor problem types",
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
              "ratio": 42
            }
          }
        },
        "102": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Categorizes active problems affecting browser monitors by type\n// Helps identify recurring problem categories\nfetch dt.entity.synthetic_test\n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, monitors\n| filter isEnabled == true\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), monitors[dt.entity.application])\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.synthetic_test = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n| fieldsAdd lookup.event.name = coalesce(lookup.event.name, \"none\")\n| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.synthetic_test) }, by:{lookup.event.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor problem types",
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
              "ratio": 14
            }
          }
        },
        "103": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the distinct synthetic locations for http executions grouped by monitored entity IDs, http checks, and synthetic locations,\n// filtered by monitor tags, monitored entity IDs, and a predefined list of synthetic locations.\ntimeseries  http_executions = sum(dt.synthetic.http.executions), \n            by:{ dt.synthetic.monitored_entity_ids, \n                   dt.entity.http_check,\n                   dt.entity.synthetic_location }\n           | fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")        \n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { locations = countDistinct(dt.entity.synthetic_location) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor locations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "locations",
              "labelMode": "none",
              "prefixIcon": "LocationMarkerFilledIcon",
              "recordField": "locations",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "104": {
          "content": "##### Browser monitors across synthetic locations",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// Generate a report of synthetic locations with their names, associated monitors, cloud providers, average availability, and average HTTP request duration.\n// Filter the data to include only specific synthetic locations and monitors, then sort the results by availability and request duration in descending order.\ntimeseries {\n  performance_series = avg(dt.synthetic.http.request.duration)\n}, by:{ dt.entity.synthetic_location, dt.entity.http_check_step}\n\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| fieldsAdd cloud_provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n// Find monitor of the step\n| lookup [fetch dt.entity.http_check_step\n | fieldsAdd monitor_id = belongs_to[dt.entity.http_check]\n ], sourceField:dt.entity.http_check_step, lookupField:id, fields: {dt.entity.http_check = monitor_id}\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n\n// Add availability \n| lookup [\n  timeseries {\n    availability_series = avg(dt.synthetic.http.availability)\n  }, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.http_check}\n  | fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n], lookupField:monitor_location_key, sourceField:monitor_location_key, fields:{availability_series, dt.synthetic.monitored_entity_ids}\n\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { location_name = takeFirst(location), \n              dt.synthetic.monitor_ids = collectArray(dt.entity.http_check),\n              cloud_provider = takeFirst(cloud_provider),\n              availability =  avg(arrayAvg(availability_series)),\n              duration =  avg(arrayAvg(performance_series))\n            }, by: {dt.entity.synthetic_location}\n| sort availability asc, duration desc\n| fieldsRename `Location` = location_name, `Availability` = availability, `Average request duration` = duration, `Provider`= cloud_provider ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor availability and performance by locations",
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
                "[\"Availability\"]": 121.015625,
                "[\"Location\"]": 318.66,
                "[\"Provider\"]": 127,
                "[\"dt.entity.synthetic_location\"]": 298.921875
              },
              "hiddenColumns": [
                [
                  "dt.entity.synthetic_location"
                ],
                [
                  "dt.synthetic.monitor_ids"
                ]
              ],
              "selectedColumnForRowThreshold": "Availability",
              "sortBy": {
                "columnId": "[\"Performance\"]",
                "direction": "descending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1726737876336,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726737892123,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average request duration",
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
          "query": "// Group HTTP monitor availability data by monitored entity IDs, HTTP checks, and synthetic locations, \n// filter by specific tags and synthetic locations, and calculate average availability metrics over time intervals.\ntimeseries series = avg(dt.synthetic.http.availability), \n           by:{ dt.synthetic.monitored_entity_ids, \n                dt.entity.http_check,\n                dt.entity.synthetic_location\n              }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { availability = avg(arrayAvg(series)), availability_series = avg(series[]) }, by:{timeframe, interval}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": "#2F6863",
                  "field": "availability",
                  "value": 99.9
                }
              ]
            },
            "singleValue": {
              "label": "availability",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "availability",
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
                "added": 1725971165197,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "availability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Filter synthetic browser monitor data by monitored entity IDs, synthetic test, and synthetic location, \n// calculate average availability metrics, and rename the availability field for clarity.\ntimeseries series = avg(dt.synthetic.browser.availability), \n            by:{ dt.synthetic.monitored_entity_ids, \n                 dt.entity.synthetic_test,\n                 dt.entity.synthetic_location\n                },\n            filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { availability = avg(arrayAvg(series)), availability_series = avg(series[]) }, by:{timeframe, interval}\n| fieldsRename `Availability` = availability\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                  "customColor": "#2F6863",
                  "field": "Availability",
                  "value": 99.9
                }
              ]
            },
            "singleValue": {
              "label": "Availability",
              "labelMode": "none",
              "prefixIcon": "AccountExperienceSignetIcon",
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
                "added": 1725971140125,
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
          "description": "",
          "query": "// Retrieve the average HTTP request duration over the last 7 days, grouped by monitored entity IDs, synthetic locations, and HTTP checks, with a 24-hour interval. \n// Include additional details such as tags, location names, and cloud providers for each synthetic location. \n// Filter the data to include only records matching monitored entity IDs, tags, or synthetic locations from a predefined list. \n// Summarize the data by timeframe and synthetic location, aggregating interval, monitor IDs, location names, cloud providers, and average performance. \n// Rename the location and performance fields for clarity in the final output.\ntimeseries {\n  performance_series = avg(dt.synthetic.http.request.duration)\n}, \nby:{ dt.synthetic.monitored_entity_ids, \n     dt.entity.synthetic_location, \n     dt.entity.http_check }, \ninterval: 1d, \nfrom: now() - 7d\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| fieldsAdd provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { interval = takeFirst(interval), \n              dt.synthetic.monitor_ids = collectArray(dt.entity.http_check),\n              location_name = takeFirst(location),\n              provider = takeAny(provider),\n              performance =  avg(performance_series[]) }, \n            by: {timeframe, dt.entity.synthetic_location}\n| fieldsRename `Location` = location_name, `Performance` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average HTTP request duration by locations (7days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
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
                "label": "Request duration"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                "Location",
                "provider"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
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
          "description": "",
          "query": "// Retrieve the top 10 HTTP checks sorted by availability and average request duration, including their monitor name, availability, and average request duration.\n// Filter the data by synthetic locations, monitored entity IDs, and monitor tags, and calculate averages for performance and availability metrics grouped by HTTP checks.\ntimeseries {\n  performance_series = avg(dt.synthetic.http.request.duration)\n}, by:{ dt.entity.synthetic_location, dt.entity.http_check_step}\n\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| fieldsAdd cloud_provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n// Find monitor of the step\n| lookup [fetch dt.entity.http_check_step\n | fieldsAdd monitor_id = belongs_to[dt.entity.http_check]\n ], sourceField:dt.entity.http_check_step, lookupField:id, fields: {dt.entity.http_check = monitor_id}\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n| fieldsAdd monitor_name = entityName(dt.entity.http_check)\n\n// Add availability \n| lookup [\n  timeseries {\n    availability_series = avg(dt.synthetic.http.availability)\n  }, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.http_check}\n  | fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n], lookupField:monitor_location_key, sourceField:monitor_location_key, fields:{availability_series, dt.synthetic.monitored_entity_ids}\n\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitor = takeFirst(monitor_name), \n              availability =  avg(arrayAvg(availability_series)),\n              duration =  avg(arrayAvg(performance_series))\n            }, by: {dt.entity.http_check}\n| sort availability asc, duration desc\n| limit toLong($TopLimit)\n| fieldsRename `Monitor name` = monitor, `Availability` = availability, `Average request duration` = duration",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit HTTP monitors with lowest availability",
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
                "[\"Availability\"]": 154,
                "[\"Average request duration\"]": 174.98,
                "[\"Location\"]": 216.71875,
                "[\"Monitor name\"]": 395.55,
                "[\"dt.entity.synthetic_location\"]": 267.921875
              },
              "hiddenColumns": [
                [
                  "dt.entity.http_check"
                ],
                [
                  "dt.synthetic.monitor_ids"
                ]
              ],
              "sortBy": {
                "columnId": "[\"Request duration\"]",
                "direction": "descending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1726737996824,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726738005571,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average request duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This section highlights the availability and average event duration of browser monitors from various synthetic locations across the globe. Availability represents the percentage of time that monitors from each location are operational, while event duration indicates the average response time, for browser activities.",
          "query": "// Analyze synthetic monitor data grouped by location, calculating average availability, average performance duration, and total executions, \n// while filtering by monitor IDs, tags, and a predefined list of synthetic locations. Summarize results by location, including location name, \n// cloud provider, monitor IDs, and metrics, then sort by availability (ascending) and performance (descending). \n// Rename fields for clarity in the final output.\ntimeseries {\n  availability_series = avg(dt.synthetic.browser.availability),\n  performance_series = avg(dt.synthetic.browser.step.duration),\n  execution_series = sum(dt.synthetic.browser.executions)\n}, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.synthetic_test}, filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| fieldsAdd provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { location_name = takeFirst(location), \n              provider = takeFirst(provider),\n              dt.synthetic.monitor_ids = collectArray(dt.entity.synthetic_test),\n              availability =  avg(arrayAvg(availability_series)), \n              performance =  avg(arrayAvg(performance_series)), \n              executions = sum(arraySum(execution_series))\n            }, by: {dt.entity.synthetic_location}\n| sort availability asc, performance desc\n| fieldsRename  `Location` = location_name, \n                `Provider` = provider,\n                `Monitor executions` = executions, \n                `Availability` = availability, \n                `Average event duration` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor availability and performance by locations",
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
              "columnOrder": [
                "[\"dt.entity.synthetic_location\"]",
                "[\"Location\"]",
                "[\"Provider\"]",
                "[\"dt.synthetic.monitor_ids\"]",
                "[\"Availability\"]",
                "[\"Average event duration\"]",
                "[\"Monitor executions\"]"
              ],
              "columnWidths": {
                "[\"Availability\"]": 145.015625,
                "[\"Location\"]": 251.99,
                "[\"Provider\"]": 123,
                "[\"dt.entity.synthetic_location\"]": 298.921875
              },
              "hiddenColumns": [
                [
                  "dt.entity.synthetic_location"
                ],
                [
                  "dt.synthetic.monitor_ids"
                ],
                [
                  "Monitor executions"
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
                "identifier": "Monitor executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1726739136928,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726739165383,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average event duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This table offers a breakdown of the availability and event duration of individual browser monitors, helping to quickly identify monitors that may need attention due to extended downtime or slower response times.",
          "query": "// Retrieve the top 10 synthetic tests sorted by availability (ascending) and average event duration (descending), including their name, \n// executions, availability, and performance metrics, while filtering by monitored entity IDs, tags, and synthetic locations from a predefined list.\ntimeseries {\n  availability_series = avg(dt.synthetic.browser.availability),\n  performance_series = avg(dt.synthetic.browser.step.duration),\n  execution_series = sum(dt.synthetic.browser.executions)\n},\nby:{ dt.synthetic.monitored_entity_ids, \n     dt.entity.synthetic_test,\n     dt.entity.synthetic_location}, \nfilter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.synthetic_test, \"entity.name\")\n\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitor_name = takeFirst(monitor_name), \n              availability =  avg(arrayAvg(availability_series)),\n              performance =  avg(arrayAvg(performance_series)), \n              executions = sum(arraySum(execution_series))\n            }, by: {dt.entity.synthetic_test}\n| sort availability asc, performance desc\n| limit toLong($TopLimit)\n| fieldsRename  `Monitor name` = monitor_name, \n                `Monitor executions` = executions, \n                `Availability` = availability, \n                `Average event duration` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit browser monitors with lowest availability",
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
                "[\"Availability\"]": 153.015625,
                "[\"Browser monitor\"]": 255,
                "[\"Location\"]": 216.71875,
                "[\"Monitor name\"]": 431.86,
                "[\"dt.entity.synthetic_location\"]": 298.921875
              },
              "hiddenColumns": [
                [
                  "dt.entity.synthetic_test"
                ],
                [
                  "Monitor executions"
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
                "identifier": "Monitor executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1726739282302,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726739291026,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average event duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "33": {
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
                  "query": "timeseries {\n  performance_series = avg(dt.synthetic.browser.duration)\n}, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.synthetic_test}, interval: 1d, from: now() - 30d\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n\n| filter in(\"All\", \"All\") or in(dt.synthetic.monitored_entity_ids, arrayFirst(splitString(\"All\", \" : \")))\n| filter in(\"All\", \"All\") or in(monitor_tags, \"All\")\n\n| summarize { interval = takeFirst(interval), location_name = takeFirst(location), performance =  avg(performance_series[]) }, by: {timeframe, dt.entity.synthetic_location}\n| fieldsRename `Location` = location_name, `Performance` = performance",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This time-series graph displays performance trends of different locations over the last 7 days, specifically highlighting how event durations evolve over time. This chart allows you to detect any unusual spikes or drops in performance at various locations. Identifying these trends can assist in diagnosing intermittent issues or recent websites dis",
          "query": "// Retrieve the average performance of synthetic browser steps grouped by location over the last 7 days, including details like location name, cloud provider, and associated synthetic test IDs,\n// while filtering for specific monitored entity IDs, tags, and synthetic locations listed in the query.\ntimeseries {\n  performance_series = avg(dt.synthetic.browser.step.duration)\n}, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.synthetic_test}, \n   interval: 1d, \n   from: now() - 7d,\n   filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.customized_name\")\n| fieldsAdd provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { interval = takeFirst(interval), \n              dt.synthetic.monitor_ids = collectArray(dt.entity.synthetic_test),\n              location_name = takeFirst(location), \n              provider = takeAny(provider),\n              performance =  avg(performance_series[]) \n              }, by: {timeframe, dt.entity.synthetic_location}\n| fieldsRename `Location` = location_name, `Performance` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average browser monitor event duration by locations (7days)",
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
                "label": "Event duration"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "Location",
                "provider"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze synthetic browser test performance and availability metrics grouped by monitored entity IDs, synthetic test, and synthetic location, \n// filtered by specific tags and locations, with results summarized by timeframe and renamed for clarity.\ntimeseries { performance_series = avg(dt.synthetic.browser.duration),\n             availability_series = avg(dt.synthetic.browser.availability) },\n            by:{ dt.synthetic.monitored_entity_ids, \n                  dt.entity.synthetic_test,\n                  dt.entity.synthetic_location\n                },\n            union: true,    \n            interval: 15m,\n            filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { interval = takeFirst(interval), \n              performance =  avg(performance_series[]),\n              availability = avg(availability_series[])\n            },by: {timeframe}\n| fieldsRename `Monitor duration` = performance, `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor duration \u0026 availability",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Monitor duration",
                  "Availability"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Duration"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability"
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
                    "Monitor duration"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                  "value": "Monitor duration"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Monitor duration",
                "Availability"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1719576783861,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Monitor duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1726855569579,
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
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Analyze the performance and availability of HTTP monitors grouped by monitored entity IDs, HTTP checks, and synthetic locations,\n// filtered by specific tags and synthetic locations, and present the results with renamed fields for monitor duration and availability.\ntimeseries { performance_series = avg(dt.synthetic.http.duration),\n             availability_series = avg(dt.synthetic.http.availability) \n           },\n           interval: 15m,\n           union: true,\n           by:{ dt.synthetic.monitored_entity_ids,\n                dt.entity.http_check,\n                dt.entity.synthetic_location\n              }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { interval = takeFirst(interval), \n              performance =  avg(performance_series[]), \n              availability = avg(availability_series[]) \n            }, by: {timeframe}\n| fieldsRename `Monitor duration` = performance, `Availability` = availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor duration \u0026 availability trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Monitor duration",
                  "Availability"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Duration"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#DC671E"
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
                    "Monitor duration"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                  "customColor": "#DC671E",
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
                  "value": "Monitor duration"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Monitor duration",
                "Availability"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1719577133195,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Monitor duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1726854733319,
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
          "content": "#### HTTP monitors\nThis section shows HTTP monitors performance and availability from two perspectives: individual monitors and synthetic locations. Tables summarize current availability and average request durations, while trend charts illustrate the last 7 days of performance to help identify persistent issues or temporary anomalies.",
          "type": "markdown"
        },
        "37": {
          "content": "#### Browser monitors\nThis section shows browsers monitor performance and availability from two perspectives: individual monitors and synthetic locations. Tables summarize current availability and average event durations, while trend charts illustrate the last 7 days of performance to help identify persistent issues or temporary anomalies.",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": " The number of monitor runs signifies the health and accuracy of the monitoring system, offering transparency into service stability.",
          "query": "// Aggregate the total HTTP executions every 15 minutes for each combination of monitored entity, HTTP check, and synthetic location,\n// filtering by tags, monitored entity IDs, and synthetic locations from a predefined list, and summarize the results by timeframe.\ntimeseries series = sum(dt.synthetic.http.executions), \n           interval: 15m, \n           by:{ dt.synthetic.monitored_entity_ids,\n                dt.entity.http_check,\n                dt.entity.synthetic_location\n              }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { interval = takeFirst(interval), executions =  sum(series[])}, by: {timeframe}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP executions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "executions"
              ]
            }
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": " The number of monitor runs signifies the health and accuracy of the monitoring system, offering transparency into service stability.",
          "query": "// Aggregate synthetic browser executions grouped by monitored entity IDs, synthetic tests, and synthetic locations, \n// filtered by matching tags, monitored entity IDs, and a predefined list of synthetic locations, with a 15-minute interval and summarized by timeframe.\ntimeseries series = sum(dt.synthetic.browser.executions),\n           interval: 15m, \n           by:{ dt.synthetic.monitored_entity_ids, \n                dt.entity.synthetic_test,\n                dt.entity.synthetic_location\n              },\n           filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { interval = takeFirst(interval), executions =  sum(series[])}, by: {timeframe}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Browser executions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "executions"
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
          "query": "// Retrieve the top 10 applications based on synthetic monitoring data, including their availability, average event duration, and monitor executions, \n// filtered by synthetic locations and tags, and sorted by availability (ascending) and performance (descending)\ntimeseries { \n  availability_series = avg(dt.synthetic.browser.availability),\n  performance_series = avg(dt.synthetic.browser.step.duration),\n  execution_series = sum(dt.synthetic.browser.executions)\n}, \nby:{ dt.synthetic.monitored_entity_ids, \n     dt.entity.synthetic_test, \n     dt.entity.synthetic_location}, \nfilter: in($Service, \"*\")\n| expand entity = dt.synthetic.monitored_entity_ids\n\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n//| fieldsAdd application_name = entityName(entity, type:\"dt.entity.application\")\n| fieldsAdd entity_name = entityAttr(entity,type:\"dt.entity.application\", \"entity.name\")\n| fieldsAdd application_name = coalesce(entityName(entity, type:\"dt.entity.application\"), entity)\n\n| filter isNotNull(entity) and startsWith(entity, \"APPLICATION-\")\n| filter in($Frontend, \"*\") or entity == arrayFirst(splitString($Frontend, \" : \"))\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { application_name = takeLast(application_name),\n              availability =  avg(arrayAvg(availability_series)),\n              performance =  avg(arrayAvg(performance_series)),\n              executions = sum(arraySum(execution_series))\n            }, by: {dt.entity.application = entity}\n| sort availability asc, performance desc            \n| limit toLong($TopLimit)\n| fieldsRename  `Application` = application_name, \n                `Monitor executions` = executions, \n                `Availability` = availability,\n                `Average event duration` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit frontends with lowest availability",
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
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
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
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Application\"]": 255.35000610351562
              },
              "hiddenColumns": [
                [
                  "dt.entity.application"
                ],
                [
                  "Monitor executions"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 1726739425014,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Monitor executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1726739430055,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726739438898,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average event duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "44": {
          "content": "##### HTTP status code insights\nTrack the frequency of HTTP errors and status codes detected during synthetic monitoring, with a focus on non-200 responses.",
          "type": "markdown"
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This table displays the total number of executions for each status code. It helps quantify how frequently certain HTTP responses occur.",
          "query": "// Retrieve the total number of synthetic HTTP executions grouped by timeframe, interval, and HTTP status code, \n// filtering by monitored entity IDs, tags, and synthetic locations, and include the first HTTP status code in each group.\ntimeseries {\n  execution_series = sum(dt.synthetic.http.executions)\n}, by:{dt.synthetic.monitored_entity_ids, \n        dt.entity.http_check,\n        result.http_status.code,\n        dt.entity.synthetic_location\n}\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.http_check, \"entity.name\")\n| filter isNotNull(result.http_status.code)\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { \n               executions = sum(arraySum(execution_series)),\n               status.code = toString(takeFirst(result.http_status.code)) \n            }, by: { timeframe, interval, result.http_status.code}",
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
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "status.code"
                ],
                "categoryAxisLabel": "status.code",
                "valueAxis": "executions",
                "valueAxisLabel": "executions"
              },
              "categoryOverrides": {
                "200": {
                  "added": 1728650431404,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "fireplace",
              "truncationMode": "middle"
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
                  "customColor": "#2F6863",
                  "field": "DT.name",
                  "type": "string",
                  "value": "200"
                }
              ]
            },
            "legend": {
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1728549352665,
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
        "56": {
          "content": "##### Frontends\n\nThis table provides a breakdown of availability, average event duration times for the top $TopLimit frontend applications. It helps track the reliability and speed of individual applications, making it easy to identify which services might require attention due to lower availability or slower performance.",
          "type": "markdown"
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Analyze synthetic monitoring data from the last 7 days for applications, focusing on performance and execution metrics, \n// filtering by synthetic locations and tags, and returning the top 10 applications sorted by performance.\ntimeseries {\n  availability_series = avg(dt.synthetic.browser.availability),\n  performance_series = avg(dt.synthetic.browser.step.duration),\n  execution_series = sum(dt.synthetic.browser.executions)\n}, \ninterval:1d,\nfrom: now() - 7d,\nby:{ dt.synthetic.monitored_entity_ids, \n     dt.entity.synthetic_test, \n     dt.entity.synthetic_location}, \nfilter: in($Service, \"*\")\n| expand entity = dt.synthetic.monitored_entity_ids\n| filter isNotNull(entity) and startsWith(entity, \"APPLICATION-\")\n\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd application_name = coalesce(entityName(entity, type:\"dt.entity.application\"), entity)\n\n| filter in($Frontend, \"*\") or entity == arrayFirst(splitString($Frontend, \" : \"))\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { application_name = takeFirst(application_name),\n              availability =  avg(availability_series[]),\n              performance =  avg(performance_series[]),\n              executions = sum(arraySum(execution_series))\n            }, by: {dt.entity.application = entity, interval, timeframe}\n| sort availability asc, performance desc            \n| limit toLong($TopLimit)\n| fieldsRename  `Application` = application_name, \n                `Monitor executions` = executions, \n                `Availability` = availability,\n                `Performance` = performance\n| fieldsRemove Availability",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average browser monitor event duration by frontends (7days) for top $TopLimit monitors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "blue-steel",
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
                "label": "Event duration"
              },
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                "Application"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Performance",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1727036993791,
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
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the distinct synthetic locations for browser executions grouped by monitored entity IDs, synthetic tests, and synthetic locations,\n// filtered by monitor tags, monitored entity IDs, and a predefined list of synthetic locations.\ntimeseries browser_executions = sum(dt.synthetic.browser.executions), \n            by:{ dt.synthetic.monitored_entity_ids, \n                   dt.entity.synthetic_test,\n                   dt.entity.synthetic_location }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")                   \n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize { locations = countDistinct(dt.entity.synthetic_location) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor locations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "locations",
              "labelMode": "none",
              "prefixIcon": "LocationMarkerFilledIcon",
              "recordField": "locations",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the distinct monitored entities for synthetic tests grouped by monitored entity IDs, synthetic test IDs, and synthetic locations,\n// filtering by synthetic location IDs and tags, and calculating the average synthetic browser executions.\ntimeseries series = avg(dt.synthetic.browser.executions), \n            by:{ dt.synthetic.monitored_entity_ids, \n                 dt.entity.synthetic_test,\n                 dt.entity.synthetic_location\n                },\n            filter: in($Service, \"*\") \n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| expand entity = dt.synthetic.monitored_entity_ids\n| filter in($Frontend, \"*\") or entity == arrayFirst(splitString($Frontend, \" : \"))\n| summarize { frontends = countDistinct(entity) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Frontends",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "frontends",
              "labelMode": "none",
              "prefixIcon": "ApplicationsIcon",
              "recordField": "frontends",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Calculate the number of unique services monitored by synthetic monitors, filtering by synthetic locations and tags, \n// and summing up synthetic monitor executions grouped by monitored entity IDs, HTTP checks, and synthetic locations.\ntimeseries series = sum(dt.synthetic.http.executions),\n           by:{ dt.synthetic.monitored_entity_ids, \n                dt.entity.http_check,\n                dt.entity.synthetic_location\n              }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| expand entity = dt.synthetic.monitored_entity_ids\n| filter startsWith(entity, \"SERVICE-\")\n| filter in($Frontend, \"*\") or entity == arrayFirst(splitString($Frontend, \" : \"))\n| filter in($Service, \"*\") or entity == arrayFirst(splitString($Service, \" : \"))\n| summarize { services = countDistinct(entity) }\n// | summarize { services = countDistinct(dt.synthetic.monitored_entity_ids) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "services",
              "labelMode": "none",
              "prefixIcon": "ServicesIcon",
              "recordField": "services",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "63": {
          "content": "### Synthetic Web Monitors Health \u0026 Performance\nGet broad visibility and insights for all HTTP and browser monitors, which assess the performance and availability of your web applications. If you don´t see data, configure a [Browser Monitor](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/browser-monitors/create-a-single-url-browser-monitor) and/or [HTTP Monitor](https://docs.dynatrace.com/docs/observe/digital-experience/synthetic-monitoring/http-monitors-classic/create-an-http-monitor-classic) or explore this dashboard in our [playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.synthetic.synthetic-web-availability-and-performance).",
          "type": "markdown"
        },
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This chart shows the percentage breakdown of non-200 status codes over time. Each color represents a specific status code, helping you visualize how often errors (like 401 Unauthorized or 403 Forbidden) or redirects (like 302 Found) occur in relation to successful requests.",
          "query": "// Analyze synthetic HTTP execution data grouped by monitored entity IDs, HTTP checks, HTTP status codes, and synthetic locations over 15-minute intervals.\n// Filter for records with HTTP status codes greater than or equal to 400, calculate execution percentages relative to total executions, and sort by the number of executions in descending order. \n// Include monitor tags, monitor IDs, and synthetic locations in the analysis, and aggregate data such as execution counts and percentages.\ntimeseries {\n  execution_series = sum(dt.synthetic.http.executions)\n}, by:{ dt.synthetic.monitored_entity_ids, \n        dt.entity.http_check,\n        result.http_status.code,\n        dt.entity.synthetic_location}\n    ,interval: 15m\n| filter isNotNull(result.http_status.code) \n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_id = entityAttr(dt.entity.http_check, \"id\")\n\n| filter isNotNull(result.http_status.code)\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| fieldsAdd summary = arraySum(execution_series)\n| summarize { dt.synthetic.monitor_ids = collectArray(monitor_id),\n              status.code = toString(takeFirst(result.http_status.code)),\n              executions = sum(execution_series[]),\n              executions_number = sum(summary)\n            }, by: {timeframe, interval, result.http_status.code}\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.http.executions), interval:15m, filter: isNotNull(result.http_status.code)\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]\n| filter result.http_status.code \u003e= 400\n| sort executions_number desc\n| fieldsRemove total_execution_series, executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unsuccessful HTTP status code distribution",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
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
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "All executions"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "status.code"
              ]
            },
            "legend": {
              "ratio": 14
            },
            "unitsOverrides": [
              {
                "added": 1727248473766,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This section analyzes the failures of browser monitors attributed to server interactions. An increase in these failures may indicate underlying issues with the application server or the IT infrastructure. Monitoring these trends is crucial for identifying potential bottlenecks and ensuring optimal performance.",
          "query": "// Analyze synthetic test executions by location, monitor ID, and status code, filtering for specific locations and error codes, calculating execution percentages, and sorting by execution count.\ntimeseries {\n  execution_series = sum(dt.synthetic.browser.step.executions)\n}, by:{dt.synthetic.monitored_entity_ids, \n       dt.entity.synthetic_location,\n       result.status.message,\n       result.status.code,\n       dt.entity.synthetic_test}, \n   interval: 15m,\n   filter: in($Service, \"*\")   \n| fieldsAdd monitor_id = entityAttr(dt.entity.synthetic_test, \"id\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| filter (result.status.code \u003c 1000 and result.status.code \u003e= 400) or in(result.status.code, array(10054, 12014, 12183))\n| summarize { dt.synthetic.monitor_ids = collectArray(monitor_id),\n              execution_number = sum(arraySum(execution_series)),\n              executions = sum(execution_series[]) }, \n            by:{timeframe, interval, result.status.message , result.status.code}\n\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.browser.step.executions), interval:15m, filter: isNotNull(result.status.code)\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]    \n| filter result.status.code != 0\n| fieldsRemove executions, total_execution_series\n| sort execution_number desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failure distribution caused by server interactions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions_perc"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "result.status.message"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1727333222185,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "69": {
          "content": "##### Status codes overview\n",
          "type": "markdown"
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This section examines failures in browser monitors related to page interactions. An increase in these failures may indicate issues with the website’s functionality, suggesting the need to adjust monitoring scripts in response to UI changes or potential problems accessing specific elements on the page. Proactively addressing these issues can enhance",
          "query": "// Analyze synthetic test execution data grouped by monitored entity IDs, synthetic locations, status messages, status codes, and synthetic tests over 15-minute intervals. \n// Filter out records with status codes below 1000 or matching 10054, 12014, or 12183, and include only records from specific synthetic locations. \n// Calculate the percentage of executions relative to the total execution series and sort the results by the highest execution numbers.\ntimeseries {\n  execution_series = sum(dt.synthetic.browser.step.executions)\n}, by:{dt.synthetic.monitored_entity_ids, \n       dt.entity.synthetic_location,\n       result.status.message,\n       result.status.code,\n       dt.entity.synthetic_test}, \n   interval: 15m,\n   filter: in($Service, \"*\")\n| fieldsAdd monitor_id = entityAttr(dt.entity.synthetic_test, \"id\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| filter result.status.code \u003e= 1000 and not in(result.status.code, array(10054, 12014, 12183))\n| summarize { dt.synthetic.monitor_ids = collectArray(monitor_id),\n              execution_number = sum(arraySum(execution_series)),\n              executions = sum(execution_series[]) }, \n            by:{timeframe, interval, result.status.message, result.status.code}\n\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.browser.step.executions), interval:15m, filter: isNotNull(result.status.code)\n  }\n], lookupField:interval, sourceField:interval, fields:{total_execution_series}\n\n| fieldsAdd executions_perc = 100.0*executions[]/total_execution_series[]    \n| fieldsRemove executions, total_execution_series\n| sort execution_number desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failure distribution caused by page interactions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions_perc"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "result.status.message"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1727333414413,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executions_perc",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Retrieve and analyze HTTP check metrics grouped by monitored entity IDs, synthetic locations, and HTTP check steps.\n// Calculate average request duration, total executions, and success rate for each step. \n// Filter data based on monitored entity IDs, tags, and synthetic locations. \n// Aggregate metrics by HTTP check step, including monitor name and step name. \n// Sort results by success rate and request duration, limit to the top 10, and rename fields for clarity.\ntimeseries {\n  performance_series = avg(dt.synthetic.http.request.duration),\n  execution_series = sum(dt.synthetic.http.request.executions)\n},\nby:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.http_check_step}\n| lookup [fetch dt.entity.http_check_step\n | fieldsAdd monitor_id = belongs_to[dt.entity.http_check]\n ], sourceField:dt.entity.http_check_step, lookupField:id, fields: {monitor_id}\n\n| fieldsAdd monitor_name = entityAttr(monitor_id, type:\"dt.entity.http_check\", \"entity.name\")\n| fieldsAdd monitor_tags = entityAttr(monitor_id, type:\"dt.entity.http_check\", \"tags\")\n| fieldsAdd monitor_step_name = entityName(dt.entity.http_check_step)\n\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n  | summarize { monitor_step_name = takeAny(monitor_step_name),\n                dt.entity.http_check = takeAny(monitor_id),\n                monitor_name = takeAny(monitor_name),\n                duration =  avg(arrayAvg(performance_series)), \n                executions = sum(arraySum(execution_series))\n              }, by: {dt.entity.http_check_step}\n| lookup [\n  timeseries {\n    total_execution_series = sum(dt.synthetic.http.request.executions), interval:15m, filter: isNotNull(result.http_status.code)\n  }, by:{dt.entity.http_check_step}\n], lookupField:dt.entity.http_check_step, sourceField:dt.entity.http_check_step, fields:{total_execution_series}\n\n| lookup [\n  timeseries {\n    success_execution_series = sum(dt.synthetic.http.request.executions), interval:15m, filter: isNotNull(result.http_status.code) and result.http_status.code == 200\n  }, by:{dt.entity.http_check_step}\n], lookupField:dt.entity.http_check_step, sourceField:dt.entity.http_check_step, fields:{success_execution_series}\n\n| fieldsAdd executions_perc = 100.0*success_execution_series[]/total_execution_series[]\n| fieldsAdd success_rate = arrayAvg(executions_perc)  \n| fieldsAdd response_time = duration\n| sort success_rate asc, duration desc         \n| limit toLong($TopLimit)\n| fieldsRename `Executions` = executions, `Success rate` = success_rate, `Request duration` = response_time, `Monitor name` = monitor_name, `HTTP name` = monitor_step_name\n| fieldsRemove executions_perc, success_execution_series, total_execution_series, duration, Executions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit HTTP requests availability and performance",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Success rate",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "Success rate",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Success rate",
                  "value": 99.9
                }
              ]
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"dt.entity.http_check_step\"]",
                "[\"HTTP name\"]",
                "[\"dt.entity.http_check\"]",
                "[\"Monitor name\"]",
                "[\"Success rate\"]",
                "[\"Request duration\"]"
              ],
              "columnWidths": {
                "[\"Availability\"]": 121.015625,
                "[\"HTTP name\"]": 571,
                "[\"HTTP request\"]": 242.10000610351562,
                "[\"Location\"]": 165.71875,
                "[\"Monitor name\"]": 684,
                "[\"Request name\"]": 190.10000610351562,
                "[\"Response time\"]": 158.9499969482422,
                "[\"dt.entity.synthetic_location\"]": 298.921875
              },
              "hiddenColumns": [
                [
                  "dt.entity.http_check_step"
                ],
                [
                  "dt.entity.http_check"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "lineWrapIds": [
                [
                  "Availability"
                ]
              ],
              "linewrapEnabled": true,
              "monospacedFontEnabled": true,
              "selectedColumnForRowThreshold": "Availability",
              "sortBy": {
                "columnId": "[\"Availability\"]",
                "direction": "ascending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1726737876336,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Error rate",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1726737892123,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Request duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "74": {
          "content": "##### HTTP requests\n\nThis table shows error rates and average request times for the top $TopLimit HTTP requests. It helps monitor the reliability and performance of individual applications, making it easier to spot requests with low availability or slow response times.",
          "type": "markdown"
        },
        "76": {
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
                  "query": "timeseries {\n  performance_series = avg(dt.synthetic.browser.duration)\n}, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.synthetic_test}, interval: 1d, from: now() - 30d\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n\n| filter in(\"All\", \"All\") or in(dt.synthetic.monitored_entity_ids, arrayFirst(splitString(\"All\", \" : \")))\n| filter in(\"All\", \"All\") or in(monitor_tags, \"All\")\n\n| summarize { interval = takeFirst(interval), location_name = takeFirst(location), performance =  avg(performance_series[]) }, by: {timeframe, dt.entity.synthetic_location}\n| fieldsRename `Location` = location_name, `Performance` = performance",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This performance trends graph focuses on browser monitors over the past 7 days, showing how event durations for specific monitors change over time.",
          "query": "// Retrieve and analyze synthetic monitor data from the last 14 days, grouped by monitored entity IDs, synthetic test, and location,\n// filtered by specific tags, names, and locations. Calculate average performance duration and availability, sort by availability and performance,\n// and display the top 10 monitors with renamed fields for clarity.\ntimeseries {\n  performance_series = avg(dt.synthetic.browser.step.duration),\n  availability_series = avg(dt.synthetic.browser.availability)\n}, \nby:{ dt.synthetic.monitored_entity_ids, \n     dt.entity.synthetic_test,\n     dt.entity.synthetic_location},\n     interval:24h, from:now() - 14d ,filter: in($Service, \"*\")\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| fieldsAdd monitor_name = entityAttr(dt.entity.synthetic_test, \"entity.name\")\n\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitor_name = takeFirst(monitor_name),\n              performance =  avg(performance_series[]), \n              availability_number =  avg(arrayAvg(availability_series)),\n              performance_number =  avg(arrayAvg(performance_series))\n            }, by: {timeframe, interval, dt.entity.synthetic_test}\n| sort availability_number asc, performance_number desc\n| limit toLong($TopLimit)\n| fieldsRename  `Monitor name` = monitor_name, \n                `Monitor duration` = performance",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average browser monitor event duration trends (7 days) for top $TopLimit monitors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Monitor duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Event duration"
              },
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "Monitor name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Monitor duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "80": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// Retrieve the average HTTP request duration and availability for synthetic monitors over the last 7 days, grouped by synthetic location and HTTP check step,\n// filtered by specific synthetic locations and tags, and sorted by availability and duration in descending order, limiting the results to the top 10 monitors.\ntimeseries {\n  performance_series = avg(dt.synthetic.http.request.duration)\n}, by:{ dt.entity.synthetic_location, dt.entity.http_check_step}, interval:1d, from:now() - 7d\n\n| fieldsAdd location = entityAttr(dt.entity.synthetic_location, \"entity.name\")\n| fieldsAdd cloud_provider = entityAttr(dt.entity.synthetic_location, \"cloudProvider\")\n\n// Find monitor of the step\n| lookup [fetch dt.entity.http_check_step\n | fieldsAdd monitor_id = belongs_to[dt.entity.http_check]\n ], sourceField:dt.entity.http_check_step, lookupField:id, fields: {dt.entity.http_check = monitor_id}\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n| fieldsAdd monitor_name = entityName(dt.entity.http_check)\n\n// Add availability \n| lookup [\n  timeseries {\n    availability_series = avg(dt.synthetic.http.availability)\n  }, by:{dt.synthetic.monitored_entity_ids, dt.entity.synthetic_location, dt.entity.http_check}\n  | fieldsAdd monitor_location_key = concat(dt.entity.synthetic_location,\":\", dt.entity.http_check)\n], lookupField:monitor_location_key, sourceField:monitor_location_key, fields:{availability_series, dt.synthetic.monitored_entity_ids}\n\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| summarize { monitor = takeFirst(monitor_name), \n              availability_number =  avg(arrayAvg(availability_series)),\n              duration_number =  avg(arrayAvg(performance_series)),\n              duration =  avg(performance_series[])\n            }, by: {timeframe, interval, dt.entity.http_check}\n| sort availability_number asc, duration_number desc\n| limit toLong($TopLimit)\n| fieldsRename `Monitor name` = monitor, `Average request duration` = duration",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average HTTP request duration trends (7 days) for top $TopLimit monitors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "Average request duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Request duration"
              },
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                "Monitor name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1712834833219,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average request duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "83": {
          "content": "##### HTTP monitors across synthetic locations",
          "type": "markdown"
        },
        "87": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Comprehensive overview of all browser monitors\n// Includes availability, performance, execution counts and status\nfetch dt.entity.synthetic_test, from: toTimestamp($dt_timeframe_to) - 24h\n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, monitors\n| filter isEnabled == true\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), monitors[dt.entity.application])\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n\n| fieldsAdd execution = lookup ([\n    timeseries series = sum(dt.synthetic.browser.executions),\n               interval: 15m, \n               from: toTimestamp($dt_timeframe_from) - 5h,\n               by:{ dt.synthetic.monitored_entity_ids, \n                    dt.entity.synthetic_test,\n                    dt.entity.synthetic_location,\n                    result.state,\n                    result.status.code,\n                    result.status.message\n                  },\n               filter: in($Service, \"*\")\n    | fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n    | filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n    | filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n    | filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n    | summarize { state = takeLast(result.state), message = takeLast(result.status.message), code = takeLast(result.status.code)}, by: {dt.entity.synthetic_test}\n], sourceField:id, lookupField:dt.entity.synthetic_test)\n\n| fieldsAdd problem = lookup ([\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids)\n\n| fields dt.entity.synthetic_test = id, \n         monitor_name = entity.name, \n         entity_ids = problem[affected_entity_ids], \n         event.id=problem[event.id], \n         event.kind=problem[event.kind],\n         lastExecutionTimestamp, \n         problem_name = problem[event.name], \n         execution\n| fieldsAdd status = if(isNotNull(problem_name), \"problem\", \n                          else: if(isNull(execution[code]) and isNull(execution[state]), \"no_data\", else: \"ok\"))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Browser monitor overview",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#C4233B",
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
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
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
                  "color": "#C4233B",
                  "comparator": "=",
                  "id": 0,
                  "value": "problem"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "=",
                  "id": 2130518.7000000477,
                  "value": "ok"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "comparator": "=",
                  "id": 699987.8000000119,
                  "value": "no_data"
                }
              ],
              "dataMappings": {
                "value": "status"
              },
              "displayedFields": [
                "monitor_name",
                "lookup.event.name"
              ],
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve HTTP checks enabled within the last 24 hours, filtering by synthetic locations, tags, and calls to services or applications.\n// Include execution data, active problems, and determine the status of each check as \"problem,\" \"no_data,\" or \"ok.\"\nfetch dt.entity.http_check, from: toTimestamp($dt_timeframe_to) - 24h\n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, calls\n| filter isEnabled == true\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), calls[dt.entity.service])\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), calls[dt.entity.application])\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n\n// get the last execution \n| fieldsAdd execution = lookup ([\n    timeseries series = sum(dt.synthetic.http.executions), \n               interval: 15m,\n               from: toTimestamp($dt_timeframe_from) - 90m,\n               by:{ dt.synthetic.monitored_entity_ids,\n                    dt.entity.http_check,\n                    dt.entity.synthetic_location,\n                    result.state,\n                    result.status.message,\n                    result.http_status.code,\n                    calls\n                  }\n    | fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n    | filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n    | filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n    | filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n    | filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n    | summarize { state = takeLast(result.state), message = takeLast(result.status.message), code = takeLast(result.http_status.code)}, by: {dt.entity.http_check}\n], sourceField:id, lookupField:dt.entity.http_check)\n\n// get the active problems \n| fieldsAdd problem = lookup ([\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids)\n\n| fields dt.entity.http_check = id, \n         monitor_name = entity.name, \n         entity_ids = problem[affected_entity_ids], \n         event.id=problem[event.id], \n         event.kind=problem[event.kind],\n         lastExecutionTimestamp, \n         problem_name = problem[event.name], \n         execution\n| fieldsAdd status = if(isNotNull(problem_name), \"problem\", \n                          else: if(isNull(execution[code]) and isNull(execution[state]), \"no_data\", else: \"ok\"))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitor overview",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#C4233B",
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
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
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
                  "color": "#C4233B",
                  "comparator": "=",
                  "id": 0,
                  "value": "problem"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "=",
                  "id": 2376199,
                  "value": "ok"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "comparator": "=",
                  "id": 8166687.700000048,
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
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "91": {
          "content": "##### Availability and performance",
          "type": "markdown"
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve the 10 most recent active Davis problems involving synthetic tests or HTTP checks, excluding duplicates, \n// and include details such as problem ID, time, name, monitor name, and synthetic locations.\n// Filter by specific synthetic locations and monitor tags, and ensure the affected entities are synthetic tests or HTTP checks.\nfetch dt.davis.problems\n| filter in(array(\"dt.entity.http_check\", \"dt.entity.synthetic_test\"), affected_entity_types)\n| filter event.status == \"ACTIVE\"\n\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), affected_entity_ids)\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), affected_entity_ids)\n| filter in(arrayFlatten(dt.entity.synthetic_location), iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n\n| filter not(dt.davis.is_duplicate)\n| expand affected_entity_id = affected_entity_ids\n| fieldsAdd monitor_name = coalesce(entityName(affected_entity_id, type:\"dt.entity.synthetic_test\"), entityName(affected_entity_id, type:\"dt.entity.http_check\"))\n| fieldsAdd monitor_tags = coalesce(entityAttr(affected_entity_id, type:\"dt.entity.synthetic_test\", \"tags\"), entityAttr(affected_entity_id, type:\"dt.entity.http_check\", \"tags\"))\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n\n| filter contains(affected_entity_id, \"SYNTHETIC_TEST\") or contains(affected_entity_id, \"HTTP_CHECK\")\n| summarize { time = takeLast(event.start), \n              title = takeLast(event.name), \n              location = arrayFlatten(collectDistinct(dt.entity.synthetic_location)),\n              status=takeLast(event.status), \n              monitor_name =  collectDistinct(monitor_name),\n              dt.synthetic.monitor_ids = collectDistinct(affected_entity_id),\n              event.id = takeLast(event.id),\n              event.kind = takeLast(event.kind)},               \n            by: {id = display_id}\n| sort time desc\n| fieldsRename `Problem id` = id, `Time` = time, `Name` = title, `Monitor name` = monitor_name\n| limit toLong($TopLimit)",
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
                  "columnId": "[\"Name\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Counts browser monitors currently experiencing active problems\n// Joins monitor data with active problems using lookup\nfetch dt.entity.synthetic_test\n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, monitors\n| filter isEnabled == true\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), monitors[dt.entity.application])\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.synthetic_test = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n//| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.synthetic_test) }, by:{lookup.event.name}\n| summarize countDistinct(event.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Browser monitors with problems",
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
        "95": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve the average availability of HTTP monitors grouped by their entity, including their name and tags, \n// while filtering by synthetic locations and monitor tags.\ntimeseries series = avg(dt.synthetic.http.availability), \n           by:{ dt.synthetic.monitored_entity_ids, \n                dt.entity.http_check,\n                dt.entity.synthetic_location\n              }\n| fieldsAdd monitor_tags = entityAttr(dt.entity.http_check, \"tags\")\n| fieldsAdd monitor_name = entityName(dt.entity.http_check)\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| fieldsAdd availability = arrayAvg(series)\n| summarize { availability = avg(arrayAvg(series)), dt.entity.http_check = takeFirst(dt.entity.http_check), monitor_name = takeFirst(monitor_name) }, by: {entity = dt.entity.http_check}\n//| sort availability asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-24h",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "HTTP monitors availability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "availability",
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
                  "id": 5198570.400000095,
                  "value": 99
                },
                {
                  "color": "#C4233B",
                  "comparator": "≥",
                  "id": 5217483.800000191,
                  "value": 0
                }
              ],
              "dataMappings": {
                "value": "availability"
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
          "query": "// Analyze the average availability of synthetic browser monitors grouped by monitored entity IDs, synthetic test, and synthetic location,\n// while filtering by wildcard matches, monitor tags, and a predefined list of synthetic locations. \n// Include the monitor name and tags, and summarize the results by synthetic test entity with aggregated availability and monitor name.\ntimeseries series = avg(dt.synthetic.browser.availability), \n            by:{ dt.synthetic.monitored_entity_ids, \n                 dt.entity.synthetic_test,\n                 dt.entity.synthetic_location\n                },\n            filter: in($Service, \"*\")\n| fieldsAdd monitor_name = entityName(dt.entity.synthetic_test)\n| fieldsAdd monitor_tags = entityAttr(dt.entity.synthetic_test, \"tags\")\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), dt.synthetic.monitored_entity_ids)\n| filter in($MonitorTag, \"*\") or in($MonitorTag, monitor_tags)\n| filter in(dt.entity.synthetic_location, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| fieldsAdd availability = arrayAvg(series)\n| summarize { availability = avg(arrayAvg(series)), monitor_name = takeFirst(monitor_name), dt.entity.synthetic_test = takeFirst(dt.entity.synthetic_test) }, by: {entity = dt.entity.synthetic_test}\n//| sort availability asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-24h",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Browser monitors availability ",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "availability",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "availability",
                  "value": 99
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "availability",
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
                  "id": 5198570.400000095,
                  "value": 99
                },
                {
                  "color": "#C4233B",
                  "comparator": "≥",
                  "id": 5217483.800000191,
                  "value": 0
                }
              ],
              "dataMappings": {
                "value": "availability"
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
        "97": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the number of enabled http checks that match the tags or monitors associated with applications\n// and are assigned to specific synthetic locations\nfetch dt.entity.http_check \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, calls, monitors\n| filter isEnabled == true\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), calls[dt.entity.service])\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), calls[dt.entity.application])\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize monitor_number = count()\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total HTTP monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "monitor_number",
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon",
              "recordField": "monitor_number",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "98": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Count the number of enabled synthetic tests that match the tags or monitors associated with applications\n// and are assigned to specific synthetic locations\nfetch dt.entity.synthetic_test\n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, monitors\n| filter isEnabled == true\n\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), monitors[dt.entity.application])\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| summarize monitor_number = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total browser monitors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "label": "monitor_number",
              "labelMode": "none",
              "prefixIcon": "SyntheticMonitoringSignetIcon",
              "recordField": "monitor_number",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "99": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve all enabled HTTP checks, filter them based on their service calls, application calls, tags, and assigned synthetic locations,\n// and count the number of unique active problems associated with each HTTP check, sorted by their last execution timestamp.\nfetch dt.entity.http_check \n| fields id, entity.name, lastExecutionTimestamp, isEnabled, tags, assignedLocations, calls\n| filter isEnabled == true\n| filter in($Service, \"*\") or in(arrayFirst(splitString($Service, \" : \")), calls[dt.entity.service])\n| filter in($Frontend, \"*\") or in(arrayFirst(splitString($Frontend, \" : \")), calls[dt.entity.application])\n| filter in($MonitorTag, \"*\") or in($MonitorTag, tags)\n| filter in(assignedLocations, iCollectArray(arrayFirst(splitString(array($Location)[], \" : \"))))\n| sort lastExecutionTimestamp desc\n| limit 10000\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n    | limit 10000\n], sourceField:id, lookupField:affected_entity_ids\n| fields dt.entity.http_check = id, monitor_name=entity.name, lookup.affected_entity_ids, event.id=lookup.event.id, lastExecutionTimestamp, lookup.event.name\n//| summarize { problems = countDistinct(event.id), dt.synthetic.monitor_ids = collectDistinct(dt.entity.http_check) }, by:{lookup.event.name}\n| summarize countDistinct(event.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP monitors with problems",
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
        }
      },
      "variables": [
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record(tags = \"*\")\n| append [\n  fetch dt.entity.synthetic_test \n  | fields tags \n  | fieldsKeep tags\n  | append [ fetch dt.entity.http_check\n      | fields tags ]\n  | expand tags\n  | filter isNotNull(tags)\n  | sort if(tags == \"*\", \"!\", else: tags) asc\n  | dedup tags\n]\n",
          "key": "MonitorTag",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record(application = \"*\")\n| append [\n  timeseries  { browser_availability = sum(dt.synthetic.browser.executions)\n  }, interval:1h, by:{dt.synthetic.monitored_entity_ids}\n  | expand entity = dt.synthetic.monitored_entity_ids\n  | filter isNotNull(entity)\n  | summarize application = takeFirst(concat(entity, \" : \", entityName(entity, type:\"dt.entity.application\"))), by:{ entity }\n  | fieldsRemove entity\n  | sort application desc\n]",
          "key": "Frontend",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record(service = \"*\")\n| append [\n  timeseries  { executions = sum(dt.synthetic.http.executions)\n  }, interval:1h, by:{dt.synthetic.monitored_entity_ids}\n  | expand entity = dt.synthetic.monitored_entity_ids\n  | filter isNotNull(entity) and startsWith(entity, \"SERVICE-\")\n  | summarize service = takeFirst(concat(entity, \" : \", entityName(entity, type:\"dt.entity.service\"))), by:{ entity }\n  | fieldsRemove entity\n  | sort service asc\n]",
          "key": "Service",
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
          "input": "timeseries { browser_executions = sum(dt.synthetic.browser.executions),\n                http_executions = sum(dt.synthetic.http.executions)\n  }, by:{ entity = dt.entity.synthetic_location }, union:true\n  | filter isNotNull(entity)\n  | summarize location = takeFirst(concat(entity, \" : \", entityName(entity, type:\"dt.entity.synthetic_location\"))), by:{ entity }\n  | fieldsRemove entity\n  | sort location asc",
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
  custom_id = "dynatrace.synthetic.synthetic-web-availability-and-performance"
  # private = false
}
