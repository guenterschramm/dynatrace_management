resource "dynatrace_json_dashboard" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP Functional Area Performance",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "customName": "Financial Accounting",
          "name": "DTAQL",
          "query": "select avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Financial Accounting\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 418,
            "width": 304
          },
          "configured": true,
          "customName": "Materials Management",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Materials Management\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "customName": "Human Resources",
          "name": "DTAQL",
          "query": "select avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Human Resources\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 912,
            "top": 418,
            "width": 304
          },
          "configured": true,
          "customName": "Sales \u0026 Distribution",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Sales and Distribution\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Cross Application Basis Components",
          "name": "DTAQL",
          "query": "select avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Cross Application Basis Components\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 418,
            "width": 304
          },
          "configured": true,
          "customName": "Project System",
          "name": "DTAQL",
          "query": "select avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Project System\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 1178
          },
          "configured": true,
          "name": "Functional Areas",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Controlling",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Controlling\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Customer Relationship Management",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Customer Relationship Management\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 912,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Enterprise Controlling",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Enterprise Controlling\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "customName": "Financials",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Financials\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 912,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "customName": "Logistics Execution",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Logistics Execution\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 418,
            "width": 304
          },
          "configured": true,
          "customName": "Payroll",
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"Payroll\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 190,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0002-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 380,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0010-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0013-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 190,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0015-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 380,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0017-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0019-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 190,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0021-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 190,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0023-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0025-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 380,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0027-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 380,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0029-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=bbbbbbbb-a001-a008-0031-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1178,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "## [⇦](#dashboard;id=bbbbbbbb-a001-a008-0000-000000000001)\n![BackButton]()",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com_1" {
  # contents = ""
}
