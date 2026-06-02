resource "dynatrace_document" "Messaging_Destination_Dashboard" {
  name      = "Messaging Destination Dashboard"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 4,
          "w": 18,
          "x": 6,
          "y": 2
        },
        "1": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 2
        },
        "11": {
          "h": 4,
          "w": 18,
          "x": 6,
          "y": 6
        },
        "12": {
          "h": 4,
          "w": 18,
          "x": 6,
          "y": 10
        },
        "13": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "15": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 14
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
          "x": 0,
          "y": 10
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  sum(dt.service.messaging.publish.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize `Distinct destinations` = countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `Distinct destinations` desc\n| limit 10\n| lookup [smartscapeNodes \"SERVICE\"\n  | fields name,id], sourceField:dt.smartscape.service,lookupField:id\n| fields `Service` = lookup.name, dt.smartscape.service, `Distinct destinations`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 maximum distinct destinations per service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"Service\"]",
                "[\"dt.smartscape.service\"]",
                "[\"Distinct destinations\"]"
              ],
              "columnWidths": {
                "[\"dt.entity.service\"]": 226,
                "[\"metric.key\"]": 225
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Distinct Destinations\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Max distinct destination count for one Service (publish)",
          "query": "timeseries { \n  sum(dt.service.messaging.publish.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `countDistinct(messaging.destination.name)` desc\n| limit 1",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Max distinct destinations for one service",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Publish"
            },
            "thresholds": [
              {
                "field": "countDistinct(messaging.destination.name)",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 101
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 500
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  sum(dt.service.messaging.receive.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize `Distinct destinations` = countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `Distinct destinations` desc\n| limit 10\n| lookup [smartscapeNodes \"SERVICE\"\n  | fields name,id], sourceField:dt.smartscape.service,lookupField:id\n| fields `Service` = lookup.name, dt.smartscape.service, `Distinct destinations`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 maximum distinct destinations per service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"Service\"]",
                "[\"dt.smartscape.service\"]",
                "[\"Distinct destinations\"]"
              ],
              "columnWidths": {
                "[\"metric.key\"]": 263
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"destination_cardinality\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  sum(dt.service.messaging.process.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize `Distinct destinations` = countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `Distinct destinations` desc\n| limit 10\n| lookup [smartscapeNodes \"SERVICE\"\n  | fields name,id], sourceField:dt.smartscape.service,lookupField:id\n| fields `Service` = lookup.name, dt.smartscape.service, `Distinct destinations`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 maximum distinct destinations per service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"Service\"]",
                "[\"dt.smartscape.service\"]",
                "[\"Distinct destinations\"]"
              ],
              "columnWidths": {
                "[\"Distinct Destinations\"]": 172.58,
                "[\"Service Name\"]": 300,
                "[\"metric.key\"]": 263,
                "[\"service.name\"]": 266
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Service Name\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "13": {
          "content": "### Message queue destination cardinality insights\n\nThis Dashboard helps to identify problems with temporary queue detection which would cause temporary queue names being used as metric dimensions which can have a negative impact on query execution and storage cost. For more details, please visit the documentation [here](https://dt-url.net/y623acy).",
          "type": "markdown"
        },
        "15": {
          "content": "### About this dashboard\n\nThis dashboard helps to identify problems with temporary queue detection which would cause the use of a high cardinality destination dimension on the following metrics:\n* \"dt.service.messaging.publish.count\"\n* \"dt.service.messaging.receive.count\"\n* \"dt.service.messaging.process.count\"\n* \"dt.service.messaging.process.failure_count\"\n\nSuch a high cardinality dimension can cause longer query times of the metric data and also increased storage cost.\n\nFor more details and how to fix the issue please visit the documentation [here](https://dt-url.net/iu03aff).",
          "type": "markdown"
        },
        "16": {
          "content": " ",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Max distinct destination count for one Service (publish)",
          "query": "timeseries { \n  sum(dt.service.messaging.receive.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `countDistinct(messaging.destination.name)` desc\n| limit 1",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Max distinct destinations for one service",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Receive"
            },
            "thresholds": [
              {
                "field": "countDistinct(messaging.destination.name)",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 101
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 500
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Max distinct destination count for one Service (publish)",
          "query": "timeseries { \n  sum(dt.service.messaging.process.count), by: { dt.smartscape.service, messaging.destination.name }\n}\n| summarize countDistinct(messaging.destination.name), by: { dt.smartscape.service }\n| sort `countDistinct(messaging.destination.name)` desc\n| limit 1",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Max distinct destinations for one service",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Process"
            },
            "thresholds": [
              {
                "field": "countDistinct(messaging.destination.name)",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 101
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 500
                  }
                ],
                "title": ""
              }
            ]
          }
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.services.messaging-destination"
  # private = false
}
