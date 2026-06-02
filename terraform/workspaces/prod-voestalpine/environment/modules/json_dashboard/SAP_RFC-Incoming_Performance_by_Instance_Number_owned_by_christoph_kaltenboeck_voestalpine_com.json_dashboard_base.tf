resource "dynatrace_json_dashboard" "SAP_RFC-Incoming_Performance_by_Instance_Number_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "PROCESS_GROUP_INSTANCE_TAG_KEY:SAP RFC"
          ]
        },
        "name": "SAP RFC - Incoming Performance by Instance Number",
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
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Request Throughput",
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
          "name": "Incoming Execution Response Time - Average (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 1482,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Send Throughput",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1482,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Receive Throughput",
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
          "name": "Incoming Call Response Time - Average (milliseconds)",
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
          "markdown": "[Account](#dashboard;id=bbbbbbbb-a001-a008-0002-2)\n\n[Client Number](#dashboard;id=bbbbbbbb-a001-a008-0003-2)\n\n[Entry ID](#dashboard;id=bbbbbbbb-a001-a008-0004-2)\n\n[Function Name](#dashboard;id=bbbbbbbb-a001-a008-0005-2)\n\n[Host](#dashboard;id=bbbbbbbb-a001-a008-0006-2)\n\n[Instance Number](#dashboard;id=bbbbbbbb-a001-a008-0007-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 0,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Performance Breakdowns",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 266,
            "left": 1216,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "markdown": "[Local Destination](#dashboard;id=bbbbbbbb-a001-a008-0008-2)\n\n[Program Name](#dashboard;id=bbbbbbbb-a001-a008-0009-2)\n\n[Remote Destination](#dashboard;id=bbbbbbbb-a001-a008-0010-2)\n\n[SID](#dashboard;id=bbbbbbbb-a001-a008-0011-2)\n\n[Target](#dashboard;id=bbbbbbbb-a001-a008-0012-2)\n\n[Task Type](#dashboard;id=bbbbbbbb-a001-a008-0013-2)",
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
          "markdown": "[User ID](#dashboard;id=bbbbbbbb-a001-a008-0014-2)\n\n[SAP Custom Device](#dashboard;id=bbbbbbbb-a001-a008-0015-2)\n\n[Return to Aggregate](#dashboard;id=bbbbbbbb-a001-a008-0001-2)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
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
            "resolution=Inf\u0026(sap.rfcIncomingRequests:splitBy(instance_number):sum:sort(value(sum,descending)):limit(10)):limit(100):names"
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
                "instance_number"
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
            "type": "TOP_LIST"
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
            "resolution=null\u0026(sap.rfcIncomingRequests:splitBy(instance_number):sum:sort(value(sum,descending)):limit(10)):limit(100):names"
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
                "instance_number"
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
            "left": 0,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time (AVG)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 722,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Execution Response Time - Median (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 1102,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Execution Response Time - 90th Percentile (milliseconds)",
          "tileType": "HEADER"
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
            "resolution=null\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time",
          "queries": [
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "left": 0,
            "top": 760,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time (MED)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 304,
            "top": 760,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time",
          "queries": [
            {
              "enabled": true,
              "id": "E",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "instance_number"
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
                "matcher": "E:",
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
            "left": 0,
            "top": 1140,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time (90TH)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 304,
            "top": 1140,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingExecutionTime:splitBy(instance_number):percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Execution Time",
          "queries": [
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcIncomingExecutionTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "instance_number"
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
            "height": 304,
            "left": 0,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingSend:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Send",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingSend",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 1520,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingSend:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Send",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingSend",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "left": 950,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingReceive:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Receive",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingReceive",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 1520,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingReceive:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Receive",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingReceive",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "height": 38,
            "left": 950,
            "top": 722,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Call Response Time - Median (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1102,
            "width": 912
          },
          "configured": true,
          "name": "Incoming Call Response Time - 90th Percentile (milliseconds)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 342,
            "left": 950,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time (AVG)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
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
            "resolution=null\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time",
          "queries": [
            {
              "enabled": true,
              "id": "B",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "instance_number"
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
                "matcher": "B:",
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
            "left": 950,
            "top": 760,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time (MED)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 1254,
            "top": 760,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):median:sort(value(median,descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time",
          "queries": [
            {
              "enabled": true,
              "id": "C",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "instance_number"
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
            "left": 950,
            "top": 1140,
            "width": 304
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time (90TH)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "instance_number"
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 1254,
            "top": 1140,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sap.rfcIncomingCallTime:splitBy(instance_number):percentile(90.0):sort(value(percentile(90.0),descending)):limit(10)):limit(100):names"
          ],
          "name": "Incoming Call Time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "sap.rfcIncomingCallTime",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "instance_number"
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
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_RFC-Incoming_Performance_by_Instance_Number_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_RFC-Incoming_Performance_by_Instance_Number_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_RFC-Incoming_Performance_by_Instance_Number_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_RFC-Incoming_Performance_by_Instance_Number_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
