resource "dynatrace_document" "Tibco_EMS_Overview" {
  name      = "Tibco EMS Overview"
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
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 10
        },
        "11": {
          "h": 4,
          "w": 13,
          "x": 0,
          "y": 11
        },
        "12": {
          "h": 4,
          "w": 13,
          "x": 13,
          "y": 11
        },
        "13": {
          "h": 4,
          "w": 13,
          "x": 26,
          "y": 11
        },
        "14": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 15
        },
        "15": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 16
        },
        "16": {
          "h": 4,
          "w": 13,
          "x": 0,
          "y": 17
        },
        "17": {
          "h": 4,
          "w": 13,
          "x": 13,
          "y": 17
        },
        "18": {
          "h": 4,
          "w": 13,
          "x": 26,
          "y": 17
        },
        "19": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 21
        },
        "2": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 0
        },
        "20": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 22
        },
        "21": {
          "h": 4,
          "w": 13,
          "x": 0,
          "y": 23
        },
        "22": {
          "h": 4,
          "w": 13,
          "x": 13,
          "y": 23
        },
        "23": {
          "h": 4,
          "w": 13,
          "x": 26,
          "y": 23
        },
        "24": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 27
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
          "w": 6,
          "x": 12,
          "y": 5
        },
        "7": {
          "h": 3,
          "w": 22,
          "x": 18,
          "y": 5
        },
        "8": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 8
        },
        "9": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
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
          "content": "## Overview of Tibco EMS extension data\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.tibcoems/configs)\n#### [📖 Documentation]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.tibcoems/details)",
          "type": "markdown"
        },
        "10": {
          "content": "### Tibco EMS Queue",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`EMS2.QueueDepth`),\n  metric2=avg(`EMS2.QueueMsgSize`)\n},\nby: {`dt.entity.tibco:queue`}\n| fieldsAdd entity_name = entityName(`dt.entity.tibco:queue`)\n| fieldsAdd entity_id = `dt.entity.tibco:queue`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Queue Depth` = arrayLast(metric1)\n| fieldsAdd `Queue pending message size` = arrayLast(metric2)\n| sort entity_name asc\n| fields entity, `Queue Depth`, `Queue pending message size`\n| limit 20",
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
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.QueueDepth`), by: {`dt.entity.tibco:queue`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:queue`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:queue`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue Depth",
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
                "label": "Outbound message count rate"
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.QueueMsgSize`), by: {`dt.entity.tibco:queue`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:queue`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:queue`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue pending message size",
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
                "label": "Outbound message count rate"
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
        "14": {
          "content": "\n",
          "type": "markdown"
        },
        "15": {
          "content": "### Tibco EMS Topic",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`EMS2.TopicMsgDepth`),\n  metric2=avg(`EMS2.TopicMsgSize`)\n},\nby: {`dt.entity.tibco:topic`}\n| fieldsAdd entity_name = entityName(`dt.entity.tibco:topic`)\n| fieldsAdd entity_id = `dt.entity.tibco:topic`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Topic message depth` = arrayLast(metric1)\n| fieldsAdd `Topic message Size` = arrayLast(metric2)\n| sort entity_name asc\n| fields entity, `Topic message depth`, `Topic message Size`\n| limit 20",
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
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.TopicMsgDepth`), by: {`dt.entity.tibco:topic`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:topic`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:topic`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Topic message depth",
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
                "label": "Outbound message count rate"
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
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.TopicMsgSize`), by: {`dt.entity.tibco:topic`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:topic`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:topic`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Topic message Size",
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
                "label": "Outbound message count rate"
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
        "19": {
          "content": "\n",
          "type": "markdown"
        },
        "2": {
          "content": "![](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)",
          "type": "markdown"
        },
        "20": {
          "content": "### Tibco EMS Broker",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`EMS2.BrokerInboundMsgCountRate`),\n  metric2=avg(`EMS2.BrokerOutboundMsgCountRate`)\n},\nby: {`dt.entity.tibco:broker`}\n| fieldsAdd entity_name = entityName(`dt.entity.tibco:broker`)\n| fieldsAdd entity_id = `dt.entity.tibco:broker`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Inbound message count rate` = arrayLast(metric1)\n| fieldsAdd `Outbound message count rate` = arrayLast(metric2)\n| sort entity_name asc\n| fields entity, `Inbound message count rate`, `Outbound message count rate`\n| limit 20",
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
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.BrokerInboundMsgCountRate`), by: {`dt.entity.tibco:broker`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:broker`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:broker`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inbound message count rate",
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
                "label": "Outbound message count rate"
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
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`EMS2.BrokerOutboundMsgCountRate`), by: {`dt.entity.tibco:broker`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.tibco:broker`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.tibco:broker`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Outbound message count rate",
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
                "label": "Outbound message count rate"
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
        "24": {
          "content": "\n",
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
          "query": "fetch `dt.entity.tibco:broker`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tibco EMS Broker",
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
          "query": "fetch `dt.entity.tibco:queue`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tibco EMS Queue",
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.tibco:topic`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tibco EMS Topic",
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
        "7": {
          "content": "#### 🔗 Navigate to entities:\n* [Tibco EMS Broker]($TenantUrl/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.tibcoems/tibco:broker)\n* [Tibco EMS Queue]($TenantUrl/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.tibcoems/tibco:queue)\n* [Tibco EMS Topic]($TenantUrl/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.tibcoems/tibco:topic)",
          "type": "markdown"
        },
        "8": {
          "content": "\n",
          "type": "markdown"
        },
        "9": {
          "content": "## Metric Summary 📈\n",
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
  custom_id = "com-dynatrace-extension-tibcoems-tibco-ems-overview"
  # private = false
}
