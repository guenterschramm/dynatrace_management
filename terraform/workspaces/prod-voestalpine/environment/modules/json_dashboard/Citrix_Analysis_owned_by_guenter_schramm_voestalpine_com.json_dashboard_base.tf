resource "dynatrace_json_dashboard" "Citrix_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "CUSTOM_DIMENSION:Host"
          ]
        },
        "name": "Citrix Analysis",
        "owner": "guenter.schramm@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 0,
            "width": 988
          },
          "configured": true,
          "customName": "Stacked area",
          "metricExpressions": [
            "resolution=null\u0026(builtin:host.cpu.idle:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:host.cpu.user:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:host.cpu.system:splitBy():avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.cpu.idle",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "limit": 20,
              "metric": "builtin:host.cpu.user",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AVG",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "limit": 20,
              "metric": "builtin:host.cpu.system",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AVG",
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
                  "max": "100",
                  "min": "0",
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
                  "alias": "CPU idle",
                  "color": "GRAY",
                  "seriesType": "STACKED_AREA"
                },
                "seriesOverrides": [
                  {
                    "color": "#6d6d6d",
                    "name": "CPU idle"
                  }
                ],
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "ROYALBLUE",
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "C:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_AREA"
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
            "type": "STACKED_AREA"
          }
        },
        {
          "bounds": {
            "height": 570,
            "left": 0,
            "top": 380,
            "width": 1406
          },
          "configured": true,
          "customName": "User sessions query results",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT usersession.userId, name, duration, usersession.userExperienceScore FROM useraction WHERE usersession.userExperienceScore IN (\"FRUSTRATED\", \"TOLERATED\")",
          "tileType": "DTAQL",
          "type": "TABLE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Citrix_Analysis_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "Citrix_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.Citrix_Analysis_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "Citrix_Analysis_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
