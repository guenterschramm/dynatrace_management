resource "dynatrace_document" "Cisco_Catalyst_Extension_Self-Monitoring" {
  name      = "Cisco Catalyst Extension Self-Monitoring"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 8,
          "w": 20,
          "x": 0,
          "y": 12
        },
        "1": {
          "h": 6,
          "w": 10,
          "x": 0,
          "y": 22
        },
        "10": {
          "h": 2,
          "w": 20,
          "x": 0,
          "y": 20
        },
        "11": {
          "h": 1,
          "w": 20,
          "x": 0,
          "y": 80
        },
        "12": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 44
        },
        "13": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 44
        },
        "14": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 51
        },
        "16": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 37
        },
        "17": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 37
        },
        "18": {
          "h": 2,
          "w": 20,
          "x": 0,
          "y": 28
        },
        "19": {
          "h": 12,
          "w": 20,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 30
        },
        "3": {
          "h": 7,
          "w": 14,
          "x": 0,
          "y": 73
        },
        "4": {
          "h": 6,
          "w": 10,
          "x": 10,
          "y": 22
        },
        "5": {
          "h": 7,
          "w": 10,
          "x": 10,
          "y": 30
        },
        "6": {
          "h": 7,
          "w": 14,
          "x": 0,
          "y": 66
        },
        "7": {
          "h": 7,
          "w": 14,
          "x": 0,
          "y": 59
        },
        "9": {
          "h": 1,
          "w": 20,
          "x": 0,
          "y": 58
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total duration of all Statistics Data Queries to collect data reported as metrics (excluding Discovery Data Queries for retrieving entity attributes).\n\nThe metric value should be slightly smaller—within a few seconds—than the configured Metrics Collection Frequency value.",
          "query": "timeseries { duration = avg(sfm.cisco.cc.monitor.run.duration), value.A = avg(sfm.cisco.cc.monitor.run.duration, scalar: true) }, by: { endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.monitor.run.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Overall Metrics Data Collection Time",
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "value.A"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Overall Collection Time"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {},
              "tooltip": {
                "variant": "single"
              },
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
                    "duration"
                  ],
                  "id": 1754487041132,
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total duration of all paged queries, used to collect interface metrics.",
          "query": "timeseries { `Statistics queries duration` = avg(sfm.cisco.cc.endpoint.fetch_ifaces_statistics.duration), value.A = avg(sfm.cisco.cc.endpoint.fetch_ifaces_statistics.duration, scalar: true), `Statistics Data Records` = max(sfm.cisco.cc.endpoint.fetch_ifaces_statistics.fetched_statistics), value.B = avg(sfm.cisco.cc.endpoint.fetch_ifaces_statistics.fetched_statistics, scalar: true) }, union: TRUE, by: { endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "Statistics queries duration",
                  "key": "sfm.cisco.cc.endpoint.fetch_ifaces_statistics.duration"
                }
              },
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "B",
                "isEnabled": true,
                "metric": {
                  "aggregation": "max",
                  "alias": "Statistics Data Records",
                  "key": "sfm.cisco.cc.endpoint.fetch_ifaces_statistics.fetched_statistics"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Total Interface Statistics Queries Duration",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Statistics queries duration",
                  "Statistics Data Records"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "value.A",
                "value.B"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Total Duration"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Statistics Data Records"
              },
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
                    "Statistics queries duration"
                  ],
                  "id": 1754651041030,
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "10": {
          "content": "---\n\u003e In large environments, Interface and Device Statistics Data Queries are the main contributors, in terms of the number of paged queries, to the **Overall Metrics Data Collection Time**.  The corresponding paged queries are scheduled and executed in parallel.  The following metric tracks the total duration of all scheduled paged queries.\n",
          "type": "markdown"
        },
        "11": {
          "content": "---",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Duration of the query topology.get_overall_network_health, used to collect overall network health metrics",
          "query": "timeseries { duration = avg(sfm.cisco.cc.topology.get_overall_network_health.duration), value.A = avg(sfm.cisco.cc.topology.get_overall_network_health.duration, scalar: true) }, by: { endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.topology.get_overall_network_health.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Network Health Statistics Data Query Duration",
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "avg(sfm.cisco.cc.topology.get_overall_network_health.duration)"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Query Duration"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "never",
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
                    "duration"
                  ],
                  "id": 1754493756140,
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
          "description": "Duration of the query clients.get_overall_client_health, used to collect overall clients health metrics",
          "query": "timeseries { duration = avg(sfm.cisco.cc.clients.get_overall_client_health.duration), value.A = avg(sfm.cisco.cc.clients.get_overall_client_health.duration, scalar: true) }, by: { endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.clients.get_overall_client_health.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Client Health Statistics Data Query Duration",
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "avg(sfm.cisco.cc.clients.get_overall_client_health.duration)"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754493756208,
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
            "unitsOverrides": [],
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
          "description": "Duration of the query issues.issues, used to collect issues data",
          "query": "timeseries { duration = avg(sfm.cisco.cc.issues.issues.duration), value.A = avg(sfm.cisco.cc.issues.issues.duration, scalar: true) }, by: { endpoint_url, issue_status }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url",
                  "issue_status"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.issues.issues.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Issues Data Query Duration by Issue Status",
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Parametrized Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754489146502,
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Duration of the paged query sites.get_site, used to collect site health metrics.",
          "query": "timeseries { duration = avg(sfm.cisco.cc.sites.get_site_health.duration), value.A = avg(sfm.cisco.cc.sites.get_site_health.duration, scalar: true) }, by: { offset, site_type, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "site_type",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.sites.get_site_health.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Site Health Statistics Data Query Duration by Site Type and Pagination Offset",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "Health",
                "upper": "Site Summary"
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "avg(sfm.cisco.cc.sites.get_site_health.duration)"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Parametrized Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754493756296,
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
            "unitsOverrides": [],
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
          "description": "Duration of the query topology.get_overall_network_health, used to collect overall network health metrics",
          "query": "timeseries { duration = avg(sfm.cisco.cc.sites.read_list_of_site_health_summaries.duration), value.B = avg(sfm.cisco.cc.sites.read_list_of_site_health_summaries.duration, scalar: true) }, by: { offset, site_type, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "site_type",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "B",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.sites.read_list_of_site_health_summaries.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Site Health Summaries Statistics Data Query Duration by Site Type and Pagination Offset",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "Health",
                "upper": "Site Summary"
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "value.B"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Parametrized Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754488198684,
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "18": {
          "content": "--- \n \n\u003e Since multiple paged queries can be executed in parallel — as defined by the **Maximum Number of Concurrent Calls to Get Actual Device and Interface Statistics** configuration value — the sum of all individual paged query durations may be greater than the **Total Interface Statistics Query Duration** or **Total Device Statistics Query Duration**\n ",
          "type": "markdown"
        },
        "19": {
          "content": "Site, Device, and Interface Discovery\n---\nBefore the first metrics data collection, paged Discovery Data Queries are executed. The retrieved data is used to build site, device, and interface caches. This data is also recorded in logs, which are used to construct topology entities along with their corresponding attributes. The cached data is then used as dimension values for metrics during the metrics data collection process.\n\nEach type of discovery process is performed according to the Discovery requency configuration value. \n\nDiscovery Frequencies Adjustment\n---\n\nWhen reducing the Metrics Collection Frequency (e.g., to 5 minutes, adapting to a large environment constraints), it is also recommended to adjust discovery-related configuration parameters accordingly. These parameters should be increased proportionally, since they track semi-static attributes that do not need to be refreshed as frequently.\n\n\n| Parameter                      | Recommended Multiple | Example for 5-min Data Collection Frequency |\n|--------------------------------|----------------------|------------------------------------|\n| Sites Discovery Frequency      | ×12                  | 60 minutes                         |\n| Devices Discovery Frequency    | ×6                   | 30 minutes                         |\n| Interfaces Discovery Frequency | ×3                   | 15 minutes                         |\n\nEntity attributes and metrics dimension values are then updated according to the defined discovery frequencies.\n\n---\n\nMetrics Data Collection\n---\n\u003e During metrics data collection, multiple types of paged Statistics Data Queries related to interfaces, devices, sites, and other entities are executed. The retrieved data is reported as metrics. Metrics data collection is performed periodically, at the interval defined by the Metrics Collection Frequency onfiguration value.\n\n\u003e The observed **Overall Metrics Data Collection Time** metric value should be at least 10 seconds smaller than the configured Metrics Collection Frequency value.\n",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Duration of the paged query devices.gets_interfaces_along_with_statistics_data_from_all_network_devices, used to collect interface metrics.",
          "query": "timeseries { duration = avg(sfm.cisco.cc.devices.gets_interfaces_along_with_statistics_data_from_all_network_devices.duration), value.A = avg(sfm.cisco.cc.devices.gets_interfaces_along_with_statistics_data_from_all_network_devices.duration, scalar: true) }, by: { offset, endpoint_url }\n| sort value.A desc",
          "queryConfig": {
            "globalCommands": {
              "sort": {
                "direction": "desc",
                "field": "value.A"
              }
            },
            "subQueries": [
              {
                "by": [
                  "offset",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.devices.gets_interfaces_along_with_statistics_data_from_all_network_devices.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Interface Statistics Data Query Duration by Pagination Offset",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754487403229,
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
            "unitsOverrides": [],
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
          "description": "Duration of the paged query devices.get_all_interfaces, used to discover interfaces and collect their attributes.",
          "query": "timeseries { `Discovery query duration` = avg(sfm.cisco.cc.devices.get_all_interfaces.duration), value.A = avg(sfm.cisco.cc.devices.get_all_interfaces.duration, scalar: true) }, by: { offset, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "Discovery query duration",
                  "key": "sfm.cisco.cc.devices.get_all_interfaces.duration"
                }
              },
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "filter": "",
                "id": "B",
                "isEnabled": false,
                "metric": {
                  "aggregation": "max",
                  "alias": "Data Records",
                  "key": "sfm.cisco.cc.endpoint.fetch_ifaces_statistics.fetched_statistics"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Interface Discovery Data Query Duration by Pagination Offset",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Discovery query duration",
                  "Data Records"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "value.A",
                "value.B"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Data Records"
              },
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
                    "Discovery query duration"
                  ],
                  "id": 1754649590312,
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
            "unitsOverrides": [],
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
          "description": "Total duration of all paged queries, used to collect device metrics.",
          "query": "timeseries { `Statistics queries duration` = avg(sfm.cisco.cc.endpoint.get_device_statistics_dict.duration), value.A = avg(sfm.cisco.cc.endpoint.get_device_statistics_dict.duration, scalar: true), `Statistics Data Records` = max(sfm.cisco.cc.endpoint.get_device_statistics_dict.reported_devices), value.B = avg(sfm.cisco.cc.endpoint.get_device_statistics_dict.reported_devices, scalar: true) }, union: TRUE, by: { endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "Statistics queries duration",
                  "key": "sfm.cisco.cc.endpoint.get_device_statistics_dict.duration"
                }
              },
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "filter": "",
                "id": "B",
                "isEnabled": true,
                "metric": {
                  "aggregation": "max",
                  "alias": "Statistics Data Records",
                  "key": "sfm.cisco.cc.endpoint.get_device_statistics_dict.reported_devices"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Total Device Statistics Queries Duration",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Statistics queries duration",
                  "Statistics Data Records"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "value.A",
                "value.B"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Total Duration"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Statistics Data Records"
              },
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
                    "Statistics queries duration"
                  ],
                  "id": 1754562471233,
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
            "unitsOverrides": [],
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
          "description": "Duration of the paged query devices.devices, used to collect device metrics.",
          "query": "timeseries { duration = avg(sfm.cisco.cc.devices.devices.duration), value.A = avg(sfm.cisco.cc.devices.devices.duration, scalar: true) }, by: { offset, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.devices.devices.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Device Statistics Data Query Duration by Pagination Offset",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754487403321,
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
            "unitsOverrides": [],
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
          "description": "Duration of the paged query devices.get_network_device_by_pagination, used to discover devices and collect their attributes.",
          "query": "timeseries { `Discovery query duration` = avg(sfm.cisco.cc.devices.get_network_device_by_pagination_range.duration), value.A = avg(sfm.cisco.cc.devices.get_network_device_by_pagination_range.duration, scalar: true) }, by: { offset, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "Discovery query duration",
                  "key": "sfm.cisco.cc.devices.get_network_device_by_pagination_range.duration"
                }
              },
              {
                "by": [
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "filter": "",
                "id": "B",
                "isEnabled": false,
                "metric": {
                  "aggregation": "max",
                  "alias": "Data Records",
                  "key": "sfm.cisco.cc.endpoint.get_device_statistics_dict.reported_devices"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Device Discovery Data Query Duration by Pagination Offset",
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
              "fieldMapping": {
                "leftAxisValues": [
                  "Discovery query duration",
                  "Data Records"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "value.A",
                "value.B"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "auto",
              "rightYAxisSettings": {
                "isLabelVisible": true,
                "label": "Data Records"
              },
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
                    "Discovery query duration"
                  ],
                  "id": 1754649590216,
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
            "unitsOverrides": [],
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
          "description": "Duration of the paged query sites.get_site, used to discover sites and collect their attributes.",
          "query": "timeseries { duration = avg(sfm.cisco.cc.sites.get_site.duration), value.A = avg(sfm.cisco.cc.sites.get_site.duration, scalar: true) }, by: { offset, endpoint_url }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "offset",
                  "endpoint_url"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "alias": "duration",
                  "key": "sfm.cisco.cc.sites.get_site.duration"
                }
              }
            ],
            "version": "15.3.1"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Site Discovery Data Query Duration by Pagination Offset",
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
                  "duration"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "avg(sfm.cisco.cc.sites.get_site.duration)"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Paged Query Duration"
              },
              "legend": {
                "position": "bottom"
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
                    "duration"
                  ],
                  "id": 1754493753096,
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "9": {
          "content": "---",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-cisco-cc-catalyst-extension-sfm-1198589149"
  # private = false
}
