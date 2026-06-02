resource "dynatrace_json_dashboard" "Remedy_Production-Real_User_Insights_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "managementZone": {
            "id": "6156115154806518891",
            "name": "ITSM - BMC Remedy"
          },
          "timeframe": "-7d to now"
        },
        "name": "Remedy Production - Real User Insights",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true,
        "tags": [
          "Production",
          "Real User",
          "Remedy"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 228,
            "left": 0,
            "top": 38,
            "width": 494
          },
          "configured": true,
          "customName": "Web applications",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.actionCount.category:filter(and(or(eq(\"Apdex category\",FRUSTRATED),eq(\"Apdex category\",TOLERATING),eq(\"Apdex category\",SATISFIED)))):splitBy(\"Apdex category\"):value:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Remedy Production",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "EQ",
                        "value": "FRUSTRATED"
                      },
                      {
                        "evaluator": "EQ",
                        "value": "SATISFIED"
                      },
                      {
                        "evaluator": "EQ",
                        "value": "TOLERATING"
                      }
                    ],
                    "filter": "Apdex category",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:apps.web.actionCount.category",
              "rate": "NONE",
              "spaceAggregation": "VALUE",
              "splitBy": [
                "Apdex category"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
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
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#dc172a",
                    "name": "FRUSTRATED"
                  },
                  {
                    "color": "#2ab06f",
                    "name": "SATISFIED"
                  },
                  {
                    "color": "#f5d30f",
                    "name": "TOLERATING"
                  },
                  {
                    "color": "#f5d30f",
                    "name": "UNKNOWN"
                  }
                ]
              }
            ],
            "type": "PIE_CHART"
          }
        },
        {
          "assignedEntities": [
            "APPLICATION-63B1740C1E7F005A",
            "GEOLOCATION-0000000000000000",
            "WORLD"
          ],
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 456,
            "width": 494
          },
          "configured": true,
          "metric": "APDEX",
          "name": "World map",
          "tileType": "APPLICATION_WORLDMAP"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1064,
            "top": 798,
            "width": 494
          },
          "configured": true,
          "customName": "Web application errors",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.countOfErrors:splitBy(\"Error type\"):value:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Errors",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "builtin:apps.web.countOfErrors",
              "rate": "NONE",
              "spaceAggregation": "VALUE",
              "splitBy": [
                "Error type"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
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
                "seriesOverrides": [
                  {
                    "color": "#00a1b2",
                    "name": "Request"
                  },
                  {
                    "color": "#c9a000",
                    "name": "Custom"
                  },
                  {
                    "color": "#debbf3",
                    "name": "JavaScript"
                  }
                ]
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 456,
            "width": 494
          },
          "configured": true,
          "customName": "Key user actions with low Apdex rating ",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.action.apdex:splitBy(\"dt.entity.application_method\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key user actions with low Apdex rating ",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "builtin:apps.web.action.apdex",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.application_method"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
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
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 494
          },
          "configured": true,
          "name": "User experience",
          "tileType": "HEADER"
        },
        {
          "assignedEntities": [
            "APPLICATION-63B1740C1E7F005A"
          ],
          "bounds": {
            "height": 304,
            "left": 1064,
            "top": 456,
            "width": 304
          },
          "configured": true,
          "name": "Key user action overview",
          "tileType": "UEM_KEY_USER_ACTIONS"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 418,
            "width": 494
          },
          "configured": true,
          "name": "Geo locations",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 0,
            "width": 798
          },
          "configured": true,
          "name": "User actions",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 760,
            "width": 798
          },
          "configured": true,
          "name": "Application errors and crashes",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 532,
            "top": 798,
            "width": 494
          },
          "configured": true,
          "customName": "Key performance metrics",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.visuallyComplete.load.browser:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:apps.web.domInteractive.load.browser:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:apps.web.speedIndex.load.browser:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:apps.web.firstByte.load.browser:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "KPIs",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "builtin:apps.web.visuallyComplete.load.browser",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "B",
              "metric": "builtin:apps.web.domInteractive.load.browser",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "C",
              "metric": "builtin:apps.web.speedIndex.load.browser",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "D",
              "metric": "builtin:apps.web.firstByte.load.browser",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B",
                    "C",
                    "D"
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
                  "seriesType": "LINE"
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                }
              },
              {
                "matcher": "C:",
                "properties": {
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                }
              },
              {
                "matcher": "D:",
                "properties": {
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 760,
            "width": 494
          },
          "configured": true,
          "name": "Synthetic monitoring",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 418,
            "width": 798
          },
          "configured": true,
          "name": "Key user actions",
          "tileType": "HEADER"
        },
        {
          "assignedEntities": [
            "SYNTHETIC_TEST-71B48C1DF8FD54D8"
          ],
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 798,
            "width": 304
          },
          "configured": true,
          "excludeMaintenanceWindows": true,
          "name": "Browser monitor",
          "nameSize": "",
          "tileType": "SYNTHETIC_SINGLE_WEBCHECK"
        },
        {
          "bounds": {
            "height": 38,
            "left": 532,
            "top": 0,
            "width": 494
          },
          "configured": true,
          "name": "User sessions",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 532,
            "top": 418,
            "width": 494
          },
          "configured": true,
          "name": "User sessions",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 532,
            "top": 760,
            "width": 494
          },
          "configured": true,
          "name": "Web Application KPIs",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 532,
            "top": 456,
            "width": 494
          },
          "configured": true,
          "customName": "Single value",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.activeSessions:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.activeSessions:splitBy():sort(value(auto,descending)):limit(20))"
          ],
          "name": "Sessions total",
          "queries": [
            {
              "enabled": true,
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
              "showSparkLine": true,
              "showTrend": true
            },
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
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 1064,
            "top": 38,
            "width": 798
          },
          "configured": true,
          "customName": "User actions per minute",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:apps.web.actionCount.load.browser:splitBy(\"dt.entity.application\"):sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.actionCount.xhr.browser:splitBy(\"dt.entity.application\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User actions per hour",
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
              "splitBy": [
                "dt.entity.application"
              ],
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
              "splitBy": [
                "dt.entity.application"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
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
                  "color": "DEFAULT",
                  "seriesType": "AREA"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "ROYALBLUE",
                  "seriesType": "STACKED_AREA"
                },
                "seriesOverrides": [
                  {
                    "color": "#edd148",
                    "name": "Select series"
                  },
                  {
                    "color": "#dc172a",
                    "name": "Select series"
                  },
                  {
                    "color": "#2ab06f",
                    "name": "Select series"
                  }
                ],
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
        },
        {
          "bounds": {
            "height": 380,
            "left": 532,
            "top": 38,
            "width": 494
          },
          "configured": true,
          "customName": "User actions per minute",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:apps.web.activeSessions:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User sessions per hour",
          "queries": [
            {
              "enabled": true,
              "id": "C",
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
            "resolution": "1h"
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
                  "min": "0",
                  "position": "LEFT",
                  "queryIds": [
                    "C"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
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
                  "color": "DEFAULT",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "none",
                "valueFormat": "0"
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "assignedEntities": [
            "APPLICATION-63B1740C1E7F005A"
          ],
          "bounds": {
            "height": 304,
            "left": 1558,
            "top": 798,
            "width": 304
          },
          "configured": true,
          "name": "JavaScript errors",
          "tileType": "UEM_JSERRORS_OVERALL"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 266,
            "width": 494
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS",
          "useBackgroundColor": true
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Remedy_Production-Real_User_Insights_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "Remedy_Production-Real_User_Insights_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.Remedy_Production-Real_User_Insights_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
    permission {
      type  = "GROUP"
      id    = "3b29fae5-fdfa-42f1-b104-4cf7d980446d"
      level = "EDIT"
    }
  }
}


resource "dynatrace_json_dashboard_base" "Remedy_Production-Real_User_Insights_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
