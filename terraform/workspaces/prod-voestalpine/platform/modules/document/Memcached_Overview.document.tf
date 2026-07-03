resource "dynatrace_document" "Memcached_Overview" {
  name      = "Memcached Overview"
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
          "h": 6,
          "w": 13,
          "x": 0,
          "y": 11
        },
        "12": {
          "h": 6,
          "w": 21,
          "x": 13,
          "y": 11
        },
        "13": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 5
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
          "content": "## Overview of Memcached extension data\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.memcached/configs)\n#### [📖 Documentation]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.memcached/details)",
          "type": "markdown"
        },
        "10": {
          "content": "### Memcached Instances",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`memcached.cmd_get`),\n  metric2=avg(`memcached.cmd_set`),\n  metric3=avg(`memcached.get_misses`)\n},\nby: {`dt.entity.process_group_instance`}\n| fieldsAdd entity_name = entityName(`dt.entity.process_group_instance`)\n| fieldsAdd entity_id = `dt.entity.process_group_instance`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Get commands` = arrayLast(metric1)\n| fieldsAdd `Set commands` = arrayLast(metric2)\n| fieldsAdd `Get misses` = arrayLast(metric2)\n| sort entity_name asc\n| fields entity, `Get commands`, `Set commands`, `Get misses`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Usage",
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
          "query": "timeseries {\n  `Current connections` = avg(`memcached.curr_connections`)\n  }, by: { `dt.entity.process_group_instance` } \n| sort arrayAvg(`Current connections`) desc\n| fieldsAdd Instance=entityName(`dt.entity.process_group_instance`)\n| fieldsRemove `dt.entity.process_group_instance`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connections",
          "type": "data",
          "visualization": "lineChart",
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
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"Current connections\"]",
                "[\"Instance\"]"
              ],
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`memcached.cmd_get`)\n},\nby: {`dt.entity.process_group_instance`}\n| summarize `instances`= countDistinct(`dt.entity.process_group_instance`)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memcached instances",
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
              "showLabel": false
            },
            "table": {
              "columnOrder": [
                "[\"instances\"]"
              ],
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
        "2": {
          "content": "![](data:image/webp;base64,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)",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "title": "",
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
          "version": 1,
          "visible": false
        }
      ],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-memcached-memcached-overview"
  # private = false
}
