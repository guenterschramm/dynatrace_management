resource "dynatrace_json_dashboard" "xECM_Q-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - Folder Change Requests",
        "owner": "Dietmar.Wallner@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 38,
            "top": 342,
            "width": 950
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.response.time:splitBy(\"dt.entity.service_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Median response time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.response.time",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "dt.entity.service_method"
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
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ffe11c",
                    "name": "/OTCS/llisapi.dll - search"
                  },
                  {
                    "color": "#c41425",
                    "name": "/OTCS/llisapi.dll - ll - browse"
                  },
                  {
                    "color": "#debbf3",
                    "name": "/OTCS/llisapi.dll/open/\u003cid\u003e"
                  },
                  {
                    "color": "#74dee6",
                    "name": "/OTCS/llisapi.dll - srch.SearchCache"
                  }
                ],
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
            "height": 342,
            "left": 38,
            "top": 0,
            "width": 950
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.response.time:filter(and(or(in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll/open/\u003cid\u003e~\")\")),in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll - ll - browse~\")\")),in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll/api/v2/nodes/\u003cid\u003e~\")\"))))):splitBy(\"dt.entity.service_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Folder Change - Median response time",
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
                        "value": "/OTCS/llisapi.dll/open/\u003cid\u003e"
                      },
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "/OTCS/llisapi.dll - ll - browse"
                      },
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "/OTCS/llisapi.dll/api/v2/nodes/\u003cid\u003e"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.service_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.response.time",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "dt.entity.service_method"
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
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ffe11c",
                    "name": "Select series"
                  },
                  {
                    "color": "#1f7e1e",
                    "name": "/OTCS/llisapi.dll - ll - browse"
                  },
                  {
                    "color": "#74dee6",
                    "name": "Select series"
                  }
                ],
                "unitTransform": "Second",
                "valueFormat": "0,0"
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
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_Q-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
