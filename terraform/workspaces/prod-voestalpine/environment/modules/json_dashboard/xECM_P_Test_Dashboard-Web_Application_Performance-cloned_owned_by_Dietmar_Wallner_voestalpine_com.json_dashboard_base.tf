resource "dynatrace_json_dashboard" "xECM_P_Test_Dashboard-Web_Application_Performance-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "managementZone": {
            "id": "165550499436117936",
            "name": "xECM Steel"
          },
          "timeframe": "-24h to now"
        },
        "dynamicFilters": {
          "filters": [
            "APPLICATION_TAG_KEY:xECM_P"
          ]
        },
        "name": "xECM P Test Dashboard- Web Application Performance-cloned",
        "owner": "Dietmar.Wallner@voestalpine.com"
      },
      "tiles": [
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A"
          ],
          "bounds": {
            "height": 304,
            "left": 1026,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Web application",
          "tileType": "APPLICATION"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 152,
            "width": 228
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "name": "Problems",
          "tileFilter": {
            "managementZone": {
              "id": "165550499436117936",
              "name": "xECM Steel"
            }
          },
          "tileType": "OPEN_PROBLEMS",
          "useBackgroundColor": true
        },
        {
          "assignedEntities": [
            "SERVICE-D35E9B953F83D61C"
          ],
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 874,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "bounds": {
            "height": 418,
            "left": 570,
            "top": 1216,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.actionCount.load.browser:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.actionCount.xhr.browser:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User action count",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.actionCount.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "limit": 20,
              "metric": "builtin:apps.web.actionCount.xhr.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
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
                    "B"
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
                  "color": "PURPLE",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "ROYALBLUE",
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
            "left": 304,
            "top": 190,
            "width": 304
          },
          "configured": true,
          "markdown": "[xECM-P Server Monitoring Dashboard](#dashboard;gtf=-2h;gf=all;id=78e4fd88-c6cd-4f54-bce0-04f36b6dce7c)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 304,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "markdown": "[xECM P - Service Performance Dashboard](#dashboard;gtf=-2h;gf=all;id=3fd297b9-b2c2-4626-9a2f-c41e8be2b767)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 874,
            "width": 418
          },
          "configured": true,
          "customName": "Sessions by user experience",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT COUNT(*), userExperienceScore FROM usersession WHERE useraction.application = \"ecm-steel.voestalpine.net\" GROUP BY userExperienceScore",
          "tileType": "DTAQL",
          "type": "PIE_CHART"
        },
        {
          "bounds": {
            "height": 532,
            "left": 0,
            "top": 304,
            "width": 760
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.visuallyComplete.xhr.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.domInteractive.load.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User action response time (xECM P)",
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
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "B",
              "limit": 20,
              "metric": "builtin:apps.web.visuallyComplete.xhr.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "C",
              "limit": 20,
              "metric": "builtin:apps.web.domInteractive.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
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
                  "color": "BLUE",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "C:",
                "properties": {
                  "color": "PURPLE",
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
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 380,
            "top": 0,
            "width": 228
          },
          "configured": true,
          "customName": "Active Sessions",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.activeSessions:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.activeSessions:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20))"
          ],
          "name": "Active Sessions (xECM P)",
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
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.activeSessions",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
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
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 418,
            "left": 0,
            "top": 1216,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.countOfErrors:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy(\"Error type\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Frontend errors",
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
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.countOfErrors",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "Error type"
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
                  "color": "ORANGE",
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
            "height": 532,
            "left": 1482,
            "top": 304,
            "width": 494
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.activeSessions:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Sessions",
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
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.activeSessions",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
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
                  "color": "TURQUOISE",
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
            "height": 266,
            "left": 0,
            "top": 874,
            "width": 266
          },
          "configured": true,
          "customName": "Page load visually complete",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"ecm-steel.voestalpine.net~\")\"))))):splitBy(\"dt.entity.browser\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Response time by browser",
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
                        "matchExactly": true,
                        "value": "ecm-steel.voestalpine.net"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.browser"
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
                    "value": 3000
                  },
                  {
                    "color": "#dc172a",
                    "value": 6000
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
            "left": 798,
            "top": 304,
            "width": 684
          },
          "configured": true,
          "customName": "Slowest user actions",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT name AS \"Action name\", AVG(duration) AS \"Response time\"\nFROM useraction\nWHERE application IS \"ecm-steel.voestalpine.net\"\nGROUP BY name\nORDER BY AVG(duration) DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "TABLE"
        },
        {
          "assignedEntities": [
            "SERVICE-267B35BCBAF3FA28"
          ],
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 874,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-FB24FFB1829BDDBA"
          ],
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 874,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 152,
            "top": 0,
            "width": 228
          },
          "configured": true,
          "name": "Problems xECM_P",
          "problemSelector": "entityId(\"APPLICATION-1511292D0FDC055A\")",
          "tileType": "OPEN_PROBLEMS"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1330,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "customName": "Response time",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):median):limit(100):names,(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(90.0)):limit(100):names,(builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(99.0)):limit(100):names"
          ],
          "name": "Response time Database",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):median",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(90.0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "metricSelector": "builtin:service.response.client:filter(eq(\"dt.entity.service\",SERVICE-37958402899120FF)):splitBy(\"dt.entity.service\"):percentile(99.0)",
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
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "GEOLOCATION-EF77F2A17134795A",
            "CONTINENT"
          ],
          "bounds": {
            "height": 304,
            "left": 646,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "metric": "APDEX",
          "name": "World map",
          "tileType": "APPLICATION_WORLDMAP"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 1672,
            "width": 304
          },
          "configured": true,
          "name": "Service-level objective",
          "tileType": "SLO"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P_Test_Dashboard-Web_Application_Performance-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P_Test_Dashboard-Web_Application_Performance-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P_Test_Dashboard-Web_Application_Performance-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P_Test_Dashboard-Web_Application_Performance-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
