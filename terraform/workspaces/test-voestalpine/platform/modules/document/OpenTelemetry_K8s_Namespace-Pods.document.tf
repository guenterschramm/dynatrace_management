resource "dynatrace_document" "OpenTelemetry_K8s_Namespace-Pods" {
  name      = "OpenTelemetry K8s Namespace - Pods"
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
          "h": 7,
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
          "y": 19
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 34
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 34
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 38
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 38
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "34": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 42
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "36": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 50
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
          "description": "Percentage of current memory usage compared to the memory resource requests in the namespace",
          "query": "// fetch memory usage and memory requests\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup: avg),\n  requests_memory = sum(k8s.container.memory_request, rollup: avg)\n}, filter: {\n  // filter by cluster name and namespace name\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  //split by namespace name\n}, by: { k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// take only latest values\n| fieldsAdd memory_usage_namespace = arrayLast(memory_usage)\n| fieldsAdd memory_requests_namespace = arrayLast(requests_memory)\n// calculate memory utilization as a percentage of namespace usage compared to namespace memory requests\n| fieldsAdd memory_requests_utilization_percent = memory_usage_namespace * 100 / memory_requests_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Requests Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "memory_usage",
                "upper": "requests_memory"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "memory_usage_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "memory_usage",
                  "requests_memory"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name",
                "interval",
                "memory_usage_namespace",
                "memory_requests_namespace",
                "memory_requests_utilization_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory • Kubernetes: Container - memory requests"
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
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.namespace.name"
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
              "colorThresholdTarget": "background",
              "label": "memory_requests_utilization_percent",
              "prefixIcon": "",
              "recordField": "memory_requests_utilization_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "requests_memory",
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
                    "memory_usage",
                    "requests_memory"
                  ],
                  "id": 1747901202097,
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
                "field": "memory_requests_utilization_percent",
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
                "identifier": "memory_requests_utilization_percent",
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
          "description": "Percentage of current CPU usage compared to the CPU resource limits in the namespace\n",
          "query": "// fetch CPU usage and CPU limits\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg),\n  limits_cpu = sum(k8s.container.cpu_limit, rollup: avg)\n}, filter: {\n  // filter by cluster name and namespace name\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  //split by namespace name\n}, by: { k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// take only latest values\n| fieldsAdd cpu_usage_namespace = arrayLast(cpu_usage)\n| fieldsAdd cpu_limits_namespace = arrayLast(limits_cpu)\n// calculate CPU utilization as a percentage of namespace usage compared to namespace CPU limits\n| fieldsAdd cpu_limits_utilization_percent = cpu_usage_namespace * 100 / cpu_limits_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Limits Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "cpu_usage",
                "upper": "limits_cpu"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "cpu_usage_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu_usage",
                  "limits_cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name",
                "interval",
                "cpu_usage_namespace",
                "cpu_limits_namespace",
                "cpu_limits_utilization_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage • Kubernetes: Container - CPU limits"
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
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.namespace.name"
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
              "colorThresholdTarget": "background",
              "label": "cpu_limits_utilization_percent",
              "prefixIcon": "",
              "recordField": "cpu_limits_utilization_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "limits_cpu",
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
                    "cpu_usage",
                    "limits_cpu"
                  ],
                  "id": 1747901138997,
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
                "field": "cpu_limits_utilization_percent",
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
                "identifier": "cpu_limits_utilization_percent",
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
          "description": "Percentage of current memory usage compared to the memory resource limits in the namespace",
          "query": "// fetch memory usage and memory limits\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup: avg),\n  limits_memory = sum(k8s.container.memory_limit, rollup: avg)\n}, filter: {\n  // filter by cluster name and namespace name\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  //split by namespace name\n}, by: { k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// take only latest values\n| fieldsAdd memory_usage_namespace = arrayLast(memory_usage)\n| fieldsAdd memory_limits_namespace = arrayLast(limits_memory)\n// calculate memory utilization as a percentage of namespace usage compared to namespace memory limits\n| fieldsAdd memory_limits_utilization_percent = memory_usage_namespace * 100 / memory_limits_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Limits Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "memory_usage",
                "upper": "limits_memory"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "memory_usage_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "memory_usage",
                  "limits_memory"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name",
                "interval",
                "memory_usage_namespace",
                "memory_limits_namespace",
                "memory_limits_utilization_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory • Kubernetes: Container - memory limits"
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
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.namespace.name"
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
              "colorThresholdTarget": "background",
              "label": "memory_limits_utilization_percent",
              "prefixIcon": "",
              "recordField": "memory_limits_utilization_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "limits_memory",
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
                    "memory_usage",
                    "limits_memory"
                  ],
                  "id": 1747901255807,
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
                "field": "memory_limits_utilization_percent",
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
                "identifier": "memory_limits_utilization_percent",
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
          "description": "CPU usage of every pod in the namespace",
          "query": "// fetch CPU usage, filter by cluster and namespace name\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n// split by pod name\n}, by: { k8s.pod.name }\n// filter out null values\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
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
                "dt.entity.cloud_application_instance",
                "interval"
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
                  "id": 1734615651544,
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
          "description": "CPU usage of every pod in the namespace, with CPU requests and limits and their usage\n",
          "query": "// fetch CPU usage, requests and limits for cluster and namespace and split by pod name\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg),\n  requests_cpu = sum(k8s.container.cpu_request, rollup: avg),\n  limits_cpu = sum(k8s.container.cpu_limit, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.pod.name },\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n| fieldsAdd requests_cpu = arrayLast(requests_cpu)\n| fieldsAdd limits_cpu = arrayLast(limits_cpu)\n//calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n// calculate CPU slack\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage)\n| sort cpu_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.pod.name, `CPU Usage` = cpu_usage, `CPU Requests` = requests_cpu, `CPU Requests %` = requests_cpu_percent, `CPU Limits` = limits_cpu, `CPU Limits %` = limits_cpu_percent, `CPU Slack` = cpu_slack\n",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance",
                "valueAxisLabel": "CPU Usage"
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
                  "valueAxis": "CPU Usage"
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
                "isVisible": false,
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
                  "k8s.pod.uid"
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
                "decimals": 1,
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
          "description": "Memory usage of every pod in the namespace",
          "query": "// fetch CPU usage, filter by cluster and namespace name\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n// split by pod name\n}, by: { k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
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
                  "id": 1734614775475,
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
          "description": "Memory usage of every pod in the namespace, with memory requests and limits and their usage\n",
          "query": "// fetch memory usage, requests and limits for cluster and namespace and split by pod name\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup: avg),\n  requests_memory = sum(k8s.container.memory_request, rollup: avg),\n  limits_memory = sum(k8s.container.memory_limit, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.pod.name },\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take only the latest values\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n| fieldsAdd requests_memory = arrayLast(requests_memory)\n| fieldsAdd limits_memory = arrayLast(limits_memory)\n//calculate usage as a percentage compare to requests and limits\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n// calculate memory slack\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.pod.name, `Memory Usage` = memory_usage, `Memory Requests` = requests_memory, `Memory Requests %` = requests_memory_percent, `Memory Limits` = limits_memory, `Memory Limits %` = limits_memory_percent, `Memory Slack` = memory_slack",
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
          "description": "Received network bandwith per pod in the namespace",
          "query": "// Fetch received data per pod\ntimeseries {\n  received_data = sum(k8s.pod.network.io, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // data needs to be filtered to only get the received direction\n  direction == \"receive\"\n}, by: { k8s.pod.name }\n| sort received_data desc\n| limit 20",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance,k8s.pod.name",
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
                "dt.entity.cloud_application_instance"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                  "id": 1734614820139,
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
          "description": "Transmitted network bandwith per pod in the namespace",
          "query": "// Fetch sent data per pod\ntimeseries {\n  received_data = sum(k8s.pod.network.io, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // data needs to be filtered to only get the transmitted direction\n  direction == \"transmit\"\n}, by: { k8s.pod.name }\n| sort received_data desc\n| limit 20",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance,k8s.pod.name",
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
                "dt.entity.cloud_application_instance"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                  "id": 1748343783638,
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
          "description": "Received network errors per pod in the namespace",
          "query": "// Received network errors per pod in the namespace\ntimeseries {\n  received_data = sum(k8s.pod.network.errors, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // data needs to be filtered to only get receive errors\n  direction == \"receive\"\n}, by: { k8s.pod.name }\n| sort received_data desc\n| limit 20",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance,k8s.pod.name",
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
                "dt.entity.cloud_application_instance"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                  "id": 1747905336656,
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
          "description": "Transmitted network errors per pod in the namespace",
          "query": "// Transmitted network errors per pod in the namespace\ntimeseries {\n  received_data = sum(k8s.pod.network.errors, rollup: avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // data needs to be filtered to only get transmit errors\n  direction == \"transmit\"\n}, by: { k8s.pod.name }\n| sort received_data desc\n| limit 20",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance,k8s.pod.name",
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
                "dt.entity.cloud_application_instance"
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
                "dt.entity.cloud_application_instance",
                "k8s.pod.name"
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
                  "id": 1747905348975,
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
          "description": "Current network bandwidth and errors per pod",
          "query": "// fetch timeseries for data and erros in both transmit and receive directions\ntimeseries {\n  receiveData = sum(k8s.pod.network.io, filter: direction == \"receive\", rollup: avg),\n  transmitData = sum(k8s.pod.network.io, filter: direction == \"transmit\", rollup: avg),\n  receiveError = sum(k8s.pod.network.errors, filter: direction == \"receive\", rollup: avg),\n  transmitError = sum(k8s.pod.network.errors, filter: direction == \"transmit\", rollup: avg)\n}, filter: {\n  // filter by cluster and namespace name\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.pod.name },\n// get data from last minute\nfrom: -2m, to: -1m,\nnonempty: true,\nunion: true\n// take latest values only\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayLast(receiveData)\n| fieldsAdd transmitData = arrayLast(transmitData)\n| fieldsAdd receiveError = arrayLast(receiveError)\n| fieldsAdd transmitError = arrayLast(transmitError)\n| sort receiveData desc\n// rename fields for better readability\n| fieldsRename `Name` = k8s.pod.name\n, `Current Receive Bandwidth` = receiveData\n, `Current Transmit Bandwidth` = transmitData\n, `Rate of Received Errors` = receiveError\n, `Rate of Transmitted Errors` = transmitError",
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
                "categoryAxisLabel": "dt.entity.cloud_application_instance,Name",
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
                "dt.entity.cloud_application_instance",
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
                "dt.entity.cloud_application_instance",
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
                  "dt.entity.cloud_application_instance"
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
                "added": 1727770868052,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Received Packets Dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770889671,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Transmitted Packets Dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
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
          "content": "### Pods in Namespace: $Namespace\nAnalyze resource allocation of all pods within a namespace. If you don't see data, [enable Kubernetes monitoring](https://dt-url.net/xq03nz5) for your Collector.",
          "type": "markdown"
        },
        "36": {
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
          "description": "Percentage of how much the CPU usage of this namespace contributes to the overall CPU usage\n",
          "query": "// fetch CPU usage\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n},\nby: { k8s.cluster.name },\n// only get data from last minute\nfrom: -2m, to: -1m\n// take the latest value of the timeseries and remove the original timeseries as it's not needed anymore\n| fieldsAdd cpu_usage_cluster = arrayLast(cpu_usage)\n| fieldsRemove cpu_usage\n| join [\n  // fetch CPU usage\n  timeseries {\n    cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg)\n  }, filter: {\n    // filter by cluster name and namespace name\n    k8s.cluster.name == $Cluster AND\n    k8s.namespace.name == $Namespace\n  }, by: { k8s.namespace.name, k8s.cluster.name },\n  // only get data from last minute\n  from: -2m, to: -1m\n// join the timeseries together\n], executionOrder: leftFirst, on: { k8s.cluster.name }, fields: { cpu_usage }\n// get the latest value of the CPU usage for the namespace\n| fieldsAdd cpu_usage_namespace = arrayLast(cpu_usage)\n// calculate the CPU usage as a percentage of namespace usage compared to overall cluster usage\n| fieldsAdd cpu_usage_percent = cpu_usage_namespace * 100  / cpu_usage_cluster",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cluster CPU Utilization Contribution",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.cluster.name",
                "valueAxisLabel": "cpu_usage_cluster"
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
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "cpu_usage_cluster",
                "cpu_usage_namespace",
                "cpu_usage_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage"
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
                  "valueAxis": "cpu_usage_cluster"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "cpu_usage_namespace"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "cpu_usage_percent"
                }
              ],
              "displayedFields": [
                "k8s.cluster.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.cluster.name"
              },
              "displayedFields": [
                "k8s.cluster.name"
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
                "record": "cpu_usage",
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
                    "cpu_usage"
                  ],
                  "id": 1748342435141,
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
          "description": "Percentage of how much the memory usage of this namespace contributes to the overall memory usage\n",
          "query": "// fetch memory usage\ntimeseries {\n  memory_usage = sum(k8s.pod.memory.usage, rollup: avg)\n}, filter: {\n  // filter by cluster name\n  k8s.cluster.name == $Cluster\n}, by: { k8s.cluster.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// take only the latest value\n| fieldsAdd memory_usage_cluster = arrayLast(memory_usage)\n// remove original timeseries since it's not needed anymore\n| fieldsRemove memory_usage\n| join [\n  // fetch memory usage again\n  timeseries {\n    memory_usage = sum(k8s.pod.memory.usage,  rollup: avg)\n  }, filter: {\n    // filter by cluster name and namespace name\n    k8s.cluster.name == $Cluster AND\n    k8s.namespace.name == $Namespace\n  }, by: { k8s.namespace.name, k8s.cluster.name },\n  // get data from last minute\n  from: -2m, to: -1m\n// join the timeseries together\n], executionOrder: leftFirst, on: { k8s.cluster.name }, fields: { memory_usage }\n// get the latest value of the memory usage for the namespace\n| fieldsAdd memory_usage_namespace = arrayLast(memory_usage)\n// calculate the memory usage as a percentage of namespace usage compared to overall cluster usage\n| fieldsAdd memory_usage_percent = memory_usage_namespace * 100  / memory_usage_cluster",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cluster Memory Utilization Contribution",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.cluster.name",
                "valueAxisLabel": "memory_usage_cluster"
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
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8s.cluster",
                "interval",
                "memory_usage_cluster",
                "memory_usage_namespace",
                "memory_usage_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory"
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
                  "valueAxis": "memory_usage_cluster"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "memory_usage_namespace"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "memory_usage_percent"
                }
              ],
              "displayedFields": [
                "k8s.cluster.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.cluster.name"
              },
              "displayedFields": [
                "k8s.cluster.name"
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
                "record": "memory_usage",
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
                    "memory_usage"
                  ],
                  "id": 1734615651470,
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
          "description": "Number of pods in the namespace",
          "query": "// fetch the count of pods filtered by cluster and namespace name and summarize to count them\ntimeseries {\n  pods = count(k8s.pod.phase)\n},\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n},\nby: { k8s.pod.name },\nfrom: -2m, to: -1m\n| summarize count()",
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
              "colorThresholdTarget": "background",
              "label": "pods_namespace",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "pods",
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
                "trendField": "pods_namespace",
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
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pods_namespace",
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of current CPU usage compared to the CPU resource requests in the namespace\n",
          "query": "// fetch CPU usage and CPU requests\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup: avg),\n  requests_cpu = sum(k8s.container.cpu_request, rollup: avg)\n}, filter: {\n  // filter by cluster name and namespace name\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  //split by namespace name\n}, by: { k8s.namespace.name  },\n// get data from last minute\nfrom: -2m, to: -1m\n// take only latest values\n| fieldsAdd cpu_usage_namespace = arrayLast(cpu_usage)\n| fieldsAdd cpu_requests_namespace = arrayLast(requests_cpu)\n// calculate CPU utilization as a percentage of namespace usage compared to namespace CPU requests\n| fieldsAdd cpu_requests_utilization_percent = cpu_usage_namespace * 100 / cpu_requests_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU Requests Utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "cpu_usage",
                "upper": "requests_cpu"
              },
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxisLabel": "cpu_usage_namespace"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu_usage",
                  "requests_cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8sspace.name",
                "interval",
                "cpu_usage_namespace",
                "cpu_requests_namespace",
                "cpu_requests_utilization_percent"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage • Kubernetes: Container - CPU requests"
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
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.namespace.name"
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
              "colorThresholdTarget": "background",
              "label": "cpu_requests_utilization_percent",
              "prefixIcon": "",
              "recordField": "cpu_requests_utilization_percent",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": false,
                "record": "requests_cpu",
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
                    "cpu_usage",
                    "requests_cpu"
                  ],
                  "id": 1747901078729,
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
                "field": "cpu_requests_utilization_percent",
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
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
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
                "identifier": "cpu_requests_utilization_percent",
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
          "input": "timeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage)\n},\nby: { k8s.cluster.name }\n| summarize collectDistinct(k8s.cluster.name)\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = if(isNull(`collectDistinct(k8s.cluster.name)`), array(\"*\"), else:`collectDistinct(k8s.cluster.name)`)\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = arraySort(`collectDistinct(k8s.cluster.name)`, direction: \"ascending\")",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "input": "timeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage)\n}, filter: {\n  k8s.cluster.name == $Cluster\n}, by: { k8s.namespace.name }\n| summarize collectDistinct(k8s.namespace.name)\n| fieldsAdd `collectDistinct(k8s.namespace.name)` = if(isNull(`collectDistinct(k8s.namespace.name)`), array(\"*\"), else:`collectDistinct(k8s.namespace.name)`)\n| fieldsAdd `collectDistinct(k8s.namespace.name)` = arraySort(`collectDistinct(k8s.namespace.name)`, direction: \"ascending\")",
          "key": "Namespace",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 18
    })
  custom_id = "dynatrace.opentelemetry.k8s-namespace-pods"
  # private = false
}
