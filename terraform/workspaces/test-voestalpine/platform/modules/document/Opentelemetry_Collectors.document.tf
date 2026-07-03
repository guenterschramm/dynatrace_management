resource "dynatrace_document" "Opentelemetry_Collectors" {
  name      = "Opentelemetry Collectors"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 7,
          "w": 7,
          "x": 0,
          "y": 10
        },
        "10": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 0
        },
        "11": {
          "h": 2,
          "w": 7,
          "x": 0,
          "y": 8
        },
        "12": {
          "h": 2,
          "w": 7,
          "x": 7,
          "y": 8
        },
        "13": {
          "h": 2,
          "w": 7,
          "x": 14,
          "y": 8
        },
        "14": {
          "h": 3,
          "w": 16,
          "x": 5,
          "y": 0
        },
        "2": {
          "h": 7,
          "w": 7,
          "x": 7,
          "y": 10
        },
        "3": {
          "h": 7,
          "w": 7,
          "x": 14,
          "y": 10
        },
        "4": {
          "h": 7,
          "w": 7,
          "x": 0,
          "y": 17
        },
        "5": {
          "h": 7,
          "w": 7,
          "x": 7,
          "y": 17
        },
        "6": {
          "h": 7,
          "w": 7,
          "x": 14,
          "y": 17
        },
        "7": {
          "h": 5,
          "w": 7,
          "x": 0,
          "y": 3
        },
        "8": {
          "h": 5,
          "w": 7,
          "x": 7,
          "y": 3
        },
        "9": {
          "h": 5,
          "w": 7,
          "x": 14,
          "y": 3
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
          "query": "timeseries sum(otelcol_exporter_sent_metric_points.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Metrics Sent",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
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
                  "sum(otelcol_exporter_sent_metric_points.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Metrics Sent"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_sent_metric_points.count)"
                  ],
                  "id": 1740504005898,
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
        "10": {
          "davis": {
            "enabled": false
          },
          "query": "fetch `dt.entity.otel:collector:instance`\n| summarize count(), alias: collectors",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total Collector instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "collectors"
                ],
                "categoryAxisLabel": "collectors",
                "tooltipVariant": "single",
                "valueAxis": [
                  "collectors"
                ],
                "valueAxisLabel": "collectors"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "collectors"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "square"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "label": "hosts",
              "prefixIcon": "",
              "recordField": "collectors",
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
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "11": {
          "davis": {
            "enabled": false
          },
          "query": "timeseries by:{`dt.entity.otel:collector:instance`}, {\n    metrics = avg(otelcol_exporter_sent_metric_points.count)\n  }\n| fieldsAdd intervalSeconds = toLong(interval) / 1000000000\n| fieldsAdd metricVolume = (arraySum(metrics)) * 8 * intervalSeconds\n| summarize sum(metricVolume), alias: metrics_sent",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total Metrics Sent",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "metrics_sent"
                ],
                "categoryAxisLabel": "metrics_sent",
                "tooltipVariant": "single",
                "valueAxis": [
                  "metrics_sent"
                ],
                "valueAxisLabel": "metrics_sent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "metrics_sent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "square"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "label": "traffic_gb",
              "prefixIcon": "",
              "recordField": "metrics_sent",
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
              "lineWrapIds": [
                [
                  "content"
                ]
              ],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1701249745190,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "traffic_gb",
                "suffix": "",
                "unitCategory": "data"
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
            "enabled": false
          },
          "query": "timeseries by:{`dt.entity.otel:collector:instance`}, {\n    spans = avg(otelcol_exporter_sent_spans.count)\n  }\n| fieldsAdd intervalSeconds = toLong(interval) / 1000000000\n| fieldsAdd spansVolume = (arraySum(spans)) * 8 * intervalSeconds\n| summarize sum(spansVolume), alias: spans_sent",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total Spans Sent",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "spans_sent"
                ],
                "categoryAxisLabel": "spans_sent",
                "tooltipVariant": "single",
                "valueAxis": [
                  "spans_sent"
                ],
                "valueAxisLabel": "spans_sent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "spans_sent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "square"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "label": "traffic_gb",
              "prefixIcon": "",
              "recordField": "spans_sent",
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
              "lineWrapIds": [
                [
                  "content"
                ]
              ],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1701249745190,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "traffic_gb",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "13": {
          "davis": {
            "enabled": false
          },
          "query": "timeseries by:{`dt.entity.otel:collector:instance`}, {\n    records = avg(otelcol_exporter_sent_log_records.count)\n  }\n| fieldsAdd intervalSeconds = toLong(interval) / 1000000000\n| fieldsAdd logVolume = (arraySum(records)) * 8 * intervalSeconds\n| summarize sum(logVolume), alias: log_records",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total Log Records Sent",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "log_records"
                ],
                "categoryAxisLabel": "log_records",
                "tooltipVariant": "single",
                "valueAxis": [
                  "log_records"
                ],
                "valueAxisLabel": "log_records"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "log_records"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "square"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "label": "traffic_gb",
              "prefixIcon": "",
              "recordField": "log_records",
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
              "lineWrapIds": [
                [
                  "content"
                ]
              ],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1701249745190,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "traffic_gb",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "14": {
          "content": "### Collector services: \n\n## [$Service](/ui/apps/dynatrace.classic.technologies/ui/nav/$ServiceID)\n",
          "title": "",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(otelcol_exporter_sent_spans.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Spans Sent",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "apdex",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(otelcol_exporter_sent_spans.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Spans Sent"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_sent_spans.count)"
                  ],
                  "id": 1740504937594,
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
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(otelcol_exporter_sent_log_records.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log Records",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "purple-rain",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(otelcol_exporter_sent_log_records.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Log Records"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_sent_log_records.count)"
                  ],
                  "id": 1740504937732,
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
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(otelcol_exporter_send_failed_metric_points.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Metric Sending Errors",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "fireplace",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(otelcol_exporter_send_failed_metric_points.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Metrics Sent"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_send_failed_metric_points.count)"
                  ],
                  "id": 1740507860990,
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
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(otelcol_exporter_send_failed_spans.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Spans Sending Errors",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "fireplace",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(otelcol_exporter_send_failed_spans.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Spans Sending Errors"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_send_failed_spans.count)"
                  ],
                  "id": 1740505427025,
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(otelcol_exporter_send_failed_log_records.count), \nby: { `dt.entity.otel:collector:service`}\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log Records Sending Errors",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.entity.otel:collector:service",
                  "service_name"
                ],
                "categoryAxisLabel": "dt.entity.otel:collector:service,service_name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "fireplace",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(otelcol_exporter_send_failed_log_records.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Spans Sending Errors"
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.otel:collector:service"
              ],
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
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sum(otelcol_exporter_send_failed_log_records.count)"
                  ],
                  "id": 1740507861066,
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries cpu_seconds = sum(otelcol_process_cpu_seconds.count, rate: 1m), \nby: {  `dt.entity.otel:collector:service`, `dt.entity.otel:collector:instance`}\n| fieldsAdd cpu_pct = cpu_seconds[] / 60 * 100\n| fieldsAdd name = entityName(`dt.entity.otel:collector:instance`)\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)\n| fieldsRemove service_name, cpu_seconds, `dt.entity.otel:collector:instance`,  `dt.entity.otel:collector:service`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
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
                  "cpu_pct"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "dt.entity.otel:collector:instance",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Metrics Sent",
                "max": 100
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "name"
              ],
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
            "label": {
              "label": "interval",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "cpu_pct"
                  ],
                  "id": 1740506906933,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "interval"
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
                "added": 1740506916505,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_pct",
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
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries memory_rss = avg(otelcol_process_memory_rss, rate: 1m), \nby: {  `dt.entity.otel:collector:service`, `dt.entity.otel:collector:instance`}\n| fieldsAdd name = entityName(`dt.entity.otel:collector:instance`)\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)\n| fieldsRemove service_name, `dt.entity.otel:collector:instance`, `dt.entity.otel:collector:service`\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory RSS",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "memory_rss"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "dt.entity.otel:collector:instance",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Metrics Sent"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "name"
              ],
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
            "label": {
              "label": "interval",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "memory_rss"
                  ],
                  "id": 1740507861376,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "interval"
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
                "added": 1740506916505,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_pct",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries queue_size = sum(otelcol_exporter_queue_size, rate: 1m), \nby: {  `dt.entity.otel:collector:service`, `dt.entity.otel:collector:instance`}\n| fieldsAdd name = entityName(`dt.entity.otel:collector:instance`)\n| fieldsAdd service_name = entityName(`dt.entity.otel:collector:service`)\n| filter in(service_name, $Service)\n| fieldsRemove service_name, `dt.entity.otel:collector:instance`, `dt.entity.otel:collector:service`\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue Size",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "queue_size"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.otel:collector:service",
                "dt.entity.otel:collector:instance",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Metrics Sent"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "seriesOverrides": [],
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "name"
              ],
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
            "label": {
              "label": "interval",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "",
              "prefixIcon": "",
              "showLabel": true
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "queue_size"
                  ],
                  "id": 1740508797821,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "interval"
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
                "added": 1740506916505,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_pct",
                "suffix": "",
                "unitCategory": "data"
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
          "editable": true,
          "input": "fetch `dt.entity.otel:collector:service`\n| fieldsRemove id",
          "key": "Service",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "editable": false,
          "input": "fetch `dt.entity.otel:collector:service`\n| filter in(entity.name, $Service)\n| fields id",
          "key": "ServiceID",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": false
        }
      ],
      "version": 17
    })
  custom_id = "com-dynatrace-extension-otel-collector-collectors"
  # private = false
}
