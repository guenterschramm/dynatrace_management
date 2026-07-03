resource "dynatrace_document" "F5_DNS_Overview" {
  name      = "F5 DNS Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": true,
      "layouts": {
        "19": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 6
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 2
        },
        "30": {
          "h": 3,
          "w": 7,
          "x": 7,
          "y": 3
        },
        "35": {
          "h": 3,
          "w": 7,
          "x": 0,
          "y": 3
        },
        "36": {
          "h": 3,
          "w": 7,
          "x": 14,
          "y": 3
        },
        "37": {
          "h": 3,
          "w": 7,
          "x": 21,
          "y": 3
        },
        "40": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 7
        },
        "41": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 7
        },
        "46": {
          "h": 7,
          "w": 10,
          "x": 20,
          "y": 7
        },
        "47": {
          "h": 7,
          "w": 10,
          "x": 30,
          "y": 7
        },
        "48": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 14
        },
        "51": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 15
        },
        "52": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 15
        },
        "53": {
          "h": 7,
          "w": 10,
          "x": 20,
          "y": 15
        },
        "54": {
          "h": 7,
          "w": 10,
          "x": 30,
          "y": 15
        },
        "55": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 22
        },
        "56": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 23
        },
        "57": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 23
        },
        "58": {
          "h": 7,
          "w": 10,
          "x": 20,
          "y": 23
        },
        "59": {
          "h": 7,
          "w": 10,
          "x": 30,
          "y": 23
        },
        "60": {
          "h": 2,
          "w": 37,
          "x": 2,
          "y": 0
        },
        "61": {
          "h": 2,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "68": {
          "h": 3,
          "w": 40,
          "x": 0,
          "y": 30
        },
        "69": {
          "h": 3,
          "w": 10,
          "x": 28,
          "y": 3
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 40,
          "mode": "responsive"
        }
      },
      "tiles": {
        "19": {
          "content": "### F5 BIG-IP DNS Wide IPs",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "type": "markdown"
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:pool`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pools",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": "0",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:wip`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Wide IPs",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": "0",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:virtualserver`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Virtual Servers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": "0",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:profile`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DNS Profiles",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": "0",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:wip`\n| fields Name, Enabled, State, StateDetail\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Wide IPs",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "hiddenColumns": [
                [
                  "A:dt.entity.vmware:host.name"
                ],
                [
                  "B:dt.entity.vmware:host.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ]
              ],
              "rowDensity": "default"
            },
            "thresholds": [
              {
                "field": "Average CPU %",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 75
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              },
              {
                "field": "Average Memory %",
                "id": "1",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 60
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1727248611439,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "System CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248618879,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "User CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248622957,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "IO Wait CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248629578,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Stolen CPU",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries Requests = avg(`com.dynatrace.extension.f5.bigip.gtm.wip.requests_count`), by: { `dt.entity.f5:gtm:wip` }\n| sort arrayAvg(Requests) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:wip`)\n| fieldsRemove `dt.entity.f5:gtm:wip`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries Resolutions = avg(`com.dynatrace.extension.f5.bigip.gtm.wip.resolutions_count`), by: { `dt.entity.f5:gtm:wip` }\n| sort arrayAvg(Resolutions) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:wip`)\n| fieldsRemove `dt.entity.f5:gtm:wip`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Resolutions",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries `Dropped messages` = avg(`com.dynatrace.extension.f5.bigip.gtm.wip.dropped_count`), by: { `dt.entity.f5:gtm:wip` }\n| sort arrayAvg(`Dropped messages`) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:wip`)\n| fieldsRemove `dt.entity.f5:gtm:wip`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Dropped Messages",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "48": {
          "content": "### F5 BIG-IP DNS Pools",
          "type": "markdown"
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  Requests = avg(`com.dynatrace.extension.f5.bigip.gtm.pool.lb_preferred_count`),\n  by: { `dt.entity.f5:gtm:pool` }\n| sort arrayAvg(Requests) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:pool`)\n| fieldsRemove `dt.entity.f5:gtm:pool`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "LB Requests (Preferred)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:pool`\n| fields Name, Enabled, State, StateDetail\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DNS Pools",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "hiddenColumns": [
                [
                  "A:dt.entity.vmware:host.name"
                ],
                [
                  "B:dt.entity.vmware:host.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ]
              ],
              "rowDensity": "default"
            },
            "thresholds": [
              {
                "field": "Average CPU %",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 75
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              },
              {
                "field": "Average Memory %",
                "id": "1",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 60
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1727248611439,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "System CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248618879,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "User CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248622957,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "IO Wait CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248629578,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Stolen CPU",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "53": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  Requests = avg(`com.dynatrace.extension.f5.bigip.gtm.pool.lb_fallback_count`),\n  by: { `dt.entity.f5:gtm:pool` }\n| sort arrayAvg(Requests) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:pool`)\n| fieldsRemove `dt.entity.f5:gtm:pool`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "LB Requests (Fallback)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  `Dropped messages` = avg(`com.dynatrace.extension.f5.bigip.gtm.pool.dropped_count`),\n  by: { `dt.entity.f5:gtm:pool` }\n| sort arrayAvg(`Dropped messages`) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:pool`)\n| fieldsRemove `dt.entity.f5:gtm:pool`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Dropped Messages",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "55": {
          "content": "### F5 BIG-IP DNS Virtual Servers",
          "type": "markdown"
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  Connections = avg(`com.dynatrace.extension.f5.bigip.gtm.virtualserver.connections_count`),\n  by: { `dt.entity.f5:gtm:virtualserver` }\n| sort arrayAvg(Connections) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:virtualserver`)\n| fieldsRemove `dt.entity.f5:gtm:virtualserver`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current Connections",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:gtm:virtualserver`\n| fields Name, Enabled, State, StateDetail\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DNS Virtual Server",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "hiddenColumns": [
                [
                  "A:dt.entity.vmware:host.name"
                ],
                [
                  "B:dt.entity.vmware:host.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ]
              ],
              "rowDensity": "default"
            },
            "thresholds": [
              {
                "field": "Average CPU %",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 75
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              },
              {
                "field": "Average Memory %",
                "id": "1",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 60
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1727248611439,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "System CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248618879,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "User CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248622957,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "IO Wait CPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1727248629578,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Stolen CPU",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  `Bits sent` = avg(`com.dynatrace.extension.f5.bigip.gtm.virtualserver.bits_persec_out_count`),\n  by: { `dt.entity.f5:gtm:virtualserver` }\n| sort arrayAvg(`Bits sent`) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:virtualserver`)\n| fieldsRemove `dt.entity.f5:gtm:virtualserver`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bits Sent",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries\n  `Bits received` = avg(`com.dynatrace.extension.f5.bigip.gtm.virtualserver.bits_persec_in_count`),\n  by: { `dt.entity.f5:gtm:virtualserver` }\n| sort arrayAvg(`Bits received`) desc\n| fieldsAdd entityName(`dt.entity.f5:gtm:virtualserver`)\n| fieldsRemove `dt.entity.f5:gtm:virtualserver`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bits Received",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "average",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "60": {
          "content": "### Overview of F5 BIG-IP extension DNS data\n\nStart here to navigate to the extension configuration and/or entity pages and view charts displaying data collected for BIG-IP instances, DNS Wide IPs, pools, virtual servers and more. If you don't see data: ⚙️ [Configure extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/configs)\n\n-----",
          "type": "markdown"
        },
        "61": {
          "content": "![](https://dt-cdn.net/hub/logos/f5-big-ip-ltm-1.png)",
          "type": "markdown"
        },
        "68": {
          "content": "### Additional Resources:\n#### [F5 BIP-IP Extension Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/details)",
          "type": "markdown"
        },
        "69": {
          "content": "**🔗 Navigate to entities:** [all BIG-IP Instances](/ui/apps/dynatrace.infraops/explorer/Network%20devices?perspective=Health\u0026sort=healthIndicators%3Adescending#filtering=%22Discovered+type%22+%3D+f5-big-ip+)",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-f5-bigip-f5-dns-overview"
  # private = false
}
