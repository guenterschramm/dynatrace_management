resource "dynatrace_json_dashboard" "SAP_Audit_Trail_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Audit Trail",
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
            "left": 0,
            "top": 0,
            "width": 418
          },
          "configured": true,
          "name": "Created Events",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 418,
            "top": 0,
            "width": 418
          },
          "configured": true,
          "name": "Display Events",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 836,
            "top": 0,
            "width": 380
          },
          "configured": true,
          "name": "Change Events",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1216,
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
            "top": 190,
            "width": 418
          },
          "configured": true,
          "customName": "Create Transaction Codes (Top 5)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select top(name, 5) as [Transaction Code], Count(name) as [Count] from useraction where name like \"*Create*\" GROUP BY name",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 304,
            "left": 418,
            "top": 190,
            "width": 418
          },
          "configured": true,
          "customName": "Display Transaction Codes (Top 5)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select top(name, 5) as [Transaction Code], Count(name) as [Count] from useraction where name like \"*Display*\" GROUP BY name",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 190,
            "width": 418
          },
          "configured": true,
          "customName": "Change Transaction Codes (Top 5)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select top(name, 5) as [Transaction Code], Count(name) as [Count] from useraction where name like \"*Change*\" GROUP BY name",
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 38,
            "width": 418
          },
          "configured": true,
          "customName": "Create Transaction Codes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select count(name) as [Count] from useraction where name like \"*Create*\" ",
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 418,
            "top": 38,
            "width": 418
          },
          "configured": true,
          "customName": "Display Transaction Codes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select count(name) as [Count] from useraction where name like \"*Display*\"",
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 836,
            "top": 38,
            "width": 418
          },
          "configured": true,
          "customName": "Change Transaction Codes",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "select count(name) as [Count] from useraction where name like \"*Change*\"",
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 494,
            "width": 1254
          },
          "configured": true,
          "name": "Event Trending",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 532,
            "width": 1254
          },
          "configured": true,
          "customName": "User sessions query results",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT DISTINCT DATETIME(starttime, 'HH:mm', '5m'), count(useraction.name) FROM usersession where useraction.name like \"*Create*\" or useraction.name like \"*Display*\" or useraction.name like \"*Change*\"",
          "tileType": "DTAQL",
          "type": "LINE_CHART",
          "visualizationConfig": {
            "hasAxisBucketing": true
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Audit_Trail_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Audit_Trail_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Audit_Trail_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Audit_Trail_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
