resource "dynatrace_document" "OpenTelemetry_K8s_Cluster" {
  name      = "OpenTelemetry K8s Cluster"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 10
        },
        "11": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 8
        },
        "12": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 10
        },
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "15": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "20": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 39
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 39
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 47
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 47
        },
        "31": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 43
        },
        "32": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 43
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "34": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "37": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "38": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "39": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 2
        },
        "40": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 2
        },
        "42": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "43": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 2
        },
        "45": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "46": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "47": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "6": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 8
        },
        "7": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 10
        },
        "8": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 8
        },
        "9": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Memory requests commitment on cluster ",
          "query": "// fetch container memory requests and node allocatable memory\ntimeseries {\n  valuesOp1 = sum(k8s.container.memory_request, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_memory, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization for requests as a percentage of cluster requests (sum of container requests) compared to cluster allocatable memory\n| fieldsAdd requests_memory_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Requests Commitment",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,requests_memory_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "requests_memory_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "requests_memory_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - memory requests • Kubernetes: Node - memory allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "requests_memory_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "requests_memory_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "requests_memory_percent",
              "prefixIcon": "",
              "recordField": "requests_memory_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448015,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "requests_memory_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 95
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "requests_memory_percent",
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
          "description": "CPU limits commitment on cluster ",
          "query": "// fetch container CPU limits and node allocatable CPU\ntimeseries {\n  valuesOp1 = sum(k8s.container.cpu_limit, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_cpu, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization for limits as a percentage of cluster requests (sum of container limits) compared to cluster allocatable CPU\n| fieldsAdd limits_cpu_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Limits Commitment",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,limits_cpu_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "limits_cpu_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "limits_cpu_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU limits • Kubernetes: Node - CPU allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "limits_cpu_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "limits_cpu_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "limits_cpu_percent",
              "prefixIcon": "",
              "recordField": "limits_cpu_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448143,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "limits_cpu_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 150
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "limits_cpu_percent",
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
          "description": "Memory limits commitment on cluster ",
          "query": "// fetch container memory limits and node allocatable memory\ntimeseries {\n  valuesOp1 = sum(k8s.container.memory_limit, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_memory, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization for limits as a percentage of cluster requests (sum of container limits) compared to cluster allocatable memory\n| fieldsAdd limits_memory_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Limits Commitment",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,limits_memory_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "limits_memory_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "limits_memory_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - memory limits • Kubernetes: Node - memory allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "limits_memory_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "limits_memory_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "limits_memory_percent",
              "prefixIcon": "",
              "recordField": "limits_memory_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448135,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "limits_memory_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 150
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "limits_memory_percent",
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "CPU usage per namespace on cluster ",
          "query": "// fetch pod CPU usage\ntimeseries {\n  cpu = sum(k8s.pod.cpu.usage, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { \n  // split by namespace name\n  k8s.namespace.name \n}\n// filter out null values\n| filter isNotNull(cpu)\n| sort cpu desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage per Namespace",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage",
                "min": 0
              },
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_namespace"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "cpu"
                  ],
                  "id": 1734615448255,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1748865863030,
                "baseUnit": "core",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu",
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
          "description": "CPU quota per namespace on cluster ",
          "query": "// fetch pod CPU usage, container requests and limits\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg),\n  requests_cpu = sum(k8s.container.cpu_request, rollup:avg),\n  limits_cpu = sum(k8s.container.cpu_limit, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { \n  // split by namespace name\n  k8s.namespace.name \n},\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n| fieldsAdd requests_cpu = arrayLast(requests_cpu)\n| fieldsAdd limits_cpu = arrayLast(limits_cpu)\n// calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n// calculate CPU slack\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage)\n| sort cpu_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.namespace.name, `CPU Usage` = cpu_usage, `CPU Requests` = requests_cpu, `CPU Requests %` = requests_cpu_percent, `CPU Limits` = limits_cpu, `CPU Limits %` = limits_cpu_percent, `CPU Slack` = cpu_slack\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace",
                "valueAxisLabel": "CPU Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ]
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Usage"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Requests"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Requests %"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Slack"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Throttled"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Limits"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Limits %"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_namespace"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Name\"]": 214.78125,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 717.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "id"
                ],
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "dt.entity.cloud_application_namespace"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed",
              "sortBy": {
                "columnId": "[\"CPU Usage\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715618539759,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Usage",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618579313,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Throttled",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618597827,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Requests",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618609828,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Limits",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618618693,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Slack",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715686358414,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715687708509,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Limits %",
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
        "17": {
          "content": "### CPU\n",
          "type": "markdown"
        },
        "18": {
          "content": "### Memory",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Memory usage per namespace on cluster ",
          "query": "// fetch pod memory usage\ntimeseries {\n  memory = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { \n  // split by namespace name\n  k8s.namespace.name \n}\n| sort memory desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage per Namespace",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "memory"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory"
              },
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_namespace"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "memory"
                  ],
                  "id": 1733922979706,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
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
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Memory quota per namespace on cluster ",
          "query": "// fetch pod memory usage, container requests and limits\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg),\n  requests_memory = sum(k8s.container.memory_request, rollup:avg),\n  limits_memory = sum(k8s.container.memory_limit, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { \n  // split by namespace name\n  k8s.namespace.name \n},\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n| fieldsAdd requests_memory = arrayLast(requests_memory)\n| fieldsAdd limits_memory = arrayLast(limits_memory)\n// calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n// calculate CPU slack\n| fieldsAdd memory_slack = requests_memory - memory_usage\n| sort memory_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.namespace.name,`Memory Usage` = memory_usage, `Memory Requests` = requests_memory, `Memory Requests %` = requests_memory_percent, `Memory Limits` = limits_memory, `Memory Limits %` = limits_memory_percent, `Memory Slack` = memory_slack",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace",
                "valueAxisLabel": "Memory Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Usage"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Requests"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Limits"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Requests %"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Limits %"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Slack"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_namespace"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"Name\"]",
                "[\"Memory Usage\"]",
                "[\"Memory Requests\"]",
                "[\"Memory Limits\"]",
                "[\"Memory Requests %\"]",
                "[\"Memory Limits %\"]",
                "[\"Memory Slack\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Name\"]": 204.78125,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "id"
                ],
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "dt.entity.cloud_application_namespace"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed",
              "sortBy": {
                "columnId": "[\"Memory Usage\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Usage",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698181310,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Requests",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698189862,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698204816,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Limits",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698213152,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Limits %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698222294,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Slack",
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
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Network receive bandwidth per namespace on cluster ",
          "query": "// fetch pod network IO metrics\ntimeseries {\n  received_data = sum(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"receive\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort received_data desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Receive Bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network received data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1733922979911,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
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
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Network transmit bandwidth per namespace on cluster ",
          "query": "// fetch pod network IO metrics\ntimeseries {\n  transmitted_data = sum(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"transmit\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort transmitted_data desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Transmit Bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network transmitted data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "transmitted_data"
                  ],
                  "id": 1733922979837,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
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
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Rate of received errors per namespace on cluster ",
          "query": "// fetch pod network errors\ntimeseries {\n  received_errors = sum(k8s.pod.network.errors, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"receive\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort received_errors desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of Received Errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_errors"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.network.errors"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_errors"
                  ],
                  "id": 1747386108882,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703459327,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "received_errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Rate of transmitted errors per namespace on cluster ",
          "query": "// fetch pod network errors\ntimeseries {\n  transmitted_errors = sum(k8s.pod.network.errors, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"transmit\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort transmitted_errors desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of Transmitted Errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_errors"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.network.errors"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "transmitted_errors"
                  ],
                  "id": 1747386131172,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703517246,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "transmitted_errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average pod receive bandwidth per namespace on cluster ",
          "query": "// fetch average pod network IO metrics\ntimeseries {\n  received_data = avg(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"receive\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort received_data desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average Pod Bandwidth by Namespace: Received",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network received data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1733922980001,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
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
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average pod transmit bandwidth per namespace on cluster ",
          "query": "// fetch average pod network IO metrics\ntimeseries {\n  transmitted_data = avg(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // filter by cluster name and direction\n  k8s.cluster.name == $Cluster AND direction == \"transmit\"\n}, by: { \n  // split by namespace name\n  k8s.namespace.name }\n| sort transmitted_data desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average Pod Bandwidth by Namespace: Transmitted",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network transmitted data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "transmitted_data"
                  ],
                  "id": 1733922979963,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
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
        "33": {
          "content": "### Network",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Network usage per namespace on cluster ",
          "query": "// fetch pod network errors and IO data\ntimeseries {\n  receiveData = sum(k8s.pod.network.io, filter:{direction == \"receive\"}, rollup:avg),\n  transmitData = sum(k8s.pod.network.io, filter:{direction == \"transmit\"}, rollup:avg),\n  receiveError = sum(k8s.pod.network.errors, filter:{direction == \"receive\"}, rollup:avg),\n  transmitError = sum(k8s.pod.network.errors, filter:{direction == \"transmit\"}, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { \n  // split by namespace name\n  k8s.namespace.name \n},\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayLast(receiveData)\n| fieldsAdd transmitData = arrayLast(transmitData)\n| fieldsAdd receiveError = arrayLast(receiveError)\n| fieldsAdd transmitError = arrayLast(transmitError)\n| sort receiveData desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.namespace.name\n, `Current Receive Bandwidth` = receiveData\n, `Current Transmit Bandwidth` = transmitData\n, `Rate of Received Errors` = receiveError\n, `Rate of Transmitted Errors` = transmitError",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network Usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_namespace,Name",
                "tooltipVariant": "single",
                "valueAxisLabel": "Current Receive Bandwidth,Current Transmit Bandwidth,Rate of Received Packets Dropped,Rate of Transmitted Packets Dropped,Rate of Received Errors,Rate of Transmitted Errors"
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
                  "valueAxis": "Current Receive Bandwidth"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Current Transmit Bandwidth"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "Current Receive Bandwidth"
              },
              "displayedFields": [
                "dt.entity.cloud_application_namespace",
                "Name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"Name\"]",
                "[\"Current Receive Bandwidth\"]",
                "[\"Current Transmit Bandwidth\"]",
                "[\"Rate of Received Errors\"]",
                "[\"Rate of Transmitted Errors\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Name\"]": 204.78125,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "id"
                ],
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "dt.entity.cloud_application_namespace"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed",
              "sortBy": {
                "columnId": "[\"Memory Usage\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Receive Bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1715698181310,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Transmit Bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1727770905889,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Received Errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770919779,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Transmitted Errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "35": {
          "content": "### Cluster: $Cluster\nGet broad visibility into the scale, status, and resource usage of your Kubernetes clusters. If you don't see data, [enable Kubernetes monitoring](https://dt-url.net/xq03nz5) for your Collector.",
          "type": "markdown"
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of nodes on cluster ",
          "query": "// fetch count of node contitions\ntimeseries {\n  nodes = count(k8s.node.condition)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: {\n  // split by node name\n  k8s.node.name\n// get data from last minute\n}, from: -2m, to: -1m\n// summarize by count of items\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Nodes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"count()\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "nodes",
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
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of namespaces on cluster ",
          "query": "// fetch count of pod network IO metrics\ntimeseries {\n  namespaces = count(k8s.pod.network.io)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: {\n  // split by nnamespace name\n  k8s.namespace.name\n// get data from last minute\n}, from: -2m, to: -1m\n// summarize by count of items\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Namespaces",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "nodes",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
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
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "namespaces",
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
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of pods on cluster",
          "query": "// fetch count of pod network IO metrics\ntimeseries {   \n  pods = count(k8s.pod.phase)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: {\n  // split by pod uid\n  k8s.pod.uid \n// get data from last minute\n}, from: -2m, to: -1m \n// summarize by count of items\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pods",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
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
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pods",
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of containers on cluster ",
          "query": "// fetch count of pod network IO metrics\ntimeseries {\n  containers = count(k8s.container.ready)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: {\n  // split by container name and pod name\n  k8s.container.name, k8s.pod.name\n},\n// get data from last minute\nfrom: -2m, to: -1m\n// summarize by count of items\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Containers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "containers",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
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
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "containers",
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
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of workloads on cluster ",
          "query": "// fetch count of pod network IO metrics\ntimeseries {\n  namespaces = count(k8s.pod.network.io)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: {\n  // split by workload name\n  k8s.workload.name\n// get data from last minute\n}, from: -2m, to: -1m\n// summarize by count of items\n| summarize count()\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Workloads",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "containers",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"count()\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed",
              "sortBy": [
                {
                  "columnId": "[\"k8s.workload.type\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
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
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of warning events on cluster ",
          "query": "// fetching logs\nfetch logs\n// filter by warning status\n| filter matchesValue(type, \"Warning\") OR matchesValue(status, \"WARN\")\n// filter by cluster name\n| filter {k8s.cluster.name == $Cluster}\n// summarize by count of items\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Warning Events",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "containers",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"count()\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1747723307420,
                  "value": "log-content"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
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
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of active node conditions on cluster ",
          "query": "// fetch number of ready node conditions\ntimeseries val=sum(k8s.node.condition_ready, default:0, rollup:avg),\n// get data from last minute\nfrom: -2m, to: -1m\n// add ready field for each item\n| fieldsAdd name=\"Ready\", singleVal=if(arrayMax(val) \u003c 0, 0, else: arrayMax(val))\n// summarize by count of ready fields\n| summarize count=sum(singleVal), by:{name}\n| append [\n// fetch number of disk pressure node conditions\ntimeseries val=sum(k8s.node.condition_disk_pressure, default:0, rollup:avg),\n// get data from last minute\nfrom: -2m, to: -1m\n// add disk pressure field for each item\n| fieldsAdd name=\"Disk Pressure\", singleVal=if(arrayMax(val) \u003c 0, 0, else: arrayMax(val))\n// summarize by count of disk pressure fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of memory pressure node conditions\ntimeseries val=sum(k8s.node.condition_memory_pressure, default:0, rollup:avg),\n// get data from last minute\nfrom: -2m, to: -1m\n// add memory pressure field for each item\n| fieldsAdd name=\"Memory Pressure\", singleVal=if(arrayMax(val) \u003c 0, 0, else: arrayMax(val))\n// summarize by count of memory pressure fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of pid pressure node conditions\ntimeseries val=sum(k8s.node.condition_pid_pressure, default:0, rollup:avg),\n// get data from last minute\nfrom: -2m, to: -1m \n// add pid pressure field for each item\n| fieldsAdd name=\"Pid Pressure\", singleVal=if(arrayMax(val) \u003c 0, 0, else: arrayMax(val))\n// summarize by count of pid pressure fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of network unavailable node conditions\ntimeseries val=sum(k8s.node.condition_network_unavailable, default:0, rollup:avg),\n// get data from last minute\nfrom: -2m, to: -1m\n// add network unavailable field for each item\n| fieldsAdd name=\"Network Unavailable\", singleVal=if(arrayMax(val) \u003c 0, 0, else: arrayMax(val))\n// summarize by count of network unavailable fields\n| summarize count=sum(singleVal), by:{name}\n]\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Node condition",
          "type": "data",
          "visualization": "categoricalBarChart",
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
                  "count"
                ],
                "valueAxisLabel": "count",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": true,
                "position": "auto"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "containers",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "containers",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"name\"]",
                "[\"count\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1747815180128,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
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
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of pod phases on cluster ",
          "query": "// fetch number of pod phases\ntimeseries { \n  max=max(k8s.pod.phase), by:{k8s.pod.uid}\n// filter by cluster name\n}, filter: {k8s.cluster.name == $Cluster},\n// get data from last minute\nfrom: -2m, to: -1m\n// add pending phase for each item\n| fieldsAdd name=\"Pending\", singleVal=if(arrayMax(max) == 1, 1, else: 0)\n// summarize by count of pending fields\n| summarize count=sum(singleVal), by:{name}\n| append [\n// fetch number of pod phases\ntimeseries  { \n  max=max(k8s.pod.phase), by:{k8s.pod.uid}\n// filter by cluster name\n}, filter: {k8s.cluster.name == $Cluster},\n// get data from last minute\nfrom: -2m, to: -1m\n// add running phase for each item\n| fieldsAdd name=\"Running\", singleVal=if(arrayMax(max) == 2, 1, else: 0)\n// summarize by count of running fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of pod phases\ntimeseries  { \n  max=max(k8s.pod.phase), by:{k8s.pod.uid}\n// filter by cluster name\n}, filter: {k8s.cluster.name == $Cluster},\n// get data from last minute\nfrom: -2m, to: -1m\n// add succeeded phase for each item\n| fieldsAdd name=\"Succeeded\", singleVal=if(arrayMax(max) == 3, 1, else: 0)\n// summarize by count of succeeded fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of pod phases\ntimeseries  { \n  max=max(k8s.pod.phase), by:{k8s.pod.uid}\n// filter by cluster name\n}, filter: {k8s.cluster.name == $Cluster},\n// get data from last minute\nfrom: -2m, to: -1m\n// add failed phase for each item\n| fieldsAdd name=\"Failed\", singleVal=if(arrayMax(max) == 4, 1, else: 0)\n// summarize by count of failed fields\n| summarize count=sum(singleVal), by:{name}\n]\n| append [\n// fetch number of pod phases\ntimeseries  { \n  max=max(k8s.pod.phase), by:{k8s.pod.uid}\n// filter by cluster name\n}, filter: {k8s.cluster.name == $Cluster},\n// get data from last minute\nfrom: -2m, to: -1m\n// add unknown phase for each item\n| fieldsAdd name=\"Unknown\", singleVal=if(arrayMax(max) == 5, 1, else: 0)\n// summarize by count of unknown fields\n| summarize count=sum(singleVal), by:{name}\n]\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pod phase",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name",
                "categoryAxisTickLayout": "horizontal",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "layout": "horizontal",
                "tooltipVariant": "single",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.phase"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_namespace"
                }
              ],
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_namespace"
              },
              "displayedFields": [
                "k8s.namespace.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "containers",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "containers",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
                "isVisible": true,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "nodes",
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"name\"]",
                "[\"count\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
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
        "47": {
          "content": "### Additional resources\n\nLearn more about using the OTel metrics and logs fetched from the k8s cluster in the [k8scluster](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sclusterreceiver), [kubeletstats](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/kubeletstatsreceiver) and [k8sobjects](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sobjectsreceiver) receivers documentation",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "CPU utilization on cluster ",
          "query": "// fetch node CPU usage and allocatable CPU\ntimeseries {\n  valuesOp1 = sum(k8s.node.cpu.usage, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_cpu, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization as a percentage of cluster usage compared to cluster allocatable CPU\n| fieldsAdd cpu_usage_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,cpu_usage_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "cpu_usage_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "cpu_usage_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage • Kubernetes: Node - CPU allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "cpu_usage_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "cpu_usage_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "cpu_usage_percent",
              "prefixIcon": "",
              "recordField": "cpu_usage_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp1",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isInverseTrend": false,
                "isLabelVisible": false,
                "isRelative": true,
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"valuesOp1\"]",
                "[\"valuesOp2\"]",
                "[\"cpu_usage_percent\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448007,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "cpu_usage_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 70
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage_percent",
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Memory utilization on cluster ",
          "query": "// fetch node memory usage and allocatable memory\ntimeseries {\n  valuesOp1 = sum(k8s.node.memory.usage, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_memory, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization as a percentage of cluster usage compared to cluster allocatable memory\n| fieldsAdd memory_usage_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,memory_usage_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "memory_usage_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "memory_usage_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory • Kubernetes: Node - memory allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "memory_usage_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "memory_usage_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "memory_usage_percent",
              "prefixIcon": "",
              "recordField": "memory_usage_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448106,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "memory_usage_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 70
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "memory_usage_percent",
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
          "description": "Pod utilization on cluster ",
          "query": "// fetch the count of pods and number of allocatable pods\ntimeseries {\n  valuesOp1 = count(k8s.pod.phase),\n  valuesOp2 = sum(k8s.node.allocatable_pods, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate pods utilization as a percentage of pods count compared to number of allocatable pods\n| fieldsAdd pods_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pod Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,pods_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "pods_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "pods_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod count • Kubernetes: Node - pod allocatable count"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "pods_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "pods_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "pods_percent",
              "prefixIcon": "",
              "recordField": "pods_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"valuesOp1\"]",
                "[\"valuesOp2\"]",
                "[\"pods_percent\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1747831413040,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "pods_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 70
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pods_percent",
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "CPU requests commitment on cluster ",
          "query": "// fetch container CPU requests and node allocatable CPU\ntimeseries {\n  valuesOp1 = sum(k8s.container.cpu_request, rollup:avg),\n  valuesOp2 = sum(k8s.node.allocatable_cpu, rollup:avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization for requests as a percentage of cluster requests (sum of container requests) compared to cluster allocatable CPU\n| fieldsAdd requests_cpu_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Requests Commitment",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "valuesOp1",
                "upper": "valuesOp2"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,requests_cpu_percent",
                "tooltipVariant": "single",
                "valueAxisLabel": "requests_cpu_percent"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "valuesOp1",
                  "valuesOp2"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "requests_cpu_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU requests • Kubernetes: Node - CPU allocatable"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "requests_cpu_percent"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "requests_cpu_percent"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "requests_cpu_percent",
              "prefixIcon": "",
              "recordField": "requests_cpu_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "valuesOp1",
                    "valuesOp2"
                  ],
                  "id": 1734615448126,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "requests_cpu_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 70
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "requests_cpu_percent",
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
          "editable": true,
          "input": "// fetch pod CPU usage\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage)\n},\n// split by cluster name\nby: { k8s.cluster.name }\n// summarize by cluster name\n| summarize collectDistinct(k8s.cluster.name)\n// fetch cluster names form the attributes\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = if(isNull(`collectDistinct(k8s.cluster.name)`), array(\"*\"), else:`collectDistinct(k8s.cluster.name)`)\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = arraySort(`collectDistinct(k8s.cluster.name)`, direction: \"ascending\")",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 18
    })
  custom_id = "dynatrace.opentelemetry.k8s-cluster"
  # private = false
}
