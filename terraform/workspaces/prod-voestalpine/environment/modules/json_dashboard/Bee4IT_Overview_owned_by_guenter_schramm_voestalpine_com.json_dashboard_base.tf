resource "dynatrace_json_dashboard" "Bee4IT_Overview_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "managementZone": {
            "id": "803242235667889460",
            "name": "Bee4IT"
          },
          "timeframe": "-30d to now"
        },
        "name": "Bee4IT Overview",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 342,
            "width": 988
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:host.mem.total:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),entityName.equals(~\"2217asbee4it01.voestalpine.root.local~\")\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names,(builtin:host.mem.used:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),entityName.equals(~\"2217asbee4it01.voestalpine.root.local~\")\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Server Memory",
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
                        "value": "2217asbee4it01.voestalpine.root.local"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "B",
              "limit": 20,
              "metric": "builtin:host.mem.total",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
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
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "2217asbee4it01.voestalpine.root.local"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.mem.used",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
                "matcher": "B:",
                "properties": {
                  "color": "RED",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
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
            "height": 304,
            "left": 912,
            "top": 0,
            "width": 988
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(sql-server.general.userConnections:filter(and(or(eq(instance,BEE4ITP)))):splitBy(instance):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Connections",
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
                        "value": "BEE4ITP"
                      }
                    ],
                    "filter": "instance",
                    "filterOperator": "OR",
                    "filterType": "DIMENSION"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "sql-server.general.userConnections",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "instance"
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
                  "color": "GREEN",
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
            "height": 304,
            "left": 608,
            "top": 342,
            "width": 304
          },
          "chartVisible": true,
          "configured": true,
          "name": "Database health",
          "tileType": "DATABASES_OVERVIEW"
        },
        {
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 342,
            "width": 304
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
            "height": 304,
            "left": 304,
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
            "height": 304,
            "left": 0,
            "top": 0,
            "width": 304
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "assignedEntities": [
            "APPLICATION-EA92380C21E9BC8E"
          ],
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Key user action overview",
          "tileType": "UEM_KEY_USER_ACTIONS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 342,
            "width": 152
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 494,
            "width": 304
          },
          "configured": true,
          "name": "Smartscape",
          "tileType": "PURE_MODEL"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Bee4IT_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "Bee4IT_Overview_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.Bee4IT_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "GROUP"
      id    = "a6288044-480d-474f-8052-8e8507c83b3a"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "Bee4IT_Overview_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
