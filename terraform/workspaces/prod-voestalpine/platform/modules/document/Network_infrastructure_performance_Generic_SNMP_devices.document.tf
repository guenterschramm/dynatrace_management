resource "dynatrace_document" "Network_infrastructure_performance_Generic_SNMP_devices" {
  name      = "Network infrastructure performance (Generic SNMP devices)"
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
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
        },
        "11": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 10
        },
        "15": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 23
        },
        "16": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 24
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
          "y": 31
        },
        "21": {
          "h": 6,
          "w": 19,
          "x": 0,
          "y": 11
        },
        "22": {
          "h": 6,
          "w": 40,
          "x": 0,
          "y": 25
        },
        "23": {
          "h": 6,
          "w": 19,
          "x": 0,
          "y": 17
        },
        "24": {
          "h": 6,
          "w": 21,
          "x": 19,
          "y": 17
        },
        "25": {
          "h": 6,
          "w": 19,
          "x": 19,
          "y": 11
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 4
        },
        "6": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 5
        },
        "7": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "8": {
          "h": 3,
          "w": 16,
          "x": 12,
          "y": 5
        },
        "9": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 8
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
          "content": "## Network infrastructure performance (Generic SNMP devices)\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-device/configs)\n#### [📖 Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-device/details)",
          "type": "markdown"
        },
        "10": {
          "content": "## Metric Summary 📈\n",
          "type": "markdown"
        },
        "11": {
          "content": "### Traffic",
          "type": "markdown"
        },
        "15": {
          "content": "\n",
          "type": "markdown"
        },
        "16": {
          "content": "### TCP Stats",
          "type": "markdown"
        },
        "2": {
          "content": "![](https://dt-cdn.net/hub/logos/snmp-generic.png)",
          "type": "markdown"
        },
        "20": {
          "content": "\n",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  octets_in = avg(`com.dynatrace.extension.snmp-generic-device.if.in.octets.count`, rate: 1s),\n  octets_out = avg(`com.dynatrace.extension.snmp-generic-device.if.out.octets.count`, rate: 1s)\n}\n| fields {\n    bits_in = octets_in[] * 8,\n    bits_out = octets_in[] * 8,\n    timeframe, interval\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "32bit counters",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "octets_in_per_sec",
                "upper": "octets_out_per_sec"
              },
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
                  "bits_in",
                  "bits_out"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Octets received (high capacity) • Octets transmitted (high capacity)",
                "scale": "linear"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {},
              "tooltip": {},
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
              "labels": {
                "showLabels": false
              },
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
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
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
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1753090300631,
                "baseUnit": "bitps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bits_in",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1753090435937,
                "baseUnit": "bitps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bits_out",
                "suffix": "",
                "unitCategory": "datarate"
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
          "query": "timeseries {\n  opens = avg(`com.dynatrace.extension.snmp-generic-device.tcp.passiveopens.count`),\n  rst = avg(`com.dynatrace.extension.snmp-generic-device.tcp.out.rsts.count`),\n  sent = avg(`com.dynatrace.extension.snmp-generic-device.tcp.hc.out.segs.count`),\n  received = avg(`com.dynatrace.extension.snmp-generic-device.tcp.hc.in.segs.count`)\n}, by: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device`}\n| lookup [\n    fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_device`\n    | fields {id, entity.name, device=record(displayName=entity.name)}\n],\nsourceField: `dt.entity.snmp:com_dynatrace_extension_snmp_generic_device`,\nlookupField: id,\nfields: {device}\n| fieldsAdd {\n  passive_opens = arraySum(opens),\n  segments_reset = arraySum(rst),\n  segments_sent = arraySum(sent),\n  segments_received = arraySum(sent)\n}\n| fieldsRemove {\n  `dt.entity.snmp:com_dynatrace_extension_snmp_generic_device`,\n  opens,\n  rst,\n  sent,\n  received\n}",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "interval"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "TCP passive opens • TCP segment resets • TCP segments sent • TCP segments received"
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
              "labels": {
                "showLabels": false
              },
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
                "[\"device\",\"displayName\"]",
                "[\"passive_opens\"]",
                "[\"segments_reset\"]",
                "[\"segments_sent\"]",
                "[\"segments_received\"]"
              ],
              "columnTypeOverrides": [],
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
          "query": "timeseries {\n  segments_sent = avg(`com.dynatrace.extension.snmp-generic-device.tcp.hc.in.segs.count`),\n  segments_received = avg(`com.dynatrace.extension.snmp-generic-device.tcp.hc.out.segs.count`)\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Overall TCP Traffic",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "segments_sent",
                "upper": "segments_received"
              },
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
                  "segments_sent",
                  "segments_received"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "TCP segments received • TCP segments sent"
              },
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
                    "segments_sent",
                    "segments_received"
                  ],
                  "id": 1747943563459,
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  datagrams_sent = avg(`com.dynatrace.extension.snmp-generic-device.udp.hc.in.datagrams.count`),\n  datagrams_received = avg(`com.dynatrace.extension.snmp-generic-device.udp.hc.out.datagrams.count`)\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Overall UDP Traffic",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "datagrams_sent",
                "upper": "datagrams_received"
              },
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
                  "datagrams_sent",
                  "datagrams_received"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "UDP datagrams delivered • UDP datagrams sent"
              },
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
                    "datagrams_sent",
                    "datagrams_received"
                  ],
                  "id": 1747943767577,
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
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  octets_in = avg(`com.dynatrace.extension.snmp-generic-device.if.hc.in.octets.count`, rate: 1s),\n  octets_out = avg(`com.dynatrace.extension.snmp-generic-device.if.hc.out.octets.count`, rate: 1s)\n}\n| fields {\n    bits_in = octets_in[] * 8,\n    bits_out = octets_in[] * 8,\n    timeframe, interval\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "64bit counters",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "octets_in_per_sec",
                "upper": "octets_out_per_sec"
              },
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
                "leftAxisValues": [],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Octets received (high capacity) • Octets transmitted (high capacity)",
                "scale": "linear"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {},
              "tooltip": {},
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
              "labels": {
                "showLabels": false
              },
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
                    "bits_in",
                    "bits_out"
                  ],
                  "id": 1753090476291,
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
            "unitsOverrides": [
              {
                "added": 1753090300631,
                "baseUnit": "bitps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bits_in",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1753090435937,
                "baseUnit": "bitps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bits_out",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "title": "",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_device`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Devices",
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_device_interface`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Interfaces",
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
        "8": {
          "content": "#### 🔗 Navigate to entities: [Network Devices](/ui/apps/dynatrace.infraops/explorer/Network%20devices?perspective=Health\u0026sort=type%3Aascending#filtering=\"Discovered+type\"+%3Dgeneric)",
          "type": "markdown"
        },
        "9": {
          "content": "\n",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-snmp-generic-device-overview--1252116651"
  # private = false
}
