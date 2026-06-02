resource "dynatrace_json_dashboard" "xECM_Q-Web_Application_Performance_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - Web Application Performance",
        "owner": "guenter.schramm@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "xECM_Q"
        ]
      },
      "tiles": [
        {
          "assignedEntities": [
            "APPLICATION-1BEEDBE4DCA8120D"
          ],
          "bounds": {
            "height": 304,
            "left": 342,
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
            "width": 304
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "bounds": {
            "height": 190,
            "left": 684,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "customName": "Active Sessions",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.activeSessions:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:apps.web.activeSessions:splitBy():sort(value(auto,descending)):limit(20))"
          ],
          "name": "Active Sessions",
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
            "height": 304,
            "left": 1026,
            "top": 0,
            "width": 456
          },
          "configured": true,
          "customName": "Sessions by user experience",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT COUNT(*), userExperienceScore FROM usersession WHERE useraction.application = \"q-ecm-steel.voestalpine.net\" GROUP BY userExperienceScore",
          "tileType": "DTAQL",
          "type": "PIE_CHART"
        },
        {
          "bounds": {
            "height": 304,
            "left": 570,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "customName": "Page load visually complete",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.web.visuallyComplete.load.browser:splitBy(\"dt.entity.browser\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Response time by browser",
          "queries": [
            {
              "enabled": true,
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
            "height": 418,
            "left": 0,
            "top": 684,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.countOfErrors:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"q-ecm-steel.voestalpine.net~\")\"))))):splitBy(\"Error type\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "q-ecm-steel.voestalpine.net"
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
            "height": 152,
            "left": 0,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS",
          "useBackgroundColor": true
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 342,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.activeSessions:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"q-ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
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
                        "value": "q-ecm-steel.voestalpine.net"
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
          "assignedEntities": [
            "SERVICE-B811EA6C199004CE"
          ],
          "bounds": {
            "height": 304,
            "left": 1520,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE-22BBE96FB81780CD"
          ],
          "bounds": {
            "height": 304,
            "left": 1520,
            "top": 0,
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
            "top": 684,
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
            "left": 684,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "markdown": "[xECM Server Monitoring Dashboard](#dashboard;gtf=-2h;gf=all;id=2688ce41-ac87-4136-89a9-7a385997e974)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 684,
            "top": 266,
            "width": 304
          },
          "configured": true,
          "markdown": "[xECM Service Performance Dashboard](#dashboard;gtf=-2h;gf=all;id=cae97ce9-fb92-47a8-b9cb-5c9472afd5f7)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 342,
            "width": 570
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.visuallyComplete.load.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"q-ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.visuallyComplete.xhr.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"q-ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:apps.web.domInteractive.load.browser:filter(and(or(in(\"dt.entity.application\",entitySelector(\"type(application),entityName.equals(~\"q-ecm-steel.voestalpine.net~\")\"))))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User action response time",
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
                        "value": "q-ecm-steel.voestalpine.net"
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
                        "value": "q-ecm-steel.voestalpine.net"
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
                        "value": "q-ecm-steel.voestalpine.net"
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
            "height": 418,
            "left": 1140,
            "top": 684,
            "width": 684
          },
          "configured": true,
          "customName": "Slowest user actions",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT name AS \"Action name\", AVG(duration) AS \"Response time\"\nFROM useraction\nWHERE application IS \"q-ecm-steel.voestalpine.net\"\nGROUP BY name\nORDER BY AVG(duration) DESC",
          "tileType": "DTAQL",
          "type": "TABLE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-Web_Application_Performance_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-Web_Application_Performance_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-Web_Application_Performance_owned_by_guenter_schramm_voestalpine_com.id}"
  preset       = true
}


resource "dynatrace_json_dashboard_base" "xECM_Q-Web_Application_Performance_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
