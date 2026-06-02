resource "dynatrace_document" "Logs_Breakdown" {
  name    = "Logs Breakdown"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 7,
          "w": 7,
          "x": 0,
          "y": 0
        },
        "4": {
          "h": 16,
          "w": 20,
          "x": 0,
          "y": 7
        },
        "8": {
          "h": 7,
          "w": 13,
          "x": 7,
          "y": 0
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| summarize count(), by: {dt.host_group.id}, alias: lines\n| sort lines desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Current Loglines per Hostgroup",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.host_group.id"
                ],
                "categoryAxisLabel": "dt.host_group.id",
                "tooltipVariant": "single",
                "valueAxis": [
                  "lines"
                ],
                "valueAxisLabel": "lines"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "dataMapping": {
              "value": "size"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "size"
                }
              ],
              "displayedFields": [
                "name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "name"
              },
              "displayedFields": [
                "name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "size",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "name",
              "prefixIcon": "",
              "recordField": "name",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"name\"]": 352.3999938964844
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "lines",
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
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| summarize count(), by: {dt.host_group.id,host.name,log.source}, alias: lines\n| sort lines desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
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
              "truncationMode": "middle",
              "valueRepresentation": "absolute"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "middle",
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
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "value",
              "columnOrder": [
                "[\"dt.host_group.id\"]",
                "[\"host.name\"]",
                "[\"log.source\"]",
                "[\"lines\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [
                [
                  "dt.host_group.id"
                ],
                [
                  "host.name"
                ],
                [
                  "log.source"
                ],
                [
                  "lines"
                ]
              ],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| summarize count(), by: {host.name}, alias: lines\n| sort lines desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Current Loglines per Host",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "host.name"
                ],
                "categoryAxisLabel": "host.name",
                "tooltipVariant": "single",
                "valueAxis": [
                  "lines"
                ],
                "valueAxisLabel": "lines"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "dataMapping": {
              "value": "size"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "size"
                }
              ],
              "displayedFields": [
                "name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "name"
              },
              "displayedFields": [
                "name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "size",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "name",
              "prefixIcon": "",
              "recordField": "name",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"name\"]": 352.3999938964844
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "lines",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [],
      "version": 19
    })
  private = true
}
