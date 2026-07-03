resource "dynatrace_document" "F5_Status" {
  name      = "F5 Status"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": true,
      "layouts": {
        "10": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "12": {
          "h": 5,
          "w": 6,
          "x": 6,
          "y": 19
        },
        "13": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 19
        },
        "14": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 19
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "17": {
          "h": 5,
          "w": 6,
          "x": 6,
          "y": 29
        },
        "18": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 29
        },
        "19": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "2": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "21": {
          "h": 2,
          "w": 23,
          "x": 1,
          "y": 0
        },
        "22": {
          "h": 2,
          "w": 1,
          "x": 0,
          "y": 0
        },
        "24": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "4": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "5": {
          "h": 5,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "7": {
          "h": 5,
          "w": 6,
          "x": 6,
          "y": 9
        },
        "8": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 9
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 9
        }
      },
      "settings": {},
      "tiles": {
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  sum(`com.dynatrace.extension.f5.bigip.virtualserver.state`),\n  by: { virtualserver.availstate },\n  filter: { isNotNull(virtualserver.availstate) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Over Time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(com.dynatrace.extension.f5.bigip.virtualserver.state)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Virtual server state"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#2F6863",
                    "geometry": "area"
                  },
                  "seriesId": [
                    "green(1)"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "blue(4)"
                  ]
                },
                {
                  "override": {
                    "color": "#C4233B"
                  },
                  "seriesId": [
                    "red(3)"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "thresholds": []
          }
        },
        "11": {
          "content": "### Pools\n",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool`\n| fields entity.name, EnabledState\n| filter isNotNull(EnabledState)\n| summarize count(), by:{ EnabledState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Enabled Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "EnabledState",
                "categoryAxisLabel": "EnabledState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "enabled(1)": {
                  "added": 1727265397147,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool`\n| fields entity.name, AvailabilityState\n| filter isNotNull(AvailabilityState)\n| summarize count(), by:{ AvailabilityState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "AvailabilityState",
                "categoryAxisLabel": "AvailabilityState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "blue(4)": {
                  "added": 1727265342826,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  }
                },
                "green(1)": {
                  "added": 1727265352056,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  sum(`com.dynatrace.extension.f5.bigip.pool.state`),\n  by: { pool.availstate },\n  filter: { isNotNull(pool.availstate) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Over Time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(com.dynatrace.extension.f5.bigip.pool.state)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Pool state"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#2F6863",
                    "geometry": "area"
                  },
                  "seriesId": [
                    "green(1)"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "blue(4)"
                  ]
                },
                {
                  "override": {
                    "color": "#C4233B"
                  },
                  "seriesId": [
                    "red(3)"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "thresholds": []
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool`\n| filter isNotNull(StateDetail)\n| summarize `Pools in state` = countDistinct(id), by: {StateDetail}\n| sort `Pools in state` desc\n| limit 20\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "State Details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"StateDetail\"]": 521
              }
            },
            "thresholds": []
          }
        },
        "16": {
          "content": "### Pool Members",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool:member`\n| fields entity.name, EnabledState\n| filter isNotNull(EnabledState)\n| summarize count(), by:{ EnabledState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Enabled Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "EnabledState",
                "categoryAxisLabel": "EnabledState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "enabled(1)": {
                  "added": 1727265397147,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool:member`\n| fields entity.name, AvailabilityState\n| filter isNotNull(AvailabilityState)\n| summarize count(), by:{ AvailabilityState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "AvailabilityState",
                "categoryAxisLabel": "AvailabilityState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "blue(4)": {
                  "added": 1727265342826,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  }
                },
                "green(1)": {
                  "added": 1727265352056,
                  "color": "#2F6863"
                },
                "red(3)": {
                  "added": 1738292147155,
                  "color": "#C4233B"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  sum(`com.dynatrace.extension.f5.bigip.pool_member.state`),\n  by: { pool_member.availstate },\n  filter: { isNotNull(pool_member.availstate) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Over Time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(com.dynatrace.extension.f5.bigip.pool_member.state)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Pool Member state"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#2F6863",
                    "geometry": "area"
                  },
                  "seriesId": [
                    "green(1)"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "blue(4)"
                  ]
                },
                {
                  "override": {
                    "color": "#C4233B"
                  },
                  "seriesId": [
                    "red(3)"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "thresholds": []
          }
        },
        "2": {
          "content": "### BIG-IP Devices\n\n---\n",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool:member`\n| filter isNotNull(StateDetail)\n| summarize `Pool members in state` = countDistinct(id), by: {StateDetail}\n| sort `Pool members in state` desc\n| limit 20\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "State Details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"StateDetail\"]": 521
              }
            },
            "thresholds": []
          }
        },
        "21": {
          "content": "### Overview of F5 BIG-IP extension LTM status data\n\nThis dashboard provides a breakdown of LTM status data collected by the F5 BIG-IP extension, including state details and status measures for devices, virtual servers, pools and pool members. If you don't see data: ⚙️ [Configure extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/configs)\n\n-----",
          "type": "markdown"
        },
        "22": {
          "content": "![](https://dt-cdn.net/hub/logos/f5-big-ip-ltm-1.png)",
          "type": "markdown"
        },
        "24": {
          "content": "### Additional Resources:\n#### [F5 BIP-IP Extension Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/details)",
          "type": "markdown"
        },
        "3": {
          "content": "### Virtual Servers",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:instance`\n| fields entity.name, FailoverStatus\n| summarize count(), by:{ FailoverStatus }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability/Failover Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "FailoverStatus",
                "categoryAxisLabel": "FailoverStatus",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "active(4)": {
                  "added": 1727260630211,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:instance`\n| fields entity.name, SyncStatus\n| summarize count(), by:{ SyncStatus }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Synchronization Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "SyncStatus",
                "categoryAxisLabel": "SyncStatus",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "active(4)": {
                  "added": 1727260630211,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:instance`\n| fields Instance = entity.name, id, FailoverStatus, SyncStatus\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\" and contains(toString(affected_entity_types), \"dt.entity.f5:instance\")\n    | fields event.id, affected_entity_ids\n    | expand AffectedEntity = affected_entity_ids\n    | summarize `Open problems` = countDistinct(event.id), by:{AffectedEntity}\n  ],\n  sourceField: id,\n  lookupField: AffectedEntity,\n  fields: { `Open problems` }\n| fieldsRemove id\n| fieldsAdd `Open problems` = if(isNull(`Open problems`), 0, else:`Open problems`)\n| sort `Open problems` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "State Details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "thresholds": []
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:virtualserver`\n| fields entity.name, EnabledState\n| summarize count(), by:{ EnabledState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Enabled Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "EnabledState",
                "categoryAxisLabel": "EnabledState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "enabled(1)": {
                  "added": 1727265397147,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:virtualserver`\n| fields entity.name, AvailableState\n| summarize count(), by:{ AvailableState }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability Status",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "AvailableState",
                "categoryAxisLabel": "AvailableState",
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {
                "blue(4)": {
                  "added": 1727265342826,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  }
                },
                "green(1)": {
                  "added": 1727265352056,
                  "color": "#2F6863"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:virtualserver`\n| summarize `Virtual servers in state` = countDistinct(id), by: {StateDetail}\n| sort `Virtual servers in state` desc\n| limit 20\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "State Details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"StateDetail\"]": 521
              }
            },
            "thresholds": []
          }
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-f5-bigip-f5-status"
  # private = false
}
