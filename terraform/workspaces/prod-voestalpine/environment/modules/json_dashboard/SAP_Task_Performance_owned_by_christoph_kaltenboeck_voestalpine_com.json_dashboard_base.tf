resource "dynatrace_json_dashboard" "SAP_Task_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Task Performance",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 38,
            "width": 988
          },
          "configured": true,
          "customName": "CPU Time by Task",
          "name": "CPU Time by Task",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "ext:tech.SAP.Task.cputime",
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
                  "seriesType": "STACKED_COLUMN"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 342,
            "width": 988
          },
          "configured": true,
          "customName": "Load + generation Time(avg) by Task",
          "name": "Load + generation Time(avg) by Task",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "ext:tech.SAP.Task.loadgentime",
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
                  "seriesType": "STACKED_COLUMN"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
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
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 950
          },
          "configured": true,
          "name": "Tasks by CPU Time \u0026 Load + Generation Time",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Task_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Task_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Task_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Task_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
