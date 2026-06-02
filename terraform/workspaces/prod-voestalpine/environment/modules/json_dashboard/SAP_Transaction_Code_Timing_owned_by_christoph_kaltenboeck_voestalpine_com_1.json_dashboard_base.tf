resource "dynatrace_json_dashboard" "SAP_Transaction_Code_Timing_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Transaction Code Timing",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
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
            "height": 304,
            "left": 0,
            "top": 380,
            "width": 988
          },
          "configured": true,
          "customName": "Longest Running Transaction Codes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select name as[Transaction Code Name], duration as [Execution Time] from useraction ORDER BY duration DESC",
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
          "customName": "Longest Running Transaction Codes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select name as[Transaction Code], avg(duration) as[AVG], min(duration) as[MIN], max(duration) as [MAX] from useraction GROUP BY name ORDER BY max(duration) DESC",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 950
          },
          "configured": true,
          "name": "Timings",
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
          "name": "Longest Execution Times     \u003cClick table for user actions analysis\u003e",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Transaction_Code_Timing_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Transaction_Code_Timing_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Transaction_Code_Timing_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Transaction_Code_Timing_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
