resource "dynatrace_json_dashboard" "xECM_P-OTCS_Service_key_requests-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "timeframe": "-24h to now"
        },
        "name": "xECM P - OTCS Service key requests-cloned",
        "owner": "Dietmar.Wallner@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 342,
            "left": 836,
            "top": 1786,
            "width": 380
          },
          "configured": true,
          "customName": "Median response time",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.keyRequest.response.time:splitBy(\"dt.entity.service_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Median response time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.response.time",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "dt.entity.service_method"
              ],
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
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "value": 1000000
                  },
                  {
                    "color": "#dc172a",
                    "value": 3000000
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
            "height": 342,
            "left": 0,
            "top": 1748,
            "width": 380
          },
          "configured": true,
          "customName": "Median response time",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.keyRequest.errors.server.count:splitBy(\"dt.entity.service_method\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Failures",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.errors.server.count",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.service_method"
              ],
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
                "displayName": "",
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
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "value": 1
                  },
                  {
                    "color": "#dc172a",
                    "value": 10
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "assignedEntities": [
            "SERVICE_METHOD-59A5ECBBBA8F0FC5",
            "SERVICE-B811EA6C199004CE"
          ],
          "bounds": {
            "height": 228,
            "left": 456,
            "top": 1824,
            "width": 342
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A"
          ],
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Key user action overview",
          "tileType": "UEM_KEY_USER_ACTIONS"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-0E3B43C5C90079BA"
          ],
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Key user action",
          "tileType": "DEM_KEY_USER_ACTION"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-2429F5005EF894DB"
          ],
          "bounds": {
            "height": 304,
            "left": 1520,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "ecm-steel.voestalpine.net",
          "tileType": "DEM_KEY_USER_ACTION"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 684,
            "width": 1824
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.action.count.load.browser:splitBy(\"dt.entity.application_method\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Executions",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.count.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.application_method"
              ],
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
                "queryId": "",
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 988,
            "width": 1824
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.action.domInteractive.load.browser:splitBy():median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests (Folder change) - Median response time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.domInteractive.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
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
            "graphChartSettings": {
              "connectNulls": true
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
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ffe11c",
                    "name": "Select series"
                  },
                  {
                    "color": "#1f7e1e",
                    "name": "Select series"
                  },
                  {
                    "color": "#74dee6",
                    "name": "Select series"
                  }
                ],
                "unitTransform": "Second",
                "valueFormat": "0,0"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 1330,
            "width": 1824
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.action.countOfErrors:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Failures",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.countOfErrors",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
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
            "graphChartSettings": {
              "connectNulls": true
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
                  "color": "RED",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 304,
            "width": 1824
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:apps.web.action.responseEnd.load.browser:splitBy(\"dt.entity.application_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests  (all) - Median response time",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:apps.web.action.responseEnd.load.browser",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "MEDIAN",
              "splitBy": [
                "dt.entity.application_method"
              ],
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
            "graphChartSettings": {
              "connectNulls": true
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
                  "color": "DEFAULT",
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ffe11c",
                    "name": "Select series"
                  },
                  {
                    "color": "#1f7e1e",
                    "name": "Select series"
                  },
                  {
                    "color": "#74dee6",
                    "name": "Select series"
                  }
                ],
                "unitTransform": "Second",
                "valueFormat": "0,0"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
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
            "type": "GRAPH_CHART"
          }
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-503BF5F62FCF0516"
          ],
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "ecm-steel.voestalpine.net",
          "tileType": "DEM_KEY_USER_ACTION"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-9C8C831C6D79CF9D"
          ],
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "ecm-steel.voestalpine.net",
          "tileType": "DEM_KEY_USER_ACTION"
        },
        {
          "assignedEntities": [
            "APPLICATION-1511292D0FDC055A",
            "APPLICATION_METHOD-71AB6B43899A5254"
          ],
          "bounds": {
            "height": 304,
            "left": 1216,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "ecm-steel.voestalpine.net",
          "tileType": "DEM_KEY_USER_ACTION"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P-OTCS_Service_key_requests-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P-OTCS_Service_key_requests-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P-OTCS_Service_key_requests-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P-OTCS_Service_key_requests-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
