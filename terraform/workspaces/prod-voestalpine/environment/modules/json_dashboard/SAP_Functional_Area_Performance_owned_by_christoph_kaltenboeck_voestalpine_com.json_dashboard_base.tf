resource "dynatrace_json_dashboard" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
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
            "height": 190,
            "left": 0,
            "top": 266,
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
            "height": 190,
            "left": 0,
            "top": 494,
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
            "height": 190,
            "left": 608,
            "top": 266,
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
            "height": 190,
            "left": 912,
            "top": 494,
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
            "height": 190,
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
            "height": 190,
            "left": 608,
            "top": 494,
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
          "name": "Standard Functional Areas",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 190,
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
            "height": 190,
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
            "height": 190,
            "left": 304,
            "top": 266,
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
            "height": 190,
            "left": 912,
            "top": 266,
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
            "height": 38,
            "left": 38,
            "top": 228,
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
            "top": 456,
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
            "top": 684,
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
            "top": 228,
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
            "top": 456,
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
            "top": 684,
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
            "top": 228,
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
            "top": 228,
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
            "top": 684,
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
            "top": 456,
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
            "top": 456,
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
            "top": 684,
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
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 1026,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=8e418e59-52d8-469c-8429-1dabb568c859)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 798,
            "width": 1216
          },
          "configured": true,
          "name": "Custom Functional Areas",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 836,
            "width": 304
          },
          "configured": true,
          "customName": "ZIAM",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZIAM\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 1026,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=01ff6e10-04d3-4a32-b2f4-8ce5de29eb0f)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 1026,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=363876c5-92e4-4b76-8af1-3904d9746c7f)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1026,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=1acff146-a4e7-438f-b494-a356dd618bc5)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 836,
            "width": 304
          },
          "configured": true,
          "customName": "ZIPO",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZIPO\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 608,
            "top": 836,
            "width": 304
          },
          "configured": true,
          "customName": "ZCTR",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZCTR\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 836,
            "width": 304
          },
          "configured": true,
          "customName": "ZSE16N",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZSE16N\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=86275364-0486-4a4d-946b-cf3134f00800)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=d3976a0f-3f4e-44d3-a001-593ccef04363)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=146b4200-149a-45ae-b1c3-8da442daebc5)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=b916f976-8d1e-4571-a912-f0e8bdf47805)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 1064,
            "width": 304
          },
          "configured": true,
          "customName": "ZTLM",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZTLM\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 608,
            "top": 1064,
            "width": 304
          },
          "configured": true,
          "customName": "ZFTA",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZFTA\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=ae20d13e-2046-4814-a31c-b24269626c9f)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=a688edbb-aa1a-4628-8693-ad72efe23271)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=d77833d8-ff4c-4ef8-a600-0d517c01f001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 1710,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=5d75f7ef-59e8-4e31-99af-e968913d1eae)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 1710,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=1f59427c-6d1e-46ed-96af-b8aed7ec16b8)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 1710,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=06ae3fef-fde9-4bd5-b597-d7b3ec946e75)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1710,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=50c15068-d182-4ae5-9d1d-6dd977f50471)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 1938,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=ff8d031d-950a-4f22-a536-3b8b5fe5215f)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 342,
            "top": 1938,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=83f22e3e-8af4-4569-9a7b-f61456aae57f)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 646,
            "top": 1938,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=74d70239-409b-49a6-9870-27e2228ab2e9)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1938,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=959628a7-621c-411f-a87d-0802dc6e8fab)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 38,
            "top": 2166,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=a8567013-5f15-439b-871f-34e45ddcb304)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "markdown": "Module Overview - \n[**Click Here**](#dashboard;id=2d016b96-dbef-4c33-953d-03aa3cfeca71)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 190,
            "left": 608,
            "top": 1748,
            "width": 304
          },
          "configured": true,
          "customName": "ZF_KF",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZF_KF\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 1064,
            "width": 304
          },
          "configured": true,
          "customName": "ZPLK",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZPLK\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 1292,
            "width": 304
          },
          "configured": true,
          "customName": "ZPQF",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZPQF\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 1292,
            "width": 304
          },
          "configured": true,
          "customName": "ZCPP",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZCPP\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 608,
            "top": 1292,
            "width": 304
          },
          "configured": true,
          "customName": "ZPQS",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZPQS\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "ZTLI",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZTLI\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "ZEKF",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZEKF\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 608,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "ZFF",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZFF\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "customName": "ZBDE",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZBDE\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 1748,
            "width": 304
          },
          "configured": true,
          "customName": "ZFIN",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZFIN\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 1748,
            "width": 304
          },
          "configured": true,
          "customName": "ZIRM",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZIRM\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 1748,
            "width": 304
          },
          "configured": true,
          "customName": "ZJCAT2",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZJCAT2\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 1976,
            "width": 304
          },
          "configured": true,
          "customName": "ZZRO",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZZRO\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 1292,
            "width": 304
          },
          "configured": true,
          "customName": "ZVTR",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZVTR\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 494,
            "width": 304
          },
          "configured": true,
          "customName": "Payroll",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name LIKE \"*Payroll*\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Enterprise Controlling",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name LIKE \"*Enterprise Controlling*\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 304,
            "top": 1064,
            "width": 304
          },
          "configured": true,
          "customName": "ZKDS",
          "limit": 50,
          "name": "DTAQL",
          "query": "select  avg(useraction.duration) as [Average Response Time] FROM useraction where useraction.name STARTSWITH \"ZKDS\"",
          "tileType": "DTAQL",
          "timeFrameShift": "-2h",
          "type": "SINGLE_VALUE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_Functional_Area_Performance_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
