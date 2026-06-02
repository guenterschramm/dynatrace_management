resource "dynatrace_document" "OpenTelemetry_K8s_Node-Pods" {
  name      = "OpenTelemetry K8s Node - Pods"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 4
        },
        "11": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 2
        },
        "12": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 4
        },
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "15": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "21": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "22": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "6": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 2
        },
        "7": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 4
        },
        "8": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "9": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 2
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
          "description": "Percentage of current memory resource requests for the node compared to the allocatable amount of memory\n",
          "query": "// fetch container memory requests and node allocatable memory\ntimeseries {\n  valuesOp1 = sum(k8s.container.memory_request, rollup: avg),\n  valuesOp2 = sum(k8s.node.allocatable_memory, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization for requests as a percentage of node requests (sum of container requests) compared to node allocatable memory\n| fieldsAdd requests_memory_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Utilization (Requests)",
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
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "record": "valuesOp1",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isLabelVisible": false,
                "isRelative": false,
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
                  "id": 1734617362075,
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
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 130
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
          "description": "Percentage of current CPU resource limits for the node compared to the allocatable amount of CPUs\n",
          "query": "// fetch container CPU limits and node allocatable CPU\ntimeseries {\n  valuesOp1 = sum(k8s.container.cpu_limit, rollup: avg),\n  valuesOp2 = sum(k8s.node.allocatable_cpu, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization for limits as a percentage of node requests (sum of container limits) compared to node allocatable CPU\n| fieldsAdd limits_cpu_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Utilization (Limits)",
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
              "hiddenLegendFields": [],
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
            "dataMapping": {
              "value": "limits_cpu_percent"
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
              "dataMappings": {},
              "displayedFields": [],
              "legend": "auto",
              "shape": "hexagon"
            },
            "label": {
              "label": "limits_cpu_percent",
              "showLabel": false
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
                "isRelative": false,
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
                  "id": 1747915007667,
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
          "description": "Percentage of current memory resource limits for the node compared to the allocatable amount of memory\n",
          "query": "// fetch container memory limits and node allocatable memory\ntimeseries {\n  valuesOp1 = sum(k8s.container.memory_limit, rollup: avg),\n  valuesOp2 = sum(k8s.node.allocatable_memory, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization for limits as a percentage of node requests (sum of container limits) compared to node allocatable memory\n| fieldsAdd limits_memory_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Utilization (Limits)",
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
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "isRelative": false,
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
                  "id": 1734617362195,
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
          "description": "CPU usage of every pod on the node\n",
          "query": "// fetch pod CPU usage\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// split by pod name\n}, by: { k8s.pod.name }\n// filter out null values\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Usage per Pod",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.pod.name",
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
                  "cpu_usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_instance"
              },
              "displayedFields": [
                "dt.entity.cloud_application_instance"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "legend": {
              "position": "auto",
              "ratio": 26,
              "showLegend": false
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
                    "cpu_usage"
                  ],
                  "id": 1734617362001,
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
                "added": 1715178821410,
                "baseUnit": "core",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage",
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
          "description": "CPU usage of every pod on the node, with CPU requests and limits and their usage\n",
          "query": "// fetch pod CPU usage, container requests and limits\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg),\n  requests_cpu = sum(k8s.container.cpu_request, rollup: avg),\n  limits_cpu = sum(k8s.container.cpu_limit, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// split by pod name\n}, by: { k8s.pod.name },\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n| fieldsAdd requests_cpu = arrayLast(requests_cpu)\n| fieldsAdd limits_cpu = arrayLast(limits_cpu)\n//calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n// calculate CPU slack\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage)\n| sort cpu_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.pod.name, `CPU Usage` = cpu_usage, `CPU Requests` = requests_cpu, `CPU Requests %` = requests_cpu_percent, `CPU Limits` = limits_cpu, `CPU Limits %` = limits_cpu_percent, `CPU Slack` = cpu_slack\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_instance",
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
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.cpu_request_utilization • k8s.pod.cpu_limit_utilization"
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
                "dt.entity.cloud_application_instance",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_instance"
              },
              "displayedFields": [
                "dt.entity.cloud_application_instance"
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
              "columnOrder": [
                "[\"Name\"]",
                "[\"CPU Usage\"]",
                "[\"CPU Requests\"]",
                "[\"CPU Limits\"]",
                "[\"CPU Requests %\"]",
                "[\"CPU Limits %\"]",
                "[\"CPU Slack\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"CPU Slack\"]": 86,
                "[\"Name\"]": 245,
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
                  "dt.entity.cloud_application_instance"
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
          "description": "Memory usage of every pod on the node\n",
          "query": "// fetch pod memory usage\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// split by pod name\n}, by: { k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage per Pod",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.pod.name",
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
                  "memory_usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_instance"
              },
              "displayedFields": [
                "dt.entity.cloud_application_instance"
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
                    "memory_usage"
                  ],
                  "id": 1734615889733,
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
          "description": "Memory usage of every pod on the node, with memory requests and limits and their usage\n",
          "query": "// fetch pod memory usage, container requests and limits\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup: avg),\n  requests_memory = sum(k8s.container.memory_request, rollup: avg),\n  limits_memory = sum(k8s.container.memory_limit, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { k8s.pod.name },\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n| fieldsAdd requests_memory = arrayLast(requests_memory)\n| fieldsAdd limits_memory = arrayLast(limits_memory)\n//calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n// calculate memory slack\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.pod.name, `Memory Usage` = memory_usage, `Memory Requests` = requests_memory, `Memory Requests %` = requests_memory_percent, `Memory Limits` = limits_memory, `Memory Limits %` = limits_memory_percent, `Memory Slack` = memory_slack",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application_instance",
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
                "dt.entity.cloud_application_instance",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application_instance"
              },
              "displayedFields": [
                "dt.entity.cloud_application_instance"
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
                  "dt.entity.cloud_application_instance"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed",
              "sortBy": {
                "columnId": "[\"Name\"]",
                "direction": "unset"
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
        "21": {
          "content": "### Node: $Node\nUnderstand pod resource consumption on your Kubernetes nodes. If you don't see data, [enable Kubernetes monitoring](https://dt-url.net/xq03nz5) for your Collector.",
          "type": "markdown"
        },
        "22": {
          "content": "### Additional resources\n\nLearn more about using the OTel metrics and logs fetched from the k8s cluster in the [k8scluster](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sclusterreceiver), [kubeletstats](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/kubeletstatsreceiver) and [k8sobjects](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sobjectsreceiver) receivers documentation.",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of current CPU usage for the node compared to the allocatable amount of CPUs\n",
          "query": "// fetch node CPU usage and allocatable CPU\ntimeseries {\n  current_cpu = sum(k8s.node.cpu.usage, rollup: avg),\n  allocatable_cpu = sum(k8s.node.allocatable_cpu, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization as a percentage of node usage compared to node allocatable CPU\n| fieldsAdd cpu_usage_percent = arrayLast(current_cpu) / arrayLast(allocatable_cpu) * 100\n",
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
                "lower": "current_cpu",
                "upper": "allocatable_cpu"
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
                  "current_cpu",
                  "allocatable_cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "record": "valuesOp2",
                "showTicks": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isRelative": false,
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
                    "current_cpu",
                    "allocatable_cpu"
                  ],
                  "id": 1748338911145,
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
                "added": 1716814972871,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage_percent",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1734622711674,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage_percent_now",
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
          "description": "Percentage of current memory usage for the node compared to the allocatable amount of memory\n",
          "query": "// fetch node memory usage and allocatable memory\ntimeseries {\n  current_memory = sum(k8s.node.memory.usage, rollup: avg),\n  allocatable_memory = sum(k8s.node.allocatable_memory, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate memory utilization as a percentage of node usage compared to node allocatable memory\n| fieldsAdd memory_usage_percent = arrayLast(current_memory) / arrayLast(allocatable_memory) * 100\n",
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
                "lower": "current_memory",
                "upper": "allocatable_memory"
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
                  "current_memory",
                  "allocatable_memory"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "isRelative": false,
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
                    "current_memory",
                    "allocatable_memory"
                  ],
                  "id": 1748339050336,
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
          "description": "Percentage of current number of pods on the node compared to the allocatable number of pods\n",
          "query": "// fetch the count of pods and number of allocatable pods\ntimeseries {\n  current_pods = count(k8s.pod.phase),\n  allocatable_pods = max(k8s.node.allocatable_pods)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate pods utilization as a percentage of pods count compared to number of allocatable pods\n| fieldsAdd pods_percent = arrayLast(current_pods) / arrayLast(allocatable_pods) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pods Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "current_pods",
                "upper": "allocatable_pods"
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
                  "current_pods",
                  "allocatable_pods"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "isRelative": false,
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
                    "current_pods",
                    "allocatable_pods"
                  ],
                  "id": 1749717534022,
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
                    "value": 80
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
                "added": 1717763264287,
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
          "description": "Percentage of current CPU resource requests for the node compared to the allocatable amount of CPUs\n",
          "query": "// fetch container CPU requests and node allocatable CPU\ntimeseries {\n  valuesOp1 = sum(k8s.container.cpu_request, rollup: avg),\n  valuesOp2 = sum(k8s.node.allocatable_cpu, rollup: avg)\n}, filter: {\n  // filter by cluster name and node name\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n// get data from last minute\n}, from: -2m, to: -1m\n// calculate CPU utilization for requests as a percentage of node requests (sum of container requests) compared to node allocatable CPU\n| fieldsAdd requests_cpu_percent = arrayLast(valuesOp1) / arrayLast(valuesOp2) * 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Utilization (Requests)",
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
              "hiddenLegendFields": [],
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
              "dataMappings": {},
              "displayedFields": [],
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
                "isRelative": false,
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
                  "id": 1749717449597,
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
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 130
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
        },
        {
          "editable": true,
          "input": "// fetch pod CPU usage\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage)\n},\n// split by node name\nby: { k8s.node.name }\n// summarize by pod name\n| summarize collectDistinct(k8s.node.name)\n// fetch the node names from the attributes\n| fieldsAdd `collectDistinct(k8s.node.name)` = if(isNull(`collectDistinct(k8s.node.name)`), array(\"*\"), else:`collectDistinct(k8s.node.name)`)\n| fieldsAdd `collectDistinct(k8s.node.name)` = arraySort(`collectDistinct(k8s.node.name)`, direction: \"ascending\")",
          "key": "Node",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 18
    })
  custom_id = "dynatrace.opentelemetry.k8s-node-pods"
  # private = false
}
