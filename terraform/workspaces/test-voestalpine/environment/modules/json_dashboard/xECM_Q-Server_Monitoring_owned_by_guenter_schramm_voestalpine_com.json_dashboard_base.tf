resource "dynatrace_json_dashboard" "xECM_Q-Server_Monitoring_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - Server Monitoring",
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
            "height": 304,
            "left": 0,
            "top": 0,
            "width": 380
          },
          "chartVisible": true,
          "configured": true,
          "filterConfig": {
            "chartConfig": {
              "legendShown": true,
              "type": "TIMESERIES"
            },
            "customName": "Health Status",
            "defaultName": "Hosts",
            "filtersPerEntityType": {
              "HOST": {
                "HOST_HOST_GROUPS": [
                  "HOST_GROUP-430A224AD7944963|xECM_Q"
                ]
              }
            },
            "type": "HOST"
          },
          "name": "",
          "tileType": "HOSTS"
        },
        {
          "bounds": {
            "height": 304,
            "left": 418,
            "top": 0,
            "width": 380
          },
          "configured": true,
          "customName": "Honeycomb",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.cpu.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):names"
          ],
          "name": "CPU usage %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.cpu.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
              "showLabels": true,
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
                    "value": 90
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
                  }
                ],
                "visible": true
              }
            ],
            "type": "HONEYCOMB"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 0,
            "width": 380
          },
          "configured": true,
          "customName": "Memory used %",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.mem.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):names"
          ],
          "name": "Memory used %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.mem.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
              "showLabels": true,
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
                    "value": 90
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
                  }
                ],
                "visible": true
              }
            ],
            "type": "HONEYCOMB"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 0,
            "width": 380
          },
          "configured": true,
          "customName": "Disk space used %",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.disk.usedPct:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):names"
          ],
          "name": "Disk space used %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.disk.usedPct",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
              "showLabels": true,
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
                    "value": 80
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
                  }
                ],
                "visible": true
              }
            ],
            "type": "HONEYCOMB"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 760,
            "width": 532
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:host.cpu.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU usage over time",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.cpu.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 418,
            "top": 342,
            "width": 380
          },
          "configured": true,
          "customName": "CPU usage %",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.cpu.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU usage %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.cpu.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
                    "value": 90
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
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
            "height": 380,
            "left": 836,
            "top": 342,
            "width": 380
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.mem.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory used %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.mem.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
                    "value": 90
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
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
            "height": 380,
            "left": 1254,
            "top": 342,
            "width": 380
          },
          "configured": true,
          "customName": "Disk space used %",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.disk.usedPct:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Disk space used %",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.disk.usedPct",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
                    "value": 80
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
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
            "height": 380,
            "left": 570,
            "top": 760,
            "width": 646
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:host.cpu.usage:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU Heatmap",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.cpu.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
              "yAxis": "DIMENSIONS"
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
                    "value": 90
                  },
                  {
                    "color": "#dc172a",
                    "value": 95
                  }
                ],
                "visible": true
              }
            ],
            "type": "HEATMAP"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 1254,
            "top": 760,
            "width": 380
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=null\u0026(builtin:host.net.nic.traffic:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Network traffic",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.net.nic.traffic",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
            "type": "STACKED_AREA"
          }
        },
        {
          "bounds": {
            "height": 380,
            "left": 0,
            "top": 342,
            "width": 380
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:host.availability:filter(and(or(in(\"dt.entity.host\",entitySelector(\"type(host),fromRelationship.isInstanceOf(type(HOST_GROUP),entityName.equals(~\"xECM_Q~\"))\"))))):splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Availability",
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
                        "value": "xECM_Q"
                      }
                    ],
                    "entityAttribute": "entityName",
                    "filter": "dt.entity.host",
                    "filterOperator": "OR",
                    "filterType": "NAME",
                    "relationship": {
                      "id": "isInstanceOf",
                      "targetEntity": "HOST_GROUP",
                      "type": "fromRelationship"
                    }
                  }
                ]
              },
              "id": "A",
              "limit": 20,
              "metric": "builtin:host.availability",
              "rate": "NONE",
              "sortBy": "DESC",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
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
                    "value": 99
                  },
                  {
                    "color": "#f5d30f",
                    "value": 95
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
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-Server_Monitoring_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-Server_Monitoring_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-Server_Monitoring_owned_by_guenter_schramm_voestalpine_com.id}"
  preset       = true
}


resource "dynatrace_json_dashboard_base" "xECM_Q-Server_Monitoring_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
