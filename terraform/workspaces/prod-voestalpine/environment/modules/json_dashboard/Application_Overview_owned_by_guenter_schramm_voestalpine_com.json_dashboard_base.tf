resource "dynatrace_json_dashboard" "Application_Overview_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "Application Overview",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true
      },
      "tiles": [
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 38,
            "width": 570
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 456,
            "width": 570
          },
          "chartVisible": true,
          "configured": true,
          "name": "Host health",
          "tileType": "HOSTS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1178,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "name": "VMware",
          "tileType": "VIRTUALIZATION"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1178,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "name": "AWS",
          "tileType": "AWS"
        },
        {
          "assignedEntities": [
            "GEOLOCATION-0000000000000000",
            "WORLD"
          ],
          "bounds": {
            "height": 380,
            "left": 608,
            "top": 38,
            "width": 532
          },
          "configured": true,
          "metric": "APDEX",
          "name": "World map",
          "tileType": "APPLICATION_WORLDMAP"
        },
        {
          "bounds": {
            "height": 380,
            "left": 608,
            "top": 456,
            "width": 532
          },
          "chartVisible": true,
          "configured": true,
          "name": "Service health",
          "tileType": "SERVICES"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1178,
            "top": 456,
            "width": 304
          },
          "configured": true,
          "name": "Network status",
          "tileType": "NETWORK_MEDIUM"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1178,
            "top": 646,
            "width": 304
          },
          "configured": true,
          "name": "Smartscape",
          "tileType": "PURE_MODEL"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 874,
            "width": 532
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 874,
            "width": 266
          },
          "configured": true,
          "customName": "SQL Server",
          "metricExpressions": [
            "resolution=Inf\u0026(sql-server.general.userConnections:splitBy(\"dt.entity.sql:sql_server_instance\"):auto:splitBy():count):limit(100):names"
          ],
          "name": "SQL Server",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "sql-server.general.userConnections:splitBy(\"dt.entity.sql:sql_server_instance\"):auto:splitBy():count",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
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
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 874,
            "width": 266
          },
          "configured": true,
          "customName": "SQL Server",
          "metricExpressions": [
            "resolution=Inf\u0026(sql-server.databases.transactions.count:splitBy(\"dt.entity.sql:sql_server_database\"):auto:splitBy():count):limit(100):names"
          ],
          "name": "SQL Databases",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "sql-server.databases.transactions.count:splitBy(\"dt.entity.sql:sql_server_database\"):auto:splitBy():count",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
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
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Application_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "Application_Overview_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.Application_Overview_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "USER"
      id    = "dietmar.wallner@voestalpine.com"
      level = "VIEW"
    }
    permission {
      type  = "USER"
      id    = "robert.traxler@voestalpine.com"
      level = "VIEW"
    }
    permission {
      type  = "USER"
      id    = "alexander.koeck@voestalpine.com"
      level = "EDIT"
    }
    permission {
      type  = "USER"
      id    = "christoph.kaltenboeck@voestalpine.com"
      level = "EDIT"
    }
  }
}


resource "dynatrace_json_dashboard_base" "Application_Overview_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
