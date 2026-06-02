resource "dynatrace_json_dashboard" "xECM_Apdex_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "managementZone": {
            "id": "165550499436117936",
            "name": "xECM Steel"
          }
        },
        "name": "xECM Apdex Analysis",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true,
        "tags": [
          "xECM_P"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 266,
            "left": 988,
            "top": 570,
            "width": 266
          },
          "configured": true,
          "customName": "Single value",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():count:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():count:sort(value(avg,descending)):limit(20))"
          ],
          "name": "Requests - Count Total",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "COUNT",
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
            "height": 266,
            "left": 0,
            "top": 570,
            "width": 988
          },
          "configured": true,
          "customName": "Pie",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():count:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Request - Count",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "COUNT",
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
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                },
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "RIGHT",
                  "queryIds": [
                    "B"
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
                  "alias": "Count / Hour",
                  "color": "BLUE",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "Visually complete - load action (by key user action, browser) [web]",
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
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 266,
            "left": 988,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "customName": "Single value",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():max:sort(value(max,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():max:sort(value(max,descending)):limit(20))"
          ],
          "name": "Duration - Max",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MAX",
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
            "height": 266,
            "left": 988,
            "top": 304,
            "width": 266
          },
          "configured": true,
          "customName": "Single value",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():median:sort(value(median,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():median:sort(value(median,descending)):limit(20))"
          ],
          "name": "Duration - Median",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
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
                  "alias": "Med",
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
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
            "height": 266,
            "left": 0,
            "top": 304,
            "width": 988
          },
          "configured": true,
          "customName": "Pie",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Duration - Median",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "B",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
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
                "matcher": "B:",
                "properties": {
                  "alias": "Median",
                  "color": "BLUE",
                  "seriesType": "LINE"
                },
                "unitTransform": "Second",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "Visually complete - load action (by key user action, browser) [web]",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f",
                    "value": 2
                  },
                  {
                    "color": "#dc172a",
                    "value": 4.5
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
            "height": 266,
            "left": 0,
            "top": 38,
            "width": 988
          },
          "configured": true,
          "customName": "Pie",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:apps.web.action.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application_method\",entitySelector(\"type(application_method),entityName.equals(~\"folder change~\")\"))))):splitBy():max:sort(value(max,descending)):limit(20)):limit(100):names"
          ],
          "name": "Duration - Max",
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
                        "value": "folder change"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.application_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.visuallyComplete.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MAX",
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
                  "alias": "Max",
                  "color": "BLUE",
                  "seriesType": "LINE"
                },
                "unitTransform": "Second",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "Visually complete - load action (by key user action, browser) [web]",
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
            "type": "GRAPH_CHART"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Apdex_Analysis_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Apdex_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Apdex_Analysis_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_Apdex_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
