resource "dynatrace_json_dashboard" "SAP_Module-Sales_and_Distribution_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Module - Sales and Distribution",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "preset": true,
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
            "width": 342
          },
          "configured": true,
          "customName": "Average Response Time",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Sales and Distribution\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 570,
            "left": 760,
            "top": 646,
            "width": 684
          },
          "configured": true,
          "customName": "Transaction Code Counts",
          "name": "DTAQL",
          "query": "select useraction.name as [Top T-Codes], usersession.userActionCount as [Action Count] FROM useraction where useraction.name STARTSWITH \"Sales and Distribution\" GROUP BY useraction.name, usersession.userActionCount order by usersession.userActionCount DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 228,
            "left": 380,
            "top": 38,
            "width": 342
          },
          "configured": true,
          "customName": "Top Transaction Code Users",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], usersession.userActionCount as [User Action Count] from useraction where useraction.name LIKE \"*Sales and Distribution*\" GROUP BY usersession.userId, usersession.userActionCount ORDER BY usersession.userActionCount DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 342
          },
          "configured": true,
          "name": "Performance",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 760,
            "top": 608,
            "width": 684
          },
          "configured": true,
          "name": "Top SAP Transaction Codes",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 380,
            "top": 0,
            "width": 342
          },
          "configured": true,
          "name": "Top Users",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 570,
            "left": 0,
            "top": 646,
            "width": 722
          },
          "configured": true,
          "customName": "Slowest Transaction Codes",
          "name": "DTAQL",
          "query": "select useraction.name as [Transaction Code], useraction.duration as [Response Time] from useraction where useraction.name LIKE \"*Sales and Distribution*\" GROUP BY useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1292,
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
            "height": 570,
            "left": 760,
            "top": 38,
            "width": 684
          },
          "configured": true,
          "customName": "Impacted Users \u003e 10 seconds",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], useraction.name as [User Action], useraction.duration as [T-code Duration] from useraction where useraction.name LIKE \"*Sales and Distribution*\" and useraction.duration \u003e 10000 GROUP BY usersession.userId, useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 760,
            "top": 0,
            "width": 532
          },
          "configured": true,
          "name": "Impacted Users",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 266,
            "left": 0,
            "top": 342,
            "width": 722
          },
          "configured": true,
          "customName": "Average Response Time",
          "name": "DTAQL",
          "query": "select  startTime as [Time], useraction.duration as [Average Response Time], usersession.userActionCount FROM useraction where useraction.name STARTSWITH \"Sales and Distribution\"",
          "tileType": "DTAQL",
          "type": "LINE_CHART",
          "visualizationConfig": {
            "hasAxisBucketing": true
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 304,
            "width": 722
          },
          "configured": true,
          "name": "Trend - Action Count versus Response Time",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Module-Sales_and_Distribution_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Module-Sales_and_Distribution_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Module-Sales_and_Distribution_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  preset       = true
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Module-Sales_and_Distribution_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
