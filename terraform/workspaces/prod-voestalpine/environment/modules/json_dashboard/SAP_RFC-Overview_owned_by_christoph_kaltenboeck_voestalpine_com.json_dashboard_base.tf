resource "dynatrace_json_dashboard" "SAP_RFC-Overview_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "PROCESS_GROUP_INSTANCE_TAG_KEY:SAP RFC"
          ]
        },
        "name": "SAP RFC - Overview",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "SAP",
          "Configurator",
          "Overview",
          "RFC"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 532,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingRequests:splitBy(\"dt.entity.custom_device\"):sum:sort(value(sum,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Requests",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingRequests",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "SUM",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT",
                  "seriesType": "AREA"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 532,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingRequests:splitBy(\"dt.entity.custom_device\"):sum:sort(value(sum,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Requests",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingRequests",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "SUM",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT",
                  "seriesType": "AREA"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 836,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingExecutionTime:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 836,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingExecutionTime:splitBy(\"dt.entity.custom_device\"):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Execution Time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 342,
            "width": 1216
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingExecutionTime:splitBy(\"dt.entity.custom_device\"):avg:sort(value(avg,descending)):limit(10)):names,(sap.rfcOutgoingRequests:splitBy(\"dt.entity.custom_device\"):sum:sort(value(sum,descending)):limit(10)):names,(sap.rfcIncomingExecutionTime:splitBy(\"dt.entity.custom_device\"):avg:sort(value(avg,descending)):limit(10)):names,(sap.rfcIncomingRequests:splitBy(\"dt.entity.custom_device\"):sum:sort(value(sum,descending)):limit(10)):names"
          ],
          "name": "Instance Summary",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "limit": 10,
              "metric": "sap.rfcOutgoingRequests",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "SUM",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "D",
              "limit": 10,
              "metric": "sap.rfcIncomingRequests",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "SUM",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT"
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "DEFAULT"
                }
              },
              {
                "matcher": "C:",
                "properties": {
                  "color": "DEFAULT"
                }
              },
              {
                "matcher": "D:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "sap.rfcOutgoingExecutionTime",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TABLE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 1216
          },
          "configured": true,
          "name": "SAP Application Server",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1216,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "markdown": "###[SAP RFC Incoming Performance](#dashboard;id=bbbbbbbb-a001-a008-0001-2)\n\n###[SAP RFC Outgoing Performance](#dashboard;id=bbbbbbbb-a001-a008-0016-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1216,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "SAP RFC Details ▼",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 38,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "name": "Availability",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "ext:tech.SAP.avail",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "singleValueSettings": {
              "showSparkLine": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540",
                    "value": 99
                  },
                  {
                    "color": "#f5d30f",
                    "value": 95
                  },
                  {
                    "color": "#dc172a",
                    "value": 0
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 38,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "name": "Availability by SAP Custom Device",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "ext:tech.SAP.avail",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540",
                    "value": 99
                  },
                  {
                    "color": "#f5d30f",
                    "value": 95
                  },
                  {
                    "color": "#dc172a",
                    "value": 0
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_RFC-Overview_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_RFC-Overview_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_RFC-Overview_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
}


resource "dynatrace_json_dashboard_base" "SAP_RFC-Overview_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
