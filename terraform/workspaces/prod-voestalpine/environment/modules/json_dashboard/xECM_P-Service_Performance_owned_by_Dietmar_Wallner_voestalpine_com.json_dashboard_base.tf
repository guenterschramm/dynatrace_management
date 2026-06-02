resource "dynatrace_json_dashboard" "xECM_P-Service_Performance_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "timeframe": "-24h to now"
        },
        "dynamicFilters": {
          "filters": [
            "APPLICATION_TAG_KEY:xECM_P"
          ]
        },
        "name": "xECM P - Service Performance",
        "owner": "Dietmar.Wallner@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "xECM_P"
        ]
      },
      "tiles": [
        {
          "assignedEntities": [
            "SERVICE-E9718129A3F3B361"
          ],
          "bounds": {
            "height": 304,
            "left": 1330,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-6509B6A429DA7C35"
          ],
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-267B35BCBAF3FA28"
          ],
          "bounds": {
            "height": 304,
            "left": 342,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-DD1348A82780C7FE"
          ],
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-6509B6A429DA7C35"
          ],
          "bounds": {
            "height": 304,
            "left": 1026,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-28C8C6C476F8BDFB"
          ],
          "bounds": {
            "height": 304,
            "left": 1938,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-D35E9B953F83D61C"
          ],
          "bounds": {
            "height": 304,
            "left": 342,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-37958402899120FF"
          ],
          "bounds": {
            "height": 152,
            "left": 1026,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Database performance",
          "tileType": "DATABASE"
        },
        {
          "assignedEntities": [
            "SERVICE-00D8835F6CCA56B8"
          ],
          "bounds": {
            "height": 152,
            "left": 1026,
            "top": 152,
            "width": 304
          },
          "configured": true,
          "name": "Database performance",
          "tileType": "DATABASE"
        },
        {
          "bounds": {
            "height": 570,
            "left": 0,
            "top": 1482,
            "width": 1330
          },
          "configured": true,
          "customName": "Exceptions by message",
          "metricExpressions": [
            "resolution=Inf\u0026(calc:service.xecmexceptioncountbymessage:splitBy(\"Exception message\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Exceptions by message",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "calc:service.xecmexceptioncountbymessage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "Exception message"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
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
                  "color": "RED",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "height": 532,
            "left": 0,
            "top": 2090,
            "width": 1748
          },
          "configured": true,
          "customName": "Exceptions by message",
          "metricExpressions": [
            "resolution=Inf\u0026(calc:service.xecmexceptioncountbymessage:splitBy(\"Exception message\",\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Exceptions by message and service",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "calc:service.xecmexceptioncountbymessage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "Exception message",
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
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
                  "color": "RED",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "height": 456,
            "left": 0,
            "top": 3306,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(calc:service.xecmexceptioncountbymessage:splitBy(\"Exception message\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Exceptions by message",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "calc:service.xecmexceptioncountbymessage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "Exception message"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
                  "color": "RED",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 380,
            "top": 1444,
            "width": 304
          },
          "configured": true,
          "markdown": "[Exception overview by class](ui/diagnostictools/mda?gtf=-2h\u0026gf=165550499436117936\u0026mdaId=exceptions\u0026metric=EXCEPTION_COUNT\u0026dimension=%7BException:Class%7D\u0026mergeServices=true\u0026aggregation=SUM\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E29%110)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 1444,
            "width": 342
          },
          "configured": true,
          "markdown": "[Exception overview by class and service](ui/diagnostictools/mda?gtf=-2h\u0026gf=165550499436117936\u0026mdaId=exceptions\u0026metric=EXCEPTION_COUNT\u0026dimension=%7BException:Class%7D\u0026mergeServices=false\u0026aggregation=SUM\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E29%110)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 0,
            "width": 304
          },
          "chartVisible": true,
          "configured": true,
          "filterConfig": {
            "chartConfig": {
              "legendShown": true,
              "type": "TIMESERIES"
            },
            "customName": "Services",
            "defaultName": "Services",
            "type": "SERVICE"
          },
          "name": "Services",
          "tileType": "SERVICES"
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 1064,
            "width": 456
          },
          "configured": true,
          "customName": "Response time",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"Application:xECM_P~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Response time",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "Application:xECM_P"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
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
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "value": 3000000
                  },
                  {
                    "color": "#dc172a",
                    "value": 12000000
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
            "height": 380,
            "left": 456,
            "top": 1064,
            "width": 950
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"Application:xECM_P~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Service Response time",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "Application:xECM_P"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "graphChartSettings": {
              "connectNulls": true
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
                "queryId": "",
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
            "height": 380,
            "left": 0,
            "top": 684,
            "width": 494
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.requestCount.total:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"Application:xECM_P~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Request count",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "Application:xECM_P"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.requestCount.total",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
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
                "queryId": "",
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
            "height": 380,
            "left": 684,
            "top": 2736,
            "width": 1140
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.requestCount.total:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"Application:xECM_P~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Service requests",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "Application:xECM_P"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.requestCount.total",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
                "queryId": "",
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1634,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "customName": "Response time",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):median):limit(100):names,(builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):percentile(90.0)):limit(100):names,(builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):percentile(99.0)):limit(100):names"
          ],
          "name": "Service /otsapxecm - Response time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):median",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):percentile(90.0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "metricSelector": "builtin:service.response.server:filter(eq(\"dt.entity.service\",SERVICE-A8146FBBEC4602D1)):splitBy(\"dt.entity.service\"):percentile(99.0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
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
                  "alias": "Response time (p50)",
                  "color": "BLUE"
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "alias": "Response time (p90)",
                  "color": "BLUE"
                }
              },
              {
                "matcher": "C:",
                "properties": {
                  "alias": "Response time (p99)",
                  "color": "BLUE"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1672,
            "top": 722,
            "width": 494
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026((builtin:tech.jvm.memory.gc.suspensionTime:avg):filter(eq(\"dt.entity.process_group_instance\",PROCESS_GROUP_INSTANCE-FF96BE0691AE3E46))):limit(100):names"
          ],
          "name": "otsearchengine - garbage collection",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:tech.jvm.memory.gc.suspensionTime:avg):filter(eq(\"dt.entity.process_group_instance\",PROCESS_GROUP_INSTANCE-FF96BE0691AE3E46))",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.process_group_instance"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
            "height": 380,
            "left": 532,
            "top": 684,
            "width": 570
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.errors.total.rate:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"Application:xECM_P~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Failure rate",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "Application:xECM_P"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.errors.total.rate",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
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
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:dt.entity.service.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "Failure rate (any  errors)",
                "queryId": "A",
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
            "height": 380,
            "left": 38,
            "top": 2888,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.errors.total.count:splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Failure count",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.errors.total.count",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
                "queryId": "",
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "assignedEntities": [
            "SERVICE-D35E9B953F83D61C"
          ],
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 0,
            "width": 570
          },
          "configured": true,
          "customName": "Response time",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):median):limit(100):names,(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(90.0)):limit(100):names,(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(99.0)):limit(100):names"
          ],
          "name": "Response time Database (CSSDP)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):median",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(90.0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(99.0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B",
                    "C"
                  ],
                  "visible": true
                }
              ]
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
                  "alias": "Response time (p50)",
                  "color": "RED",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "alias": "Response time (p90)",
                  "color": "YELLOW",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "C:",
                "properties": {
                  "alias": "Response time (p99)",
                  "color": "ORANGE",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
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
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P-Service_Performance_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P-Service_Performance_owned_by_Dietmar_Wallner_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P-Service_Performance_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  preset       = true
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P-Service_Performance_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
