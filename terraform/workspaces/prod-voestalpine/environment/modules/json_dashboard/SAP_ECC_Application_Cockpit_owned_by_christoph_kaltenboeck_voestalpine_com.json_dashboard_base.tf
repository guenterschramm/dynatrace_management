resource "dynatrace_json_dashboard" "SAP_ECC_Application_Cockpit_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "SAP ECC Application Cockpit",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "SAP ECC",
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 190,
            "width": 152
          },
          "chartVisible": true,
          "configured": true,
          "name": "Application health",
          "tileType": "APPLICATIONS"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "name": "Live user activity",
          "tileType": "UEM_ACTIVE_SESSIONS"
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 342,
            "width": 456
          },
          "configured": true,
          "customName": "Availability",
          "name": "Availability",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "ext:tech.SAP.avail",
              "rate": "NONE",
              "spaceAggregation": "AVG"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "PIE_CHART"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 456
          },
          "configured": true,
          "name": "Application Health",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 456,
            "top": 0,
            "width": 608
          },
          "configured": true,
          "name": "Applications",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Performance Links ▼",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Functional Area Performance](#dashboard;id=bbbbbbbb-a001-a008-0001-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 76,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Database Performance](#dashboard;id=bbbbbbbb-a001-a008-0033-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 114,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP User Crashes](#dashboard;id=bbbbbbbb-a001-a008-0035-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 152,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Transaction Code Timing](#dashboard;id=bbbbbbbb-a001-a008-0037-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 190,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Task Performance](#dashboard;id=bbbbbbbb-a001-a008-0039-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 228,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Roll Task Timings](#dashboard;id=bbbbbbbb-a001-a008-0041-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 266,
            "width": 304
          },
          "configured": true,
          "markdown": "[SAP Audit Trail](#dashboard;id=bbbbbbbb-a001-a008-0043-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 456,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.other.apdex.osAndVersion:splitBy(\"dt.entity.device_application\"):avg:sort(value(avg,descending)):limit(10)):limit(100):names"
          ],
          "name": "Apdex",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 10,
              "metric": "builtin:apps.other.apdex.osAndVersion",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.device_application"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
                    "color": "#7dc540",
                    "value": 0.9
                  },
                  {
                    "color": "#f5d30f",
                    "value": 0.75
                  },
                  {
                    "color": "#dc172a",
                    "value": 0
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 760,
            "top": 38,
            "width": 304
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.other.uaDuration.osAndVersion:splitBy(\"dt.entity.device_application\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Response Time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metric": "builtin:apps.other.uaDuration.osAndVersion",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.device_application"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 456,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.other.userCount.osAndGeo:splitBy(\"dt.entity.device_application\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Estimated User Count",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metric": "builtin:apps.other.userCount.osAndGeo",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.device_application"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 760,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:apps.other.sessionCount.osAndGeo:splitBy(\"dt.entity.device_application\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Session Count",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metric": "builtin:apps.other.sessionCount.osAndGeo",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.device_application"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
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
            "type": "TOP_LIST"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.SAP_ECC_Application_Cockpit_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "SAP_ECC_Application_Cockpit_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.SAP_ECC_Application_Cockpit_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  preset       = true
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "SAP_ECC_Application_Cockpit_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
