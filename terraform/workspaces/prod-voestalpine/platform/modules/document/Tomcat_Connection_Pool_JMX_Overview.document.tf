resource "dynatrace_document" "Tomcat_Connection_Pool_JMX_Overview" {
  name      = "Tomcat Connection Pool JMX Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 37,
          "x": 3,
          "y": 0
        },
        "10": {
          "h": 5,
          "w": 12,
          "x": 14,
          "y": 11
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 26,
          "y": 11
        },
        "12": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 16
        },
        "13": {
          "h": 1,
          "w": 17,
          "x": 0,
          "y": 17
        },
        "14": {
          "h": 5,
          "w": 17,
          "x": 0,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 20,
          "x": 18,
          "y": 18
        },
        "16": {
          "h": 1,
          "w": 17,
          "x": 18,
          "y": 17
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
          "w": 34,
          "x": 6,
          "y": 5
        },
        "6": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 8
        },
        "7": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
        },
        "8": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 10
        },
        "9": {
          "h": 5,
          "w": 14,
          "x": 0,
          "y": 11
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
          "content": "## Overview of Tomcat Connection Pool JMX extension data\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.jmx-tomcat-cp/configs)\n#### [📖 Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.jmx-tomcat-cp/details)",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`tomcat.connectionPool.activeConnections`), by: {`dt.entity.jmx:connection_pool_tomcat`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.jmx:connection_pool_tomcat`)\n| fieldsRemove `dt.entity.jmx:connection_pool_tomcat`\n| limit 20\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active connections",
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
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "average"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Bytes sent"
              },
              "pointsDisplay": "never",
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
          "query": "timeseries average = avg(`tomcat.connectionPool.createdConnections`), by: {`dt.entity.jmx:connection_pool_tomcat`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.jmx:connection_pool_tomcat`)\n| fieldsRemove `dt.entity.jmx:connection_pool_tomcat`\n| limit 20\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Created connections",
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
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "average"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Bytes sent"
              },
              "pointsDisplay": "never",
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
          "content": "\n",
          "type": "markdown"
        },
        "13": {
          "content": "### Thread pools",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\nbusy = avg(`tomcat.threadPool.currentThreadsBusy`),\nmax = avg(`tomcat.threadPool.maxThreads`)\n},\nby: {`name`, `dt.entity.process_group_instance`, dt.entity.host}\n| fieldsAdd pgi_name = entityName(dt.entity.process_group_instance), host_name = entityName(dt.entity.host)\n| fieldsRemove dt.entity.host, dt.entity.process_group_instance\n| fieldsAdd util = 100 * busy[] / max[]\n| fieldsRemove busy, max\n| fields host_name, pgi_name, name, interval, timeframe, util\n| limit 20\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Thread pool utilization",
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
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "util"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "average"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Bytes sent"
              },
              "legend": {
                "hidden": false
              },
              "pointsDisplay": "never",
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
                    "util"
                  ],
                  "id": 1753865420369,
                  "value": "sparkline"
                }
              ],
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1753865456852,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "util",
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
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`tomcat.processingTime.count`),\n  metric2=avg(`tomcat.requestCount.count`),\n  metric3=avg(`tomcat.errorCount.count`)\n},\nby: {dt.entity.host, dt.entity.process_group_instance, name}\n| fieldsAdd host_name = entityName(`dt.entity.host`)\n| fieldsAdd host_id = `dt.entity.host`\n| fieldsAdd host_url = concat(\"/ui/apps/dynatrace.classic.technologies/ui/entity/\", host_id)\n| fieldsAdd `Host` = concat(\"[\", host_name, \"]\", \"(\", host_url, \")\")\n| fieldsAdd pgi_name = entityName(`dt.entity.process_group_instance`)\n| fieldsAdd pgi_id = `dt.entity.process_group_instance`\n| fieldsAdd pgi_url = concat(\"/ui/apps/dynatrace.classic.technologies/ui/entity/\", pgi_id)\n| fieldsAdd `Process` = concat(\"[\", pgi_name, \"]\", \"(\", pgi_url, \")\")\n| fieldsAdd `Processing time / req` = arraySum(metric1) / arraySum(metric2)\n| fieldsAdd `Error count` = arraySum(metric3)\n| fields `Host`, `Process`, `Name` = name, `Processing time / req`, `Error count`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Web requests",
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
              "columnOrder": [
                "[\"Host\"]",
                "[\"Process\"]",
                "[\"Name\"]",
                "[\"Processing time / req\"]",
                "[\"Error count\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Host"
                  ],
                  "id": 913702.4000000004,
                  "value": "markdown"
                },
                {
                  "fields": [
                    "Process"
                  ],
                  "id": 1444768,
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
            "unitsOverrides": [
              {
                "added": 1753865884411,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Processing time / req",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1753866054159,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Error count",
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
        "16": {
          "content": "### Web requests\n",
          "type": "markdown"
        },
        "2": {
          "content": "![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Apache_Tomcat_logo.svg/1200px-Apache_Tomcat_logo.svg.png)",
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
          "query": "fetch `dt.entity.jmx:connection_pool_tomcat`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tomcat Connection Pool",
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
          "content": "#### 🔗 Navigate to entities:\n* [Tomcat Connection Pool](/ui/apps/dynatrace.classic.technologies/ui/entity/list/jmx:connection_pool_tomcat)",
          "type": "markdown"
        },
        "6": {
          "content": "\n",
          "type": "markdown"
        },
        "7": {
          "content": "## Metric Summary 📈\n",
          "type": "markdown"
        },
        "8": {
          "content": "### Connection pools\n",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`tomcat.connectionPool.activeConnections`),\n  metric2=avg(`tomcat.connectionPool.createdConnections`)\n},\nby: {`dt.entity.jmx:connection_pool_tomcat`}\n| fieldsAdd entity_name = entityName(`dt.entity.jmx:connection_pool_tomcat`)\n| fieldsAdd entity_id = `dt.entity.jmx:connection_pool_tomcat`\n| fieldsAdd entity_url = concat(\"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd `Tomcat connection pool` = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Active connections` = arrayAvg(metric1)\n| fieldsAdd `Created connections` = arrayAvg(metric2)\n| fields `Tomcat connection pool`, `Active connections`, `Created connections`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tomcat connection pools",
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
              "columnOrder": [
                "[\"Tomcat connection pool\"]",
                "[\"Active connections\"]",
                "[\"Created connections\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Tomcat connection pool"
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
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "dashboard-1325281799"
  # private = false
}
