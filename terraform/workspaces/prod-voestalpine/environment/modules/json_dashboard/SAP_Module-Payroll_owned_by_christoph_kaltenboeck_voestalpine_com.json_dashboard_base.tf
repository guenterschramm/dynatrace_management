resource "dynatrace_json_dashboard" "SAP_Module-Payroll_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Module - Payroll",
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
            "left": 380,
            "top": 38,
            "width": 342
          },
          "configured": true,
          "customName": "Top Transaction Code Users",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], usersession.userActionCount as [User Action Count] from useraction where useraction.name LIKE \"*Payroll*\" GROUP BY usersession.userId, usersession.userActionCount ORDER BY usersession.userActionCount DESC",
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
            "width": 646
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
            "height": 456,
            "left": 0,
            "top": 646,
            "width": 722
          },
          "configured": true,
          "customName": "Slowest Transaction Codes",
          "name": "DTAQL",
          "query": "select useraction.name as [Transaction Code], useraction.duration as [Response Time] from useraction where useraction.name LIKE \"*Payroll*\" GROUP BY useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1254,
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
            "width": 646
          },
          "configured": true,
          "customName": "Impacted Users \u003e 10 seconds",
          "name": "DTAQL",
          "query": "select usersession.userId as [User ID], useraction.name as [User Action], useraction.duration as [T-code Duration] from useraction where useraction.name LIKE \"*Payroll*\" and useraction.duration \u003e 10000 GROUP BY usersession.userId, useraction.name, useraction.duration ORDER BY useraction.duration DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 760,
            "top": 0,
            "width": 494
          },
          "configured": true,
          "name": "Impacted Users",
          "tileType": "HEADER"
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
        },
        {
          "bounds": {
            "height": 228,
            "left": 0,
            "top": 38,
            "width": 342
          },
          "configured": true,
          "customName": "Average Response Time",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name LIKE \"*Payroll*\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
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
          "limit": 50,
          "name": "DTAQL",
          "query": "select  startTime as [Time], useraction.duration as [Average Response Time], usersession.userActionCount FROM useraction where useraction.name LIKE \"*Payroll*\"",
          "tileType": "DTAQL",
          "type": "LINE_CHART",
          "visualizationConfig": {
            "hasAxisBucketing": true
          }
        },
        {
          "bounds": {
            "height": 456,
            "left": 760,
            "top": 646,
            "width": 646
          },
          "configured": true,
          "customName": "Transaction Code Counts",
          "limit": 50,
          "name": "DTAQL",
          "query": "select useraction.name as [Top T-Codes], usersession.userActionCount as [Action Count] FROM useraction where useraction.name LIKE \"*Payroll*\" GROUP BY useraction.name, usersession.userActionCount order by usersession.userActionCount DESC",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "TABLE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Module-Payroll_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Module-Payroll_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Module-Payroll_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Module-Payroll_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
