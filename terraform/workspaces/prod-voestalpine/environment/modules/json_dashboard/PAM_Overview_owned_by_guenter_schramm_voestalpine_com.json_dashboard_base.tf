resource "dynatrace_json_dashboard" "PAM_Overview_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "managementZone": {
            "id": "4669812108757315874",
            "name": "PAM - Privileged Access Management"
          },
          "timeframe": "-7d to now"
        },
        "name": "PAM Overview",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true,
        "tags": [
          "PAM"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 380,
            "width": 304
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "bounds": {
            "height": 342,
            "left": 608,
            "top": 38,
            "width": 646
          },
          "chartVisible": true,
          "configured": true,
          "name": "Host health",
          "tileType": "HOSTS"
        },
        {
          "assignedEntities": [
            "GEOLOCATION-0000000000000000",
            "WORLD"
          ],
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 38,
            "width": 608
          },
          "configured": true,
          "metric": "APDEX",
          "name": "World map",
          "tileType": "APPLICATION_WORLDMAP"
        },
        {
          "bounds": {
            "height": 342,
            "left": 1254,
            "top": 38,
            "width": 646
          },
          "chartVisible": true,
          "configured": true,
          "name": "Service health",
          "tileType": "SERVICES"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "name": "Network status",
          "tileType": "NETWORK_MEDIUM"
        },
        {
          "bounds": {
            "height": 152,
            "left": 950,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "name": "Smartscape",
          "tileType": "PURE_MODEL"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS"
        },
        {
          "bounds": {
            "height": 228,
            "left": 0,
            "top": 532,
            "width": 1900
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(iis.total.method.requests.count:filter(and(or(eq(loadbalancer,Region1)),or(eq(\"host.name\",\"2217pvwa0469p01.voestalpine.root.local\")))):splitBy(loadbalancer,\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names,(iis.total.method.requests.count:filter(and(or(eq(loadbalancer,Region2)),or(eq(\"host.name\",\"2217pvwa0469p02.voestalpine.root.local\")))):splitBy(loadbalancer,\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Load Distribution",
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
                        "value": "2217pvwa0469p01.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  },
                  {
                    "criteria": [
                      {
                        "evaluator": "EQ",
                        "value": "Region1"
                      }
                    ],
                    "filter": "loadbalancer",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "A",
              "metric": "iis.total.method.requests.count",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "loadbalancer",
                "dt.entity.host"
              ],
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
                        "evaluator": "EQ",
                        "value": "2217pvwa0469p02.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  },
                  {
                    "criteria": [
                      {
                        "evaluator": "EQ",
                        "value": "Region2"
                      }
                    ],
                    "filter": "loadbalancer",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "B",
              "metric": "iis.total.method.requests.count",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "loadbalancer",
                "dt.entity.host"
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
                  "displayName": "",
                  "max": "AUTO",
                  "min": "0",
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
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "TURQUOISE",
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
        },
        {
          "bounds": {
            "height": 228,
            "left": 0,
            "top": 760,
            "width": 950
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(iis.W3SVC_WebService.CurrentAnonymousUsers:filter(and(or(eq(\"host.name\",\"2217pvwa0469p01.voestalpine.root.local\")))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(iis.W3SVC_WebService.CurrentNonAnonymousUsers:filter(and(or(eq(\"host.name\",\"2217pvwa0469p01.voestalpine.root.local\")))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Current Users 2217pvwa0469p01",
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
                        "value": "2217pvwa0469p01.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "iis.W3SVC_WebService.CurrentAnonymousUsers",
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
                        "evaluator": "EQ",
                        "value": "2217pvwa0469p01.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "B",
              "limit": 20,
              "metric": "iis.W3SVC_WebService.CurrentNonAnonymousUsers",
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
                  "min": "0",
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
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
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
            "height": 228,
            "left": 950,
            "top": 760,
            "width": 950
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(iis.W3SVC_WebService.CurrentAnonymousUsers:filter(and(or(eq(\"host.name\",\"2217pvwa0469p02.voestalpine.root.local\")))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names,(iis.W3SVC_WebService.CurrentNonAnonymousUsers:filter(and(or(eq(\"host.name\",\"2217pvwa0469p02.voestalpine.root.local\")))):splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Current Users 2217pvwa0469p02",
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
                        "value": "2217pvwa0469p02.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "iis.W3SVC_WebService.CurrentAnonymousUsers",
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
                        "evaluator": "EQ",
                        "value": "2217pvwa0469p02.voestalpine.root.local"
                      }
                    ],
                    "filter": "host.name",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "B",
              "limit": 20,
              "metric": "iis.W3SVC_WebService.CurrentNonAnonymousUsers",
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
                  "min": "0",
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
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
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
            "height": 190,
            "left": 0,
            "top": 988,
            "width": 1900
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(pam.disconnects:splitBy(\"host.name\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "User Disconnects",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "pam.disconnects",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "host.name"
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
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.PAM_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "PAM_Overview_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.PAM_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
    permission {
      type  = "USER"
      id    = "robert.traxler@voestalpine.com"
      level = "EDIT"
    }
  }
}


resource "dynatrace_json_dashboard_base" "PAM_Overview_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
