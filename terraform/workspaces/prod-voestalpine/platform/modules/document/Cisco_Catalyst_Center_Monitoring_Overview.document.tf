resource "dynatrace_document" "Cisco_Catalyst_Center_Monitoring_Overview" {
  name      = "Cisco Catalyst Center Monitoring Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 7,
          "w": 11,
          "x": 22,
          "y": 11
        },
        "11": {
          "h": 7,
          "w": 11,
          "x": 33,
          "y": 11
        },
        "12": {
          "h": 7,
          "w": 11,
          "x": 0,
          "y": 18
        },
        "13": {
          "h": 7,
          "w": 11,
          "x": 11,
          "y": 18
        },
        "14": {
          "h": 7,
          "w": 11,
          "x": 22,
          "y": 18
        },
        "15": {
          "h": 7,
          "w": 11,
          "x": 33,
          "y": 18
        },
        "16": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 26
        },
        "17": {
          "h": 7,
          "w": 22,
          "x": 0,
          "y": 27
        },
        "18": {
          "h": 7,
          "w": 22,
          "x": 22,
          "y": 27
        },
        "19": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 35
        },
        "2": {
          "h": 2,
          "w": 40,
          "x": 4,
          "y": 0
        },
        "20": {
          "h": 7,
          "w": 22,
          "x": 0,
          "y": 36
        },
        "21": {
          "h": 7,
          "w": 11,
          "x": 22,
          "y": 36
        },
        "22": {
          "h": 7,
          "w": 11,
          "x": 33,
          "y": 36
        },
        "23": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 44
        },
        "24": {
          "h": 7,
          "w": 11,
          "x": 0,
          "y": 45
        },
        "25": {
          "h": 7,
          "w": 11,
          "x": 11,
          "y": 45
        },
        "26": {
          "h": 7,
          "w": 11,
          "x": 22,
          "y": 45
        },
        "27": {
          "h": 7,
          "w": 11,
          "x": 33,
          "y": 45
        },
        "29": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 25
        },
        "3": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 4
        },
        "30": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 9
        },
        "31": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 34
        },
        "34": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 43
        },
        "35": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 52
        },
        "4": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 5
        },
        "5": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "6": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 5
        },
        "7": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 5
        },
        "8": {
          "h": 1,
          "w": 44,
          "x": 0,
          "y": 10
        },
        "9": {
          "h": 7,
          "w": 22,
          "x": 0,
          "y": 11
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 44,
          "mode": "responsive"
        }
      },
      "tiles": {
        "0": {
          "content": "![](data:image/webp;base64,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)",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries health_score = avg(cisco.cc.center.health_score), by: { `dt.entity.cisco_cc:center` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n//| sort arrayAvg(health_score) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Health Score (Center)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cisco_cc:center"
              ],
              "leftYAxisSettings": {
                "label": "",
                "max": 100,
                "min": 0
              },
              "legend": {
                "hidden": false
              },
              "rightYAxisSettings": {},
              "seriesOverrides": [],
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "health_score"
                  ],
                  "id": 1754293243921,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "health_score",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
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
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "id": "health_score",
                "identifier": "health_score",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries health_score = avg(cisco.cc.client.health_score, filter: { client_type == \"WIRED\" }), by: { `dt.entity.cisco_cc:center`, client_type }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n//| sort arrayAvg(health_score) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Wired Clients Healthy",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cisco_cc:center"
              ],
              "leftYAxisSettings": {
                "label": "",
                "max": 100,
                "min": 0
              },
              "legend": {
                "hidden": false
              },
              "rightYAxisSettings": {},
              "seriesOverrides": [],
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "health_score"
                  ],
                  "id": 1754293243843,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "health_score",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
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
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "id": "health_score",
                "identifier": "health_score",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries gauge = sum(cisco.cc.device.issue_count.gauge), by: { `dt.entity.cisco_cc:center`, role }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsRename `Role`=role\n| fieldsAdd `Device Issues` = arrayLast(gauge)\n| sort gauge desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Issues (current)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "colorThresholdTarget": "value",
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"gauge\"]",
                "[\"Catalyst Center\"]",
                "[\"Role\"]",
                "[\"Device Issues\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "gauge"
                  ],
                  "id": 1754304204192,
                  "value": "sparkline"
                }
              ],
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "gauge"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false
            },
            "thresholds": [
              {
                "field": "gauge",
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries reachability = avg(cisco.cc.device.reachability), by: { `dt.entity.cisco_cc:center` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd expression = 100 * reachability[]\n| fieldsRemove reachability\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Reachable Devices",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cisco_cc:center"
              ],
              "leftYAxisSettings": {
                "label": "",
                "max": 100,
                "min": 0
              },
              "legend": {
                "hidden": false
              },
              "rightYAxisSettings": {},
              "seriesOverrides": [],
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "expression"
                  ],
                  "id": 1754293677528,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "expression",
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
                "id": "expression",
                "identifier": "expression",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries unhealthy_devices = avg(cisco.cc.center.unhealthy_devices), by: { `dt.entity.cisco_cc:center` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n//| sort arrayAvg(unhealthy_devices) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unhealthy Devices",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cisco_cc:center"
              ],
              "leftYAxisSettings": {
                "label": ""
              },
              "legend": {
                "hidden": false
              },
              "rightYAxisSettings": {},
              "seriesOverrides": [],
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "unhealthy_devices"
                  ],
                  "id": 1754293677702,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "unhealthy_devices",
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
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "unhealthy_devices",
                "identifier": "unhealthy_devices",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries health_score = avg(cisco.cc.client.health_score, filter: { client_type == \"WIRELESS\" }), by: { `dt.entity.cisco_cc:center`, client_type }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n//| sort arrayAvg(health_score) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Wireless Clients Healthy",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cisco_cc:center"
              ],
              "leftYAxisSettings": {
                "label": "",
                "max": 100,
                "min": 0
              },
              "legend": {
                "hidden": false
              },
              "rightYAxisSettings": {},
              "seriesOverrides": [],
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "health_score"
                  ],
                  "id": 1754293677784,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "health_score",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
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
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "id": "health_score",
                "identifier": "health_score",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "16": {
          "content": "## Sites",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  network_device_good_health_percentage = avg(cisco.cc.site.network_device_good_health_percentage), \n  client_good_health_percentage = avg(cisco.cc.site.client_good_health_percentage), \n  gauge = avg(cisco.cc.site.issue_count.gauge) \n}, by: { `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:site`,site_name, site_type, site_id }, union: true\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Site Name`=site_name\n| fieldsAdd `Site Type`=site_type\n| fieldsAdd `Healthy Clients` = if(isNull(arrayLast(client_good_health_percentage)),\"-\",else:arrayLast(client_good_health_percentage))\n| fieldsAdd `Site Issues` = arrayLast(gauge)\n| fieldsAdd `Healthy Devices` = if(isNull(arrayLast(network_device_good_health_percentage)),\"-\",else:arrayLast(network_device_good_health_percentage))\n| fields `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:site`,`Catalyst Center`, `Site Name`, `Site Type`, `Healthy Devices`, `Healthy Clients`, `Site Issues` \n| sort `Healthy Devices`,`Catalyst Center`,`Site Name` asc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Site (current)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:site\"]",
                "[\"Catalyst Center\"]",
                "[\"Site Name\"]",
                "[\"Site Type\"]",
                "[\"Healthy Devices\"]",
                "[\"Healthy Clients\"]",
                "[\"Site Issues\"]"
              ],
              "columnTypeOverrides": [],
              "hiddenColumns": [
                [
                  "Site Id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_type"
                ],
                [
                  "site_id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_type"
                ],
                [
                  "site_id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_type"
                ],
                [
                  "site_id"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:site"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "Healthy Devices",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "Healthy Clients",
                "id": "1",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "Site Issues",
                "id": "2",
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
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 1
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
                "id": "network_device_good_health_percentage",
                "identifier": "Healthy Devices",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "client_good_health_percentage",
                "identifier": "Healthy Clients",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1754299657259,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Site Issues",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  gauge = avg(cisco.cc.site.network_device_count.gauge), \n  gauge.0 = avg(cisco.cc.site.wired_client_count.gauge), \n  gauge.1 = avg(cisco.cc.site.wireless_client_count.gauge) \n}, by: { `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:site`, center, site_id, site_name }, union: true\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Wired Clients` = if(isNull(arrayLast(gauge.0)),\"-\",else:arrayLast(gauge.0))\n| fieldsAdd `Wireless Clients` = if(isNull(arrayLast(gauge.1)),\"-\",else:arrayLast(gauge.1))\n| fieldsAdd `Devices` = if(isNull(arrayLast(gauge)),\"-\",else:arrayLast(gauge))\n| sort `Devices` desc\n| fields `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:site`, `Catalyst Center`=center, `Site`=site_name, `Devices`, `Wired Clients`, `Wireless Clients`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Site Devices and Clients (currnet)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "colorThresholdTarget": "value",
              "columnOrder": [
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:site\"]",
                "[\"Catalyst Center\"]",
                "[\"Site\"]",
                "[\"Devices\"]",
                "[\"Wired Clients\"]",
                "[\"Wireless Clients\"]"
              ],
              "columnTypeOverrides": [],
              "hiddenColumns": [
                [
                  "Site Id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_id"
                ],
                [
                  "center"
                ],
                [
                  "site_name"
                ],
                [
                  "site_id"
                ],
                [
                  "site_name_hierarchy"
                ],
                [
                  "site_name_hierarchy"
                ],
                [
                  "site_name_hierarchy"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:site"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "gauge",
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
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "gauge",
                "identifier": "Devices",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "gauge.0",
                "identifier": "Wired Clients",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 2,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "gauge.1",
                "identifier": "Wireless Clients",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "19": {
          "content": "## Devices",
          "type": "markdown"
        },
        "2": {
          "content": "### Overview of Cisco Catalyst Center extension data\n\nStart here to navigate to the extension configuration and/or entity pages and view charts displaying data collected for catalyst centers, sites, devices, interfaces, etc. If you don't see data: ⚙️ [Configure extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.cisco-cc/configs)\n\n-----",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  health_a = avg(cisco.cc.device.health), \n  cpu_a = avg(cisco.cc.device.cpu), \n  memory_a = avg(cisco.cc.device.memory), \n  reachability = avg(cisco.cc.device.reachability), \n  gauge = avg(cisco.cc.device.issue_count.gauge) \n}, by: { `dt.entity.network:device`, `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device` }, union: true\n| fieldsAdd cpu = \n  if(isNull(arrayLast(cpu_a)),\n    \"-\",\n  else:\n    arrayLast(cpu_a)\n  )\n| fieldsAdd cpu = \n  if(cpu\u003c=0,\n    \"0\",\n  else:\n    cpu\n  )\n| fieldsAdd memory = \n  if(isNull(arrayLast(memory_a)),\n    \"-\",\n  else:\n    arrayLast(memory_a)\n  )\n| fieldsAdd memory = \n  if(memory\u003c=0,\n    \"0\",\n  else:\n    memory\n  )\n| fieldsAdd health = \n  if(arrayLast(health_a)\u003c=0,\n    \"0\",\n  else:\n    arrayLast(health_a)\n  )\n| fieldsAdd reachability = arrayLast(reachability)\n| fieldsAdd gauge = arrayLast(gauge)\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| fields `dt.entity.network:device`, `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device`, `Catalyst Center`, `Catalyst Device`, `Health`=health, `CPU`=cpu, `Memory`=memory, `Reacheable`=reachability, `Issues`=gauge \n| sort `Health`,`Catalyst Center`, `Catalyst Device` asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device (currnet)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"dt.entity.network:device\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Health\"]",
                "[\"CPU\"]",
                "[\"Memory\"]",
                "[\"Reacheable\"]",
                "[\"Issues\"]"
              ],
              "columnTypeOverrides": [],
              "hiddenColumns": [
                [
                  "DNA Center"
                ],
                [
                  "center"
                ],
                [
                  "center"
                ],
                [
                  "device"
                ],
                [
                  "device"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.network:device"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "Health",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 8
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 4
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "CPU",
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
                    "value": 8000
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 9500
                  }
                ],
                "title": ""
              },
              {
                "field": "Memory",
                "id": "2",
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
                    "value": 8000
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 9500
                  }
                ],
                "title": ""
              },
              {
                "field": "Reacheable",
                "id": "3",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 1
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
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "Issues",
                "id": "4",
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
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 1
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "id": "cpu",
                "identifier": "cpu",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 2,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "id": "memory",
                "identifier": "memory",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 3,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "reachability",
                "identifier": "reachability",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 4,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "gauge",
                "identifier": "gauge",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries `CPU` = avg(cisco.cc.device.cpu, scalar: true), by: { `dt.entity.network:device`, `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| sort `CPU` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Device",
                  "Catalyst Center"
                ],
                "layout": "horizontal",
                "valueAxis": [
                  "CPU"
                ],
                "valueAxisLabel": "cpu"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"CPU\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "CPU"
                  ],
                  "id": 65353.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1754302724097,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries `Memory` = avg(cisco.cc.device.memory, scalar: true), by: { `dt.entity.network:device`, `dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| sort `Memory` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Center",
                  "Catalyst Device"
                ],
                "layout": "horizontal",
                "valueAxis": [
                  "Memory"
                ],
                "valueAxisLabel": "memory"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Memory\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Memory"
                  ],
                  "id": 86133.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1754302834761,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "23": {
          "content": "## Interfaces",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries txUtilization = avg(cisco.cc.interface.txUtilization, scalar: true), by: { `dt.entity.network:device`,`dt.entity.network:interface`,`dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device`, `dt.entity.cisco_cc:interface` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| fieldsAdd `Interface`=entityName(`dt.entity.cisco_cc:interface`)\n| sort txUtilization desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top TX Utilization",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Center",
                  "Catalyst Device",
                  "Interface"
                ],
                "layout": "horizontal",
                "valueAxis": [
                  "txUtilization"
                ],
                "valueAxisLabel": "txUtilization"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"dt.entity.cisco_cc:interface\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Interface\"]",
                "[\"txUtilization\"]",
                "[\"dt.entity.network:interface\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "txUtilization"
                  ],
                  "id": 109128.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.cisco_cc:interface"
                ],
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1754302997488,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "txUtilization",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries rxUtilization = avg(cisco.cc.interface.rxUtilization, scalar: true), by: { `dt.entity.network:device`,`dt.entity.network:interface`,`dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device`, `dt.entity.cisco_cc:interface` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| fieldsAdd `Interface`=entityName(`dt.entity.cisco_cc:interface`)\n| sort rxUtilization desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top RX Utilization",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Center",
                  "Catalyst Device",
                  "Interface"
                ],
                "layout": "horizontal",
                "valueAxis": [
                  "rxUtilization"
                ],
                "valueAxisLabel": "rxUtilization"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"dt.entity.cisco_cc:interface\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Interface\"]",
                "[\"rxUtilization\"]",
                "[\"dt.entity.network:interface\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "rxUtilization"
                  ],
                  "id": 131532.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.cisco_cc:interface"
                ],
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1754303064784,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "rxUtilization",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries txError = avg(cisco.cc.interface.txError, scalar: true), by: { `dt.entity.network:device`,`dt.entity.network:interface`,`dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device`, `dt.entity.cisco_cc:interface` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| fieldsAdd `Interface`=entityName(`dt.entity.cisco_cc:interface`)\n| sort txError desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "TX Errors",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Center",
                  "Catalyst Device",
                  "Interface"
                ],
                "isCategoryLabelVisible": false,
                "layout": "horizontal",
                "valueAxis": [
                  "txError"
                ],
                "valueAxisLabel": "txError"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"dt.entity.cisco_cc:interface\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Interface\"]",
                "[\"txError\"]",
                "[\"dt.entity.network:interface\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "txError"
                  ],
                  "id": 158239.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.cisco_cc:interface"
                ],
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "txError",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1754303115337,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "txError",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries rxError = avg(cisco.cc.interface.rxError, scalar: true), by: { `dt.entity.network:device`,`dt.entity.network:interface`,`dt.entity.cisco_cc:center`, `dt.entity.cisco_cc:device`, `dt.entity.cisco_cc:interface` }\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| fieldsAdd `Catalyst Device`=entityName(`dt.entity.cisco_cc:device`)\n| fieldsAdd `Interface`=entityName(`dt.entity.cisco_cc:interface`)\n| sort rxError desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "RX Errors",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Catalyst Center",
                  "Catalyst Device",
                  "Interface"
                ],
                "layout": "horizontal",
                "valueAxis": [
                  "rxError"
                ],
                "valueAxisLabel": "rxError"
              },
              "hiddenLegendFields": [],
              "legend": {
                "hidden": true
              }
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"dt.entity.cisco_cc:device\"]",
                "[\"dt.entity.cisco_cc:interface\"]",
                "[\"Catalyst Center\"]",
                "[\"Catalyst Device\"]",
                "[\"Interface\"]",
                "[\"rxError\"]",
                "[\"dt.entity.network:interface\"]",
                "[\"dt.entity.network:device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "rxError"
                  ],
                  "id": 178181.69999998808,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "dt.entity.cisco_cc:center"
                ],
                [
                  "dt.entity.cisco_cc:device"
                ],
                [
                  "dt.entity.cisco_cc:interface"
                ],
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "rxError",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1754303191767,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "rxError",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "29": {
          "content": "***",
          "type": "markdown"
        },
        "3": {
          "content": "## Currently monitoring\n",
          "type": "markdown"
        },
        "30": {
          "content": "***",
          "type": "markdown"
        },
        "31": {
          "content": "***",
          "type": "markdown"
        },
        "34": {
          "content": "***",
          "type": "markdown"
        },
        "35": {
          "content": "***",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.cisco_cc:center`\n\n| filter in(\"All\",array($CatalystCenter)) OR (`entity.name` == $CatalystCenter)\n\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Catalyst Centers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "health_score.trend_line",
                "showTicks": false,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "visible": false
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2E5BD6",
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
                "added": 1754294031883,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// timeseries gauge = avg(cisco.cc.site.network_device_count.gauge, scalar: true), by: { `dt.entity.cisco_cc:center`,site_id }\n// | filterOut isNull(site_id)\n\n// | fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n// | filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n\n// | fields site_id\n// | summarize { c = count() }\n\n\n\n\n\nfetch `dt.entity.cisco_cc:site`\n| fieldsAdd child_of\n| fieldsFlatten child_of\n\n | lookup\n   [ fetch `dt.entity.cisco_cc:center` ], sourceField:`child_of.dt.entity.cisco_cc:center`, lookupField:id\n\n| fields `Catalyst Center`=`lookup.entity.name`, `Site`=`entity.name`\n\n| filter in(\"All\",array($CatalystCenter)) OR (`Catalyst Center` == $CatalystCenter)\n\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sites",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "gauge.trend_line",
                "showTicks": true,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "visible": false
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2E5BD6",
                    "comparator": "≥",
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
                "added": 1754294161840,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// timeseries gauge = avg(cisco.cc.device.uptime.gauge, scalar: true), by: { `dt.entity.cisco_cc:center`,`dt.entity.cisco_cc:device` }\n// | filterOut isNull(`dt.entity.cisco_cc:device`)\n\n// | fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n// | filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n\n// | fields `dt.entity.cisco_cc:device`\n// | summarize { c = count() }\n\n\n\nfetch `dt.entity.cisco_cc:device`\n\n | fieldsAdd runs_on\n | fieldsFlatten runs_on\n\n | lookup\n   [ fetch `dt.entity.cisco_cc:center` ], sourceField:`runs_on.dt.entity.cisco_cc:center`, lookupField:id\n   | fields `lookup.entity.name`, `entity.name`\n   \n| fields `Catalyst Center`=`lookup.entity.name`, `Device`=`entity.name`\n\n| filter in(\"All\",array($CatalystCenter)) OR (`Catalyst Center` == $CatalystCenter)\n\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Devices",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "gauge.trend_line",
                "showTicks": true,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "visible": false
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2E5BD6",
                    "comparator": "≥",
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
                "added": 1754294209060,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.cisco_cc:interface`\n\n | fieldsAdd runs_on\n | fieldsFlatten runs_on\n\n | lookup\n   [ fetch `dt.entity.cisco_cc:device` ], sourceField:`runs_on.dt.entity.cisco_cc:device`, lookupField:id\n | fieldsFlatten `lookup.runs_on`\n\n| fields `Device`=`lookup.entity.name`, `Interface`=`entity.name`, `runs_on.dt.entity.cisco_cc:device`, `CC`=`lookup.runs_on.dt.entity.cisco_cc:center`\n\n| lookup\n [ fetch `dt.entity.cisco_cc:center` ], sourceField:`CC`, lookupField:id\n| fields `Catalyst Center`=`lookup.entity.name`, `Device`, `Interface`\n\n| filter in(\"All\",array($CatalystCenter)) OR (`Catalyst Center` == $CatalystCenter)\n\n| summarize count()",
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
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "series.oper_status.trend_line",
                "showTicks": true,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "visible": false
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2E5BD6",
                    "comparator": "≥",
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
                "added": 1754294305536,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "8": {
          "content": "## Catalyst Centers",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { \n  `Health Score (Center)` = avg(cisco.cc.center.health_score, scalar: true), \n  `Clients Health Score (Wired)` = avg(cisco.cc.client.health_score, scalar: true, filter: { client_type == \"WIRED\" }), \n  `Clients Health Score (Wireless)` = avg(cisco.cc.client.health_score, scalar: true, filter: { client_type == \"WIRELESS\" }) \n}, by: { `dt.entity.cisco_cc:center` }, union: true\n| fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n| filter if (in(\"All\",array($CatalystCenter)), true, else: $CatalystCenter==`Catalyst Center`)\n| sort `Health Score (Center)` desc\n| fields `dt.entity.cisco_cc:center`,`Catalyst Center`, `Health Score (Center)`, `Clients Health Score (Wired)`,`Clients Health Score (Wireless)`\n//| fields `Catalyst Center`, `Health Score (Center)`, `Clients Health Score (Wired)`,`Clients Health Score (Wireless)`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Catalyst Center (current)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "end",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "end"
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"dt.entity.cisco_cc:center\"]",
                "[\"Catalyst Center\"]",
                "[\"Health Score (Center)\"]",
                "[\"Clients Health Score (Wired)\"]",
                "[\"Clients Health Score (Wireless)\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [],
                  "id": 155087.5,
                  "value": "text"
                }
              ],
              "hiddenColumns": [
                [
                  "dt.entity.cisco_cc:center"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": true,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false
            },
            "thresholds": [
              {
                "field": "Health Score (Center)",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "Clients Health Score (Wired)",
                "id": "1",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              },
              {
                "field": "Clients Health Score (Wireless)",
                "id": "2",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
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
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "health_score",
                "identifier": "Health Score (Center)",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "health_score.0",
                "identifier": "Clients Health Score (Wired)",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 2,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "health_score.1",
                "identifier": "Clients Health Score (Wireless)",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": "All",
          "editable": true,
          "input": "data (record(distinctCatalistCenter =  \"All\"))\n| append [\n  timeseries health_score = avg(cisco.cc.center.health_score, scalar: true), by: { `dt.entity.cisco_cc:center` }\n  | filterOut isNull(`dt.entity.cisco_cc:center`)\n  | fieldsAdd `Catalyst Center`=entityName(`dt.entity.cisco_cc:center`)\n  | fields `dt.entity.cisco_cc:center`, `Catalyst Center`\n  | summarize distinctCatalistCenter = collectDistinct(`Catalyst Center`)\n  //| summarize distinctCatalistCenter = collectDistinct(`dt.entity.cisco_cc:center`)\n  | expand distinctCatalistCenter\n  | sort distinctCatalistCenter\n]",
          "key": "CatalystCenter",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-cisco-cc-catalyst-center-overview"
  # private = false
}
