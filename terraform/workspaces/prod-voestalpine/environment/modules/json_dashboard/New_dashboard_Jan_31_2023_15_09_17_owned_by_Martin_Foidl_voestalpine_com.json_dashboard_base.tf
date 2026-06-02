resource "dynatrace_json_dashboard" "New_dashboard_Jan_31_2023_15_09_17_owned_by_Martin_Foidl_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "New dashboard (Jan 31, 2023 15:09:17)",
        "owner": "Martin.Foidl@voestalpine.com"
      },
      "tiles": [
        {
          "configured": true,
          "customName": "Connections",
          "metricExpressions": [
            "resolution=null\u0026(com.dynatrace.extension.f5.bigip.virtualserver.stat.tot.requests.count:filter(eq(\"dt.entity.f5:virtualserver\",CUSTOM_DEVICE-F3FEFF1A53465A8E)):splitBy(\"dt.entity.f5:virtualserver\")):limit(100):names,(com.dynatrace.extension.f5.bigip.virtualserver.stat.client.tot.conns.count:filter(eq(\"dt.entity.f5:virtualserver\",CUSTOM_DEVICE-F3FEFF1A53465A8E)):splitBy(\"dt.entity.f5:virtualserver\")):limit(100):names"
          ],
          "name": "Connections",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "com.dynatrace.extension.f5.bigip.virtualserver.stat.tot.requests.count:filter(eq(\"dt.entity.f5:virtualserver\",CUSTOM_DEVICE-F3FEFF1A53465A8E)):splitBy(\"dt.entity.f5:virtualserver\")",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "com.dynatrace.extension.f5.bigip.virtualserver.stat.client.tot.conns.count:filter(eq(\"dt.entity.f5:virtualserver\",CUSTOM_DEVICE-F3FEFF1A53465A8E)):splitBy(\"dt.entity.f5:virtualserver\")",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "PURPLE",
                  "seriesType": "LINE"
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "color": "BLUE",
                  "seriesType": "AREA"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.New_dashboard_Jan_31_2023_15_09_17_owned_by_Martin_Foidl_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "New_dashboard_Jan_31_2023_15_09_17_owned_by_Martin_Foidl_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.New_dashboard_Jan_31_2023_15_09_17_owned_by_Martin_Foidl_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "New_dashboard_Jan_31_2023_15_09_17_owned_by_Martin_Foidl_voestalpine_com" {
  # contents = ""
}
