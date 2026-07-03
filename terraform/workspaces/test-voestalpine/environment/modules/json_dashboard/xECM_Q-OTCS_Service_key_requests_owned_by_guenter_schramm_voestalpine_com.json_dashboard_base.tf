resource "dynatrace_json_dashboard" "xECM_Q-OTCS_Service_key_requests_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - OTCS Service key requests",
        "owner": "guenter.schramm@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "xECM_Q"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 342,
            "left": 950,
            "top": 722,
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
            "top": 342,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.count.total:splitBy(\"dt.entity.service_method\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Executions",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.count.total",
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
            "left": 950,
            "top": 342,
            "width": 380
          },
          "configured": true,
          "customName": "Median response time",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.keyRequest.count.total:splitBy(\"dt.entity.service_method\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests - Executions",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:service.keyRequest.count.total",
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
            "height": 342,
            "left": 0,
            "top": 1406,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.errors.server.count:splitBy(\"dt.entity.service_method\"):sort(value(auto,descending)):limit(20)):limit(100):names"
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
            "height": 342,
            "left": 950,
            "top": 1102,
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
            "SERVICE_METHOD-FCD3D21238FD7F90",
            "SERVICE-B811EA6C199004CE"
          ],
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "assignedEntities": [
            "SERVICE_METHOD-59A5ECBBBA8F0FC5",
            "SERVICE-B811EA6C199004CE"
          ],
          "bounds": {
            "height": 304,
            "left": 1026,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Service or request",
          "tileType": "SERVICE_VERSATILE"
        },
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 1026,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.response.time:filter(and(or(in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll - ll - browse~\")\")),in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll/open/\u003cid\u003e~\")\")),in(\"dt.entity.service_method\",entitySelector(\"type(service_method),entityName.equals(~\"/OTCS/llisapi.dll/api/v2/nodes/\u003cid\u003e~\")\"))))):splitBy(\"dt.entity.service_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests (Folder change) - Median response time",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "/OTCS/llisapi.dll - ll - browse"
                      },
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "/OTCS/llisapi.dll/open/\u003cid\u003e"
                      },
                      {
                        "evaluator": "IN",
                        "matchExactly": true,
                        "value": "/OTCS/llisapi.dll/api/v2/nodes/\u003cid\u003e"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.service_method",
                    "filterOperator": "OR",
                    "filterType": "NAME"
                  }
                ]
              },
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
                    "name": "/OTCS/llisapi.dll - ll - browse"
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
            "height": 342,
            "left": 0,
            "top": 684,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.keyRequest.response.time:splitBy(\"dt.entity.service_method\"):median:sort(value(median,descending)):limit(20)):limit(100):names"
          ],
          "name": "Key requests  (all) - Median response time",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
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
            "left": 342,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "name": "Key user action",
          "tileType": "DEM_KEY_USER_ACTION"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-OTCS_Service_key_requests_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-OTCS_Service_key_requests_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-OTCS_Service_key_requests_owned_by_guenter_schramm_voestalpine_com.id}"
  preset       = true
}


resource "dynatrace_json_dashboard_base" "xECM_Q-OTCS_Service_key_requests_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
