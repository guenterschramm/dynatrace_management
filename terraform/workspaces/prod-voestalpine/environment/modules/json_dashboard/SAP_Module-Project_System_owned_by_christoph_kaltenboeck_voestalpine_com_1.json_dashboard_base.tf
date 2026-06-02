resource "dynatrace_json_dashboard" "SAP_Module-Project_System_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Module - Project System",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 38,
            "width": 418
          },
          "configured": true,
          "customName": "Average Response Time",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Project System\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 380,
            "left": 418,
            "top": 38,
            "width": 494
          },
          "configured": true,
          "customName": "Transaction Code Counts",
          "name": "DTAQL",
          "query": "select useraction.name as [Top T-Codes], usersession.userActionCount as [Action Count] FROM useraction where useraction.name STARTSWITH \"Project System\" GROUP BY useraction.name, usersession.userActionCount order by usersession.userActionCount DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 380,
            "left": 912,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "customName": "Top Transaction Code Users",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], usersession.userActionCount as [User Action Count] from useraction where useraction.name LIKE \"*Project System*\" GROUP BY usersession.userId, usersession.userActionCount ORDER BY usersession.userActionCount DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 418
          },
          "configured": true,
          "name": "Performance",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 418,
            "top": 0,
            "width": 494
          },
          "configured": true,
          "name": "Top SAP Transaction Codes",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 0,
            "width": 266
          },
          "configured": true,
          "name": "Top Users",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 494,
            "left": 0,
            "top": 228,
            "width": 418
          },
          "configured": true,
          "customName": "Slowest Transaction Codes",
          "name": "DTAQL",
          "query": "select useraction.name as [Transaction Code], useraction.duration as [Response Time] from useraction where useraction.name LIKE \"*Project System*\" GROUP BY useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1444,
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
            "height": 380,
            "left": 1178,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Impacted Users \u003e 10 seconds",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], useraction.name as [User Action], useraction.duration as [T-code Duration] from useraction where useraction.name LIKE \"*Project System*\" and useraction.duration \u003e 10000 GROUP BY usersession.userId, useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1178,
            "top": 0,
            "width": 266
          },
          "configured": true,
          "name": "Impacted Users",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 266,
            "left": 418,
            "top": 456,
            "width": 1064
          },
          "configured": true,
          "customName": "Average Response Time",
          "name": "DTAQL",
          "query": "select  startTime as [Time], useraction.duration as [Average Response Time], usersession.userActionCount FROM useraction where useraction.name STARTSWITH \"Project System\"",
          "tileType": "DTAQL",
          "type": "LINE_CHART",
          "visualizationConfig": {
            "hasAxisBucketing": true
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 418,
            "top": 418,
            "width": 1064
          },
          "configured": true,
          "name": "Trend - Action Count versus Response Time",
          "tileType": "HEADER"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Module-Project_System_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Module-Project_System_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Module-Project_System_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Module-Project_System_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
