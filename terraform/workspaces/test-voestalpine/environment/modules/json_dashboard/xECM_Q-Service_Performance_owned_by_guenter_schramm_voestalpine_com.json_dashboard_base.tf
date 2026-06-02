resource "dynatrace_json_dashboard" "xECM_Q-Service_Performance_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - Service Performance",
        "owner": "guenter.schramm@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "xECM_Q"
        ]
      },
      "tiles": [
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
            "resolution=Inf\u0026(builtin:service.requestCount.total:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
            "left": 532,
            "top": 684,
            "width": 1140
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.requestCount.total:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
            "height": 380,
            "left": 0,
            "top": 1102,
            "width": 494
          },
          "configured": true,
          "customName": "Failure rate",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.errors.total.rate:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
                    "value": 5
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
            "left": 0,
            "top": 1520,
            "width": 494
          },
          "configured": true,
          "customName": "Response time",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
            "left": 532,
            "top": 1102,
            "width": 570
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.errors.total.rate:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
                  "color": "DEFAULT",
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
            "height": 380,
            "left": 1140,
            "top": 1102,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.errors.total.count:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Failure count",
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
                        "value": "xECM_Q"
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
          "bounds": {
            "height": 380,
            "left": 532,
            "top": 1520,
            "width": 1140
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"xECM_Q~\")\"))))):splitBy(\"dt.entity.service\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "xECM_Q"
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
          "assignedEntities": [
            "SERVICE-D634DC1DD0EF2D08"
          ],
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-41DD39080013F9CF"
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
            "SERVICE-43966A93103A529A"
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
            "SERVICE-F808CF3EBB6FFB38"
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
            "SERVICE-B811EA6C199004CE"
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
            "SERVICE-488F544CED91545F"
          ],
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-AE336B9188EF4967"
          ],
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
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
            "customName": "Service health",
            "defaultName": "Service health",
            "filtersPerEntityType": {
              "SERVICE": {
                "AUTO_TAGS": [
                  "xECM_Q"
                ]
              }
            },
            "type": "SERVICE"
          },
          "name": "Service health",
          "tileType": "SERVICES"
        },
        {
          "assignedEntities": [
            "SERVICE-416C4249ABCBE249"
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
            "SERVICE-E648787410C48CF5"
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
            "height": 456,
            "left": 646,
            "top": 1938,
            "width": 1102
          },
          "configured": true,
          "customName": "Exceptions by message",
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
            "height": 456,
            "left": 0,
            "top": 2432,
            "width": 1748
          },
          "configured": true,
          "customName": "Exceptions by message",
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
            "top": 1938,
            "width": 608
          },
          "configured": true,
          "customName": "Data explorer results",
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
            "left": 646,
            "top": 2394,
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
            "top": 2394,
            "width": 304
          },
          "configured": true,
          "markdown": "[Exception overview by class and service](ui/diagnostictools/mda?gtf=-2h\u0026gf=165550499436117936\u0026mdaId=exceptions\u0026metric=EXCEPTION_COUNT\u0026dimension=%7BException:Class%7D\u0026mergeServices=false\u0026aggregation=SUM\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E29%110)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-Service_Performance_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-Service_Performance_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-Service_Performance_owned_by_guenter_schramm_voestalpine_com.id}"
  preset       = true
}


resource "dynatrace_json_dashboard_base" "xECM_Q-Service_Performance_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
