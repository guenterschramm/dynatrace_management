resource "dynatrace_json_dashboard" "SAP_RFC-Outgoing_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "PROCESS_GROUP_INSTANCE_TAG_KEY:SAP RFC"
          ]
        },
        "name": "SAP RFC - Outgoing Performance",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "SAP",
          "Configurator",
          "RFC"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 760,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingSend:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Send",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingSend",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 760,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingSend:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Send",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingSend",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "left": 304,
            "top": 38,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingRequests:splitBy():sum:sort(value(sum,descending)):limit(10)):limit(100):names"
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
                "columnId": "sap.rfcOutgoingSend",
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
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingRequests:splitBy():sum:sort(value(sum,descending)):limit(10)):limit(100):names"
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 950,
            "top": 760,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingReceive:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Receive",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingReceive",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 760,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingReceive:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Receive",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingReceive",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "height": 114,
            "left": 0,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingExecutionTime:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Execution Time (AVG)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 0,
            "top": 494,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingExecutionTime:splitBy():median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Execution Time (MED)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 0,
            "top": 608,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingExecutionTime:splitBy():percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Execution Time (90TH)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 304,
            "top": 380,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingExecutionTime:splitBy():percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names,(sap.rfcOutgoingExecutionTime:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names,(sap.rfcOutgoingExecutionTime:splitBy():median:sort(value(median,descending)):limit(10)):limit(100):names"
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
              "spaceAggregation": "PERCENTILE_90",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcOutgoingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
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
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "sap.rfcOutgoingSend",
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
            "height": 342,
            "left": 1254,
            "top": 380,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcOutgoingCallTime:splitBy():percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names,(sap.rfcOutgoingCallTime:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names,(sap.rfcOutgoingCallTime:splitBy():median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Call Time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
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
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "sap.rfcOutgoingSend",
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
            "height": 114,
            "left": 950,
            "top": 608,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingCallTime:splitBy():percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Call Time (90TH)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 950,
            "top": 494,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingCallTime:splitBy():median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Call Time (MED)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 950,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcOutgoingCallTime:splitBy():avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Outgoing Call Time (AVG)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcOutgoingCallTime",
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
                "columnId": "sap.rfcOutgoingSend",
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 912
          },
          "configured": true,
          "name": "Outgoing Request Throughput",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 342,
            "width": 912
          },
          "configured": true,
          "name": "Outgoing Execution Response Time (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 722,
            "width": 912
          },
          "configured": true,
          "name": "Outgoing Send Throughput",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 722,
            "width": 912
          },
          "configured": true,
          "name": "Outgoing Receive Throughput",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 342,
            "width": 912
          },
          "configured": true,
          "name": "Outgoing Call Response Time (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 0,
            "width": 760
          },
          "configured": true,
          "name": "Outgoing Performance Breakdowns",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 266,
            "left": 950,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "markdown": "[Account](#dashboard;id=bbbbbbbb-a001-a008-0017-2)\n\n[Client Number](#dashboard;id=bbbbbbbb-a001-a008-0018-2)\n\n[Entry ID](#dashboard;id=bbbbbbbb-a001-a008-0019-2)\n\n[Function Name](#dashboard;id=bbbbbbbb-a001-a008-0020-2)\n\n[Host](#dashboard;id=bbbbbbbb-a001-a008-0021-2)\n\n[Instance Number](#dashboard;id=bbbbbbbb-a001-a008-0022-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 266,
            "left": 1216,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "markdown": "[Local Destination](#dashboard;id=bbbbbbbb-a001-a008-0023-2)\n\n[Program Name](#dashboard;id=bbbbbbbb-a001-a008-0024-2)\n\n[Remote Destination](#dashboard;id=bbbbbbbb-a001-a008-0025-2)\n\n[SID](#dashboard;id=bbbbbbbb-a001-a008-0026-2)\n\n[Target](#dashboard;id=bbbbbbbb-a001-a008-0027-2)\n\n[Task Type](#dashboard;id=bbbbbbbb-a001-a008-0028-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 266,
            "left": 1482,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "markdown": "[User ID](#dashboard;id=bbbbbbbb-a001-a008-0029-2)\n\n[SAP Custom Device](#dashboard;id=bbbbbbbb-a001-a008-0030-2)\n\n[Return to Aggregate](#dashboard;id=bbbbbbbb-a001-a008-0016-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1710,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "###[↩︎ Back](#dashboard;id=bbbbbbbb-a001-a008-0000-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_RFC-Outgoing_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_RFC-Outgoing_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_RFC-Outgoing_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_RFC-Outgoing_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
