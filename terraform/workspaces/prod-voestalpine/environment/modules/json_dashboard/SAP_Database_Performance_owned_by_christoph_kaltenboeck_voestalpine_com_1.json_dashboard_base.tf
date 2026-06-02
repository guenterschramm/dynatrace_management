resource "dynatrace_json_dashboard" "SAP_Database_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Database Performance",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 228,
            "left": 0,
            "top": 38,
            "width": 418
          },
          "configured": true,
          "customName": "Database time/Response time ratio",
          "name": "Database time/Response time ratio",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "ext:tech.SAP.dbtimeratio:splitBy(\"dt.entity.custom_device\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
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
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 1026,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "## [⇦](#dashboard;id=bbbbbbbb-a001-a008-0000-000000000001)\n![BackButton]()",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 228,
            "left": 418,
            "top": 38,
            "width": 646
          },
          "configured": true,
          "customName": "Database Task Volumes",
          "name": "Database Task Volumes",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "ext:tech.SAP.Task.dbcalls",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device",
                "tasktype"
              ]
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
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 266,
            "width": 1064
          },
          "configured": true,
          "customName": "Database Task Time",
          "name": "Database Task Time",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "ext:tech.SAP.Task.dbtime",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.custom_device",
                "tasktype"
              ]
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
            "rules": [
              {
                "matcher": "A:",
                "properties": {
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
            "top": 0,
            "width": 1026
          },
          "configured": true,
          "name": "Response Time Ratio, Volumes \u0026 Task Times",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Database_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Database_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Database_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Database_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
