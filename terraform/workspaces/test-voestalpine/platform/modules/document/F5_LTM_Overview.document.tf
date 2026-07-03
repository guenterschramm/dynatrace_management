resource "dynatrace_document" "F5_LTM_Overview" {
  name      = "F5 LTM Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": true,
      "layouts": {
        "15": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
        },
        "16": {
          "h": 7,
          "w": 18,
          "x": 0,
          "y": 10
        },
        "28": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "29": {
          "h": 3,
          "w": 6,
          "x": 24,
          "y": 3
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 2
        },
        "35": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 6
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "45": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "46": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "47": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 6
        },
        "48": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 6
        },
        "49": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 6
        },
        "50": {
          "h": 3,
          "w": 6,
          "x": 24,
          "y": 6
        },
        "52": {
          "h": 7,
          "w": 11,
          "x": 18,
          "y": 10
        },
        "54": {
          "h": 7,
          "w": 11,
          "x": 29,
          "y": 10
        },
        "55": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 17
        },
        "56": {
          "h": 7,
          "w": 13,
          "x": 0,
          "y": 18
        },
        "57": {
          "h": 7,
          "w": 9,
          "x": 13,
          "y": 18
        },
        "58": {
          "h": 7,
          "w": 9,
          "x": 22,
          "y": 18
        },
        "59": {
          "h": 7,
          "w": 9,
          "x": 31,
          "y": 18
        },
        "60": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 25
        },
        "63": {
          "h": 7,
          "w": 9,
          "x": 13,
          "y": 26
        },
        "64": {
          "h": 7,
          "w": 13,
          "x": 0,
          "y": 26
        },
        "65": {
          "h": 7,
          "w": 9,
          "x": 22,
          "y": 26
        },
        "66": {
          "h": 7,
          "w": 9,
          "x": 31,
          "y": 26
        },
        "67": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 33
        },
        "70": {
          "h": 7,
          "w": 9,
          "x": 13,
          "y": 34
        },
        "71": {
          "h": 7,
          "w": 13,
          "x": 0,
          "y": 34
        },
        "72": {
          "h": 7,
          "w": 9,
          "x": 22,
          "y": 34
        },
        "73": {
          "h": 7,
          "w": 9,
          "x": 31,
          "y": 34
        },
        "75": {
          "h": 2,
          "w": 38,
          "x": 2,
          "y": 0
        },
        "76": {
          "h": 2,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "78": {
          "h": 3,
          "w": 40,
          "x": 0,
          "y": 41
        },
        "84": {
          "h": 6,
          "w": 10,
          "x": 30,
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
        "15": {
          "content": "### F5 BIGIP Instances",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  system = avg(`com.dynatrace.extension.f5.bigip.sys.global.host.cpu.system1m`),\n  user = avg(`com.dynatrace.extension.f5.bigip.sys.global.host.cpu.user1m`),\n  iowait = avg(`com.dynatrace.extension.f5.bigip.sys.global.host.cpu.iowait1m`),\n  stolen = avg(`com.dynatrace.extension.f5.bigip.sys.global.host.cpu.stolen1m`)\n}, by: {`dt.entity.f5:instance`}\n| fields \n  Instance=entityName(`dt.entity.f5:instance`), \n  `System CPU`= ArrayAvg(system), \n  `User CPU`= ArrayAvg(system), \n  `IO Wait CPU`= ArrayAvg(system), \n  `Stolen CPU`= ArrayAvg(system)\n| sort `System CPU` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "F5 Instances by CPU",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Instance\"]": 166.984375
              },
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
            "unitsOverrides": []
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool`\n| summarize count()",
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:pool:member`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pool Members",
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
        "3": {
          "content": "### Currently Monitoring\n",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:virtualserver`\n| summarize count()",
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
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:instance`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances",
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
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:disk`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disks",
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
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:interface`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Interfaces",
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
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:profile`\n| filter ProfileType == \"ClientSSL\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ClientSSL Profiles",
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
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:profile`\n| filter ProfileType == \"ServerSSL\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ServerSSL Profiles",
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
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:profile`\n| filter ProfileType == \"HTTP\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP Profiles",
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
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.f5:rule`\n| filter Module == \"LTM\"\n| summarize count()\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "iRules",
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
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `User CPU` = avg(`com.dynatrace.extension.f5.bigip.sys.global.host.cpu.user1m`)\n  }, by: { `dt.entity.f5:instance` } \n| sort arrayAvg(`User CPU`) desc\n| fieldsAdd Instance = entityName(`dt.entity.f5:instance`)\n| fieldsRemove `dt.entity.f5:instance`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "User CPU",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "User CPU"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries {\n  `Memory` = avg(`com.dynatrace.extension.f5.bigip.sys.host.memory.used`)\n  }, by: { `dt.entity.f5:instance` } \n| sort arrayAvg(`Memory`) desc\n| fieldsAdd Instance = entityName(`dt.entity.f5:instance`)\n| fieldsRemove `dt.entity.f5:instance`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Memory"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "55": {
          "content": "### F5 BIGIP LTM Pools",
          "type": "markdown"
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  requestCount = avg(`com.dynatrace.extension.f5.bigip.pool.stat.tot.requests.count`),\n  memberCount = avg(`com.dynatrace.extension.f5.bigip.pool.member.cnt`)\n}, by: {`dt.entity.f5:pool`}\n| fields \n  Pool = entityName(`dt.entity.f5:pool`), \n  Requests = arrayAvg(requestCount),\n  `Pool Members` = arrayLast(memberCount)\n| sort Requests desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "F5 Pools by Requests",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Instance\"]": 266.984375
              },
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
            "unitsOverrides": []
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Current connections` = avg(`com.dynatrace.extension.f5.bigip.pool.stat.server.current_conns`)\n  }, by: { `dt.entity.f5:pool`, instance.name } \n| sort arrayAvg(`Current connections`) desc\n| fieldsAdd Instance = entityName(`dt.entity.f5:pool`)\n| fieldsRemove `dt.entity.f5:pool`\n| limit 20",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Current connections"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries {\n  `Bytes in` = avg(`com.dynatrace.extension.f5.bigip.pool.stat.server.bytes.in.count`)\n  }, by: { `dt.entity.f5:pool`, instance.name } \n| sort arrayAvg(`Bytes in`) desc\n| fieldsAdd Instance = entityName(`dt.entity.f5:pool`)\n| fieldsRemove `dt.entity.f5:pool`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes In",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes in"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries {\n  `Bytes out` = avg(`com.dynatrace.extension.f5.bigip.pool.stat.server.bytes.out.count`)\n  }, by: { `dt.entity.f5:pool`, instance.name } \n| sort arrayAvg(`Bytes out`) desc\n| fieldsAdd Instance = entityName(`dt.entity.f5:pool`)\n| fieldsRemove `dt.entity.f5:pool`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes Out",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes out"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "60": {
          "content": "### F5 BIGIP LTM Pool Members",
          "type": "markdown"
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Current connections` = avg(`com.dynatrace.extension.f5.bigip.pool_member.stat.server.current_conns`)\n  }, by: { `dt.entity.f5:pool:member`, instance.name } \n| sort arrayAvg(`Current connections`) desc\n| fieldsAdd `Pool member` = entityName(`dt.entity.f5:pool:member`)\n| fieldsRemove `dt.entity.f5:pool:member`\n| limit 20",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Current connections"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "64": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  requestCount = avg(`com.dynatrace.extension.f5.bigip.pool_member.stat.tot.requests.count`)\n}, by: {`dt.entity.f5:pool:member`, instance.name }\n| fields \n  `Pool member` = entityName(`dt.entity.f5:pool:member`), \n  Requests = arrayAvg(requestCount)\n| sort Requests desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "F5 Pool Members by Requests",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Instance\"]": 266.984375
              },
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
            "unitsOverrides": []
          }
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Bytes in` = avg(`com.dynatrace.extension.f5.bigip.pool_member.stat.server.bytes.in.count`)\n  }, by: { `dt.entity.f5:pool:member`, instance.name } \n| sort arrayAvg(`Bytes in`) desc\n| fieldsAdd `Pool member` = entityName(`dt.entity.f5:pool:member`)\n| fieldsRemove `dt.entity.f5:pool:member`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes In",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes in"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Bytes out` = avg(`com.dynatrace.extension.f5.bigip.pool_member.stat.server.bytes.out.count`)\n  }, by: { `dt.entity.f5:pool:member`, instance.name } \n| sort arrayAvg(`Bytes out`) desc\n| fieldsAdd `Pool member` = entityName(`dt.entity.f5:pool:member`)\n| fieldsRemove `dt.entity.f5:pool:member`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes Out",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes out"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "67": {
          "content": "### F5 BIGIP LTM Virtual Servers",
          "type": "markdown"
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Current connections` = avg(`com.dynatrace.extension.f5.bigip.virtualserver.stat.client.current_conns`)\n  }, by: { `dt.entity.f5:virtualserver`, instance.name } \n| sort arrayAvg(`Current connections`) desc\n| fieldsAdd `Virtual server` = entityName(`dt.entity.f5:virtualserver`)\n| fieldsRemove `dt.entity.f5:virtualserver`\n| limit 20",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Current connections"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "71": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  requestCount = avg(`com.dynatrace.extension.f5.bigip.virtualserver.stat.tot.requests.count`)\n}, by: {`dt.entity.f5:virtualserver`, instance.name }\n| fields \n  `Virtual server` = entityName(`dt.entity.f5:virtualserver`), \n  Requests = arrayAvg(requestCount)\n| sort Requests desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "F5 Virtual Servers by Requests",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"Instance\"]": 266.984375
              },
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
            "unitsOverrides": []
          }
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Bytes in` = avg(`com.dynatrace.extension.f5.bigip.virtualserver.stat.client.bytes.in.count`)\n  }, by: { `dt.entity.f5:virtualserver`, instance.name } \n| sort arrayAvg(`Bytes in`) desc\n| fieldsAdd `Virtual server` = entityName(`dt.entity.f5:virtualserver`)\n| fieldsRemove `dt.entity.f5:virtualserver`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes In",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes in"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  `Bytes out` = avg(`com.dynatrace.extension.f5.bigip.virtualserver.stat.client.bytes.out.count`)\n  }, by: { `dt.entity.f5:virtualserver`, instance.name } \n| sort arrayAvg(`Bytes out`) desc\n| fieldsAdd `Virtual server` = entityName(`dt.entity.f5:virtualserver`)\n| fieldsRemove `dt.entity.f5:virtualserver`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes Out",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bytes out"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "dt.entity.vmware:host",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "75": {
          "content": "### Overview of F5 BIG-IP extension LTM data\n\nStart here to navigate to the extension configuration and/or entity pages and view charts displaying data collected for BIG-IP instances, LTM pools \u0026 pool members, virtual servers and more. If you don't see data: ⚙️ [Configure extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/configs)\n\n-----",
          "type": "markdown"
        },
        "76": {
          "content": "![](https://dt-cdn.net/hub/logos/f5-big-ip-ltm-1.png)",
          "type": "markdown"
        },
        "78": {
          "content": "### Additional Resources:\n#### [F5 BIP-IP Extension Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.f5.bigip/details)",
          "type": "markdown"
        },
        "84": {
          "content": "**🔗 Navigate to entities:** [all BIG-IP Instances](/ui/apps/dynatrace.infraops/explorer/Network%20devices?perspective=Health\u0026sort=healthIndicators%3Adescending#filtering=%22Discovered+type%22+%3D+f5-big-ip+)",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-f5-bigip-f5-ltm-overview"
  # private = false
}
