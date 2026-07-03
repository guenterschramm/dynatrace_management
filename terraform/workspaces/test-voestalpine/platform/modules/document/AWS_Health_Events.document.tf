resource "dynatrace_document" "AWS_Health_Events" {
  name      = "AWS Health Events"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "33": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 8
        },
        "35": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 2
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 2
        },
        "38": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "42": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 2
        },
        "58": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "65": {
          "h": 4,
          "w": 10,
          "x": 4,
          "y": 8
        },
        "66": {
          "h": 4,
          "w": 10,
          "x": 14,
          "y": 8
        },
        "67": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "68": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "71": {
          "h": 4,
          "w": 10,
          "x": 14,
          "y": 13
        },
        "72": {
          "h": 4,
          "w": 10,
          "x": 4,
          "y": 13
        },
        "73": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 13
        },
        "74": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "75": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 26
        }
      },
      "settings": {},
      "tiles": {
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"ACCOUNT_SPECIFIC\"\n    | summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total events",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "avg(arrayLast(x))",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "avg(arrayLast(x))"
              },
              "categoryOverrides": {
                "HEALTHY": {
                  "added": 1736767557331,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  }
                },
                "UNHEALTHY": {
                  "added": 1736767559620,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "z",
                "y"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "colorModeType": {
              "color": {
                "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-06-default, #2c2f3f)"
              },
              "customNumericColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "comparator": "≥",
                  "id": 1472765.6000000015,
                  "value": 20
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                  },
                  "comparator": "≥",
                  "id": 1503513.6000000015,
                  "value": 10
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)"
                  },
                  "comparator": "≥",
                  "id": 1505757.700000003,
                  "value": 0
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [],
              "longitude": "avg(arrayLast(x))",
              "value": "avg(arrayLast(x))"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "avg(arrayLast(x))"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": false,
              "label": "Error Rate",
              "prefixIcon": "PercentIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
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
                "field": "avg(arrayLast(x))",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 10
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≤",
                    "id": 1,
                    "label": "",
                    "value": 20
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 20
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "unitsOverrides": [
              {
                "added": 1738243390540,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(arrayLast(x))",
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
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | summarize count(), by: {aws.region}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Account-specific health events by region",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "aws.region",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {},
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | summarize count(), by: {aws.account.id}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Health events by account",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.account.id"
                ],
                "categoryAxisLabel": "aws.account.id",
                "tooltipVariant": "single",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {},
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | filter in(aws.account.id, array($AccountId))\n    | filter in(aws.region, array($Region))\n    | parse data, \"JSON:content\"\n    | filter in(content[service], array($Service))\n    | filter in(content[statusCode], array($Status))\n    | filter in(content[eventTypeCategory], array($Category))\n    | fieldsFlatten content\n    | parse toString(content.eventDescription), \"\"\"JSON_ARRAY{JSON{}}:eventDescription\"\"\"\n    | expand eventDescription\n    | fieldsFlatten eventDescription\n    | fieldsKeep eventDescription.latestDescription, timestamp, id, dt.smartscape_source.id, aws.account.id, aws.region, content.eventScopeCode, content.service, content.statusCode, content.eventTypeCategory, content.eventTypeCode, content.startTime, content.lastUpdatedTime, content.endTime\n    | sort timestamp desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Account-specific health events",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "avg(arrayLast(x))",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "avg(arrayLast(x))"
              },
              "categoryOverrides": {
                "HEALTHY": {
                  "added": 1736767557331,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  }
                },
                "UNHEALTHY": {
                  "added": 1736767559620,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "z",
                "y"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "colorModeType": {
              "color": {
                "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-06-default, #2c2f3f)"
              },
              "customNumericColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "comparator": "≥",
                  "id": 1472765.6000000015,
                  "value": 20
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                  },
                  "comparator": "≥",
                  "id": 1503513.6000000015,
                  "value": 10
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)"
                  },
                  "comparator": "≥",
                  "id": 1505757.700000003,
                  "value": 0
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [],
              "longitude": "avg(arrayLast(x))",
              "value": "avg(arrayLast(x))"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "avg(arrayLast(x))"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": false,
              "label": "Error Rate",
              "prefixIcon": "PercentIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"timestamp\"]",
                "[\"aws.account.id\"]",
                "[\"id\"]",
                "[\"aws.region\"]",
                "[\"dt.smartscape_source.id\"]",
                "[\"content.service\"]",
                "[\"content.eventTypeCode\"]",
                "[\"content.eventTypeCategory\"]",
                "[\"content.startTime\"]",
                "[\"content.lastUpdatedTime\"]",
                "[\"content.statusCode\"]",
                "[\"content.endTime\"]",
                "[\"eventDescription.latestDescription\"]",
                "[\"content.eventScopeCode\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "avg(arrayLast(x))",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 10
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≤",
                    "id": 1,
                    "label": "",
                    "value": 20
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 20
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "unitsOverrides": [
              {
                "added": 1738243390540,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(arrayLast(x))",
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
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | fields service = json[service]\n    | summarize count(), by: {service}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Account-specific health events by service",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "service",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {},
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "58": {
          "content": "### AWS Health events\nGet an overview of your account-specific and public health events, based on several categories. Further on, use the filters to analyze all events and their full descriptions.\n\n---",
          "type": "markdown"
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"ACCOUNT_SPECIFIC\"\n    | fields status = json[statusCode]\n    | summarize count(), by: {status}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Events by status",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Status",
                "isCategoryLabelVisible": true,
                "isValueLabelVisible": false,
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"ACCOUNT_SPECIFIC\"\n    | fields category = json[eventTypeCategory]\n    | summarize count(), by: {category}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Events by category",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Category",
                "isValueLabelVisible": false,
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "67": {
          "content": "##### Account-specific events",
          "type": "markdown"
        },
        "68": {
          "content": "##### Public events",
          "type": "markdown"
        },
        "71": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"PUBLIC\"\n    | fields category = json[eventTypeCategory]\n    | summarize count(), by: {category}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Events by category",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Category",
                "isValueLabelVisible": false,
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"PUBLIC\"\n    | fields status = json[statusCode]\n    | summarize count(), by: {status}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Events by status",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Status",
                "isCategoryLabelVisible": true,
                "isValueLabelVisible": false,
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingName": "",
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "max": "auto",
                "min": 0
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "count()"
                }
              ],
              "displayedFields": [
                "cloud.region[0]"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "cloud.region[0]"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "count()",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "count()",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch events\n    | filter cloud.provider == \"aws\"\n    | filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n    | parse data, \"JSON:json\"\n    | filter json[eventScopeCode] == \"PUBLIC\"\n    | summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total events",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "avg(arrayLast(x))",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "avg(arrayLast(x))"
              },
              "categoryOverrides": {
                "HEALTHY": {
                  "added": 1736767557331,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  }
                },
                "UNHEALTHY": {
                  "added": 1736767559620,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "z",
                "y"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "colorModeType": {
              "color": {
                "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-06-default, #2c2f3f)"
              },
              "customNumericColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "comparator": "≥",
                  "id": 1472765.6000000015,
                  "value": 20
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                  },
                  "comparator": "≥",
                  "id": 1503513.6000000015,
                  "value": 10
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)"
                  },
                  "comparator": "≥",
                  "id": 1505757.700000003,
                  "value": 0
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [],
              "longitude": "avg(arrayLast(x))",
              "value": "avg(arrayLast(x))"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "avg(arrayLast(x))"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": false,
              "label": "Error Rate",
              "prefixIcon": "PercentIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
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
                "field": "avg(arrayLast(x))",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 10
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≤",
                    "id": 1,
                    "label": "",
                    "value": 20
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 20
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "unitsOverrides": [
              {
                "added": 1738243390540,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(arrayLast(x))",
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
        "74": {
          "content": "##### All events",
          "type": "markdown"
        },
        "75": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch events\n| filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
          "key": "AccountId",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch events\n| filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch events\n| filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n| parse data, \"JSON:json\"\n| fields service = json[service]\n| dedup service\n| sort service",
          "key": "Service",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch events\n| filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n| parse data, \"JSON:json\"\n| fields status = json[statusCode]\n| dedup status\n| sort status",
          "key": "Status",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch events\n| filter event.type == \"AWS Health Event\" OR event.type == \"AWS Health Abuse Event\"\n| parse data, \"JSON:json\"\n| fields category = json[eventTypeCategory]\n| dedup category\n| sort category",
          "key": "Category",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 26
    })
  custom_id = "dynatrace.clouds.aws-health-events"
  # private = false
}
