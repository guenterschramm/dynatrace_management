resource "dynatrace_document" "Endpoint_Cardinality_Dashboard" {
  name      = "Endpoint Cardinality Dashboard"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 5,
          "w": 5,
          "x": 0,
          "y": 2
        },
        "2": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "3": {
          "h": 5,
          "w": 19,
          "x": 5,
          "y": 2
        },
        "6": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "7": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries { \n  sum(dt.service.request.count), by: { dt.smartscape.service, endpoint.name }\n}\n| summarize countDistinct(endpoint.name), by: { dt.smartscape.service }\n| sort `countDistinct(endpoint.name)` desc\n| limit 1",
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
          "title": "Maximum distinct endpoint names for one service",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "thresholds": []
          }
        },
        "2": {
          "content": "### About this dashboard\n\nThis Dashboard helps to understand if services with a great number of different endpoints exist and where to find them. This high number of distinct endpoints can happen if a volatile attribute is used for [endpoint detection](https://dt-url.net/xj03ajl) or in a request naming rule and will affect the following metrics:\n* \"dt.service.request.count\"\n* \"dt.service.request.failure_count\"\n* \"dt.service.request.response_time\"\n\nSuch a high cardinality dimension can cause longer query times of the metric data and also increased storage cost.\n\nTo prevent this problem, the volatile attribute needs to be removed from the corresponding rule or a less volatile replacement found. For more details and how to fix the issue please visit the documentation [here](https://dt-url.net/iu03aff).",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Max distinct destination count for one Service (publish)",
          "query": "timeseries { \n  sum(dt.service.request.count), by: { dt.smartscape.service, endpoint.name }\n}\n| summarize `Distinct endpoints` = countDistinct(endpoint.name),\n  by: { dt.smartscape.service }\n| sort `Distinct endpoints` desc\n| limit 100\n| lookup [smartscapeNodes \"SERVICE\"\n  | fields name,id], sourceField:dt.smartscape.service,lookupField:id\n| fields `Distinct endpoints`, `Service` = lookup.name, dt.smartscape.service",
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
          "title": "Top 100 maximum distinct endpoints per service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Service\"]",
                "[\"dt.smartscape.service\"]",
                "[\"Distinct endpoints\"]"
              ],
              "columnWidths": {
                "[\"Distinct endpoints\"]": 148.59,
                "[\"Service Name\"]": 197,
                "[\"dt.entity.service\"]": 228
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Distinct endpoints\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [
              {
                "field": "countDistinct(endpoint.name)",
                "id": 1,
                "isEnabled": true,
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
        "6": {
          "content": "### Endpoint cardinality insights\nThis Dashboard helps to identify potentially problematic endpoint detection rules producing volatile endpoint names, which can have a negative impact on query execution and storage cost. For more details, please visit the documentation [here](https://dt-url.net/6203axn).",
          "type": "markdown"
        },
        "7": {
          "content": " ",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.services.endpoint-cardinality"
  # private = false
}
