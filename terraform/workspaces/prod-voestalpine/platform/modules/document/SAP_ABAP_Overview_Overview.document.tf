resource "dynatrace_document" "SAP_ABAP_Overview_Overview" {
  name      = "SAP ABAP Overview Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": true,
      "layouts": {
        "1": {
          "h": 4,
          "w": 37,
          "x": 3,
          "y": 0
        },
        "10": {
          "h": 4,
          "w": 13,
          "x": 0,
          "y": 11
        },
        "11": {
          "h": 4,
          "w": 13,
          "x": 13,
          "y": 11
        },
        "12": {
          "h": 4,
          "w": 13,
          "x": 26,
          "y": 11
        },
        "13": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 15
        },
        "2": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 0
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 4
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 5
        },
        "5": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "6": {
          "h": 3,
          "w": 28,
          "x": 12,
          "y": 5
        },
        "7": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 8
        },
        "8": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
        },
        "9": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 10
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 40,
          "mode": "responsive"
        }
      },
      "tiles": {
        "1": {
          "content": "## Overview of SAP ABAP Overview extension data\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.ext.sap/configs)\n#### [📖 Documentation]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.ext.sap/details)",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`sap.avail`),\n  metric2=avg(`sap.runtimeErrorsByCat`)\n},\nby: {`dt.entity.sap:application_server`}\n| fieldsAdd entity_name = entityName(`dt.entity.sap:application_server`)\n| fieldsAdd entity_id = `dt.entity.sap:application_server`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Availability` = arrayLast(metric1)\n| fieldsAdd `Runtime errors` = arrayLast(metric2)\n| sort entity_name asc\n| fields entity, `Availability`, `Runtime errors`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Summary - last value",
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
              "columnTypeOverrides": [
                {
                  "fields": [
                    "entity"
                  ],
                  "id": 913702.4000000004,
                  "value": "markdown"
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
            "thresholds": [],
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
          "query": "timeseries average = avg(`sap.avail`), by: {`dt.entity.sap:application_server`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.sap:application_server`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.sap:application_server`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "average"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Availability"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
              "columnTypeOverrides": [
                {
                  "fields": [
                    "average"
                  ],
                  "id": 1746072737696,
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
            "thresholds": [],
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
          "query": "timeseries average = avg(`sap.runtimeErrorsByCat`), by: {`dt.entity.sap:application_server`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.sap:application_server`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.sap:application_server`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Runtime errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "average"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Runtime errors"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
              "columnTypeOverrides": [
                {
                  "fields": [
                    "average"
                  ],
                  "id": 1746072737696,
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
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "13": {
          "content": "\n",
          "type": "markdown"
        },
        "2": {
          "content": "![](https://dt-cdn.net/hub/1280px-SAP-Logo.svg-icon.png)",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "title": "",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.sap:system`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "SAP System",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "count()"
                ],
                "categoryAxisLabel": "count()",
                "tooltipVariant": "single",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
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
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                null
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "count()",
              "showLabel": false
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "count()",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "trendType": "auto",
                "visible": false
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
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
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
          "query": "fetch `dt.entity.sap:application_server`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "SAP Application Server",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "count()"
                ],
                "categoryAxisLabel": "count()",
                "tooltipVariant": "single",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
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
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                null
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "count()",
              "showLabel": false
            },
            "singleValue": {
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "count()",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area",
                "visible": false
              },
              "trend": {
                "isVisible": false,
                "relative": true,
                "trendType": "auto",
                "visible": false
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
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
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
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "6": {
          "content": "#### 🔗 Navigate to entities:\n* [SAP System]($TenantUrl/ui/apps/dynatrace.classic.technologies/ui/entity/list/sap:system)\n* [SAP Application Server]($TenantUrl/ui/apps/dynatrace.classic.technologies/ui/entity/list/sap:application_server)",
          "type": "markdown"
        },
        "7": {
          "content": "\n",
          "type": "markdown"
        },
        "8": {
          "content": "## Metric Summary 📈\n",
          "type": "markdown"
        },
        "9": {
          "content": "### SAP Application Server",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "input": "import { getEnvironmentUrl } from \"@dynatrace-sdk/app-environment\"\n\nexport default function () {\n  return [getEnvironmentUrl()];\n}",
          "key": "TenantUrl",
          "multiple": false,
          "type": "code",
          "visible": false
        }
      ],
      "version": 18
    })
  custom_id = "dashboard--1776920180"
  # private = false
}
