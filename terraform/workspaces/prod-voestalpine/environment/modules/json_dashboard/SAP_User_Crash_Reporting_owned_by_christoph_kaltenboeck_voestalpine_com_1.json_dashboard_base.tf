resource "dynatrace_json_dashboard" "SAP_User_Crash_Reporting_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP User Crash Reporting",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 380,
            "width": 988
          },
          "configured": true,
          "customName": "User Crashes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select * from usererror where type =\"Crash\"",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 38,
            "width": 988
          },
          "configured": true,
          "customName": "User Crashes Over Time",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT count(type) as [Crashes], startTime as [Time] FROM usererror where type=\"Crash\" GROUP BY type, startTime",
          "tileType": "DTAQL",
          "type": "LINE_CHART",
          "visualizationConfig": {
            "hasAxisBucketing": true
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
          "name": "Crash Trending",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 342,
            "width": 988
          },
          "configured": true,
          "name": "Crash Details - Click on graph to drilldown",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_User_Crash_Reporting_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_User_Crash_Reporting_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_User_Crash_Reporting_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_User_Crash_Reporting_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
