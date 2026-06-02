resource "dynatrace_json_dashboard" "xECM_P-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "APPLICATION_TAG_KEY:https://ecm-steel.voestalpine.net"
          ]
        },
        "name": "xECM P - Folder Change Requests",
        "owner": "Dietmar.Wallner@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 38,
            "top": 684,
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
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-0E3B43C5C90079BA"
          ],
          "bounds": {
            "height": 304,
            "left": 38,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "name": "Key user action",
          "tileType": "DEM_KEY_USER_ACTION"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A"
          ],
          "bounds": {
            "height": 304,
            "left": 38,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "name": "User behavior",
          "tileType": "SESSION_METRICS"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P-Folder_Change_Requests_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
