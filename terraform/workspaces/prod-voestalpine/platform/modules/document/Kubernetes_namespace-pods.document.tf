resource "dynatrace_document" "Kubernetes_namespace-pods" {
  name      = "Kubernetes namespace - pods"
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
        "25": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 38
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 38
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 42
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 42
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
          "y": 46
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
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
          "query": "// calculate the latest stable memory utilization for the selected cluster and namespace\n// in relation to the defined memory requests\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory)\n}, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.namespace.name },\nfrom: -2m\n| fieldsAdd memory_usage_namespace = arrayFirst(memory_usage)\n| fieldsAdd memory_requests_namespace = arrayFirst(requests_memory)\n| fieldsAdd memory_requests_utilization_percent = memory_usage_namespace * 100 / memory_requests_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory requests utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "memory_requests_utilization_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "memory_requests_utilization_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "requests_memory"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the latest stable CPU limit utilization for the selected cluster and namespace\n// in relation to the defined CPU limits\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  // both timeseries exist on container level, summarize them on namespace level.\n}, by: { k8s.namespace.name },\nfrom: -2m\n| fieldsAdd cpu_usage_namespace = arrayFirst(cpu_usage)\n| fieldsAdd cpu_limits_namespace = arrayFirst(limits_cpu)\n| fieldsAdd cpu_limits_utilization_percent = cpu_usage_namespace * 100 / cpu_limits_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU limits utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "cpu_limits_utilization_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "cpu_limits_utilization_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "limits_cpu"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the latest stable memory utilization for the selected cluster and namespace\n// in relation to the defined memory limits\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.namespace.name },\nfrom: -2m\n| fieldsAdd memory_usage_namespace = arrayFirst(memory_usage)\n| fieldsAdd memory_limits_namespace = arrayFirst(limits_memory)\n| fieldsAdd memory_limits_utilization_percent = memory_usage_namespace * 100 / memory_limits_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory limits utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "memory_limits_utilization_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "memory_limits_utilization_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "limits_memory"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 pods with the highest CPU usage \ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage per pod",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu_usage"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Container - CPU usage"
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715178821410,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show summarized CPU metrics for the selected cluster and namespace\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// join incomplete timeseries, e.g. undefind CPU limits\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.pod.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
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
              "sortBy": {
                "columnId": "[\"CPU usage\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715618539759,
                "baseUnit": "millicore",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU usage",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618579313,
                "baseUnit": "millicore",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU throttled",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618597827,
                "baseUnit": "millicore",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU requests",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618609828,
                "baseUnit": "millicore",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU limits",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618618693,
                "baseUnit": "core",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU slack",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715686358414,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715687708509,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU limits %",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
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
          "query": "// show to top 20 memory usages in the selected cluster and namespace\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory usage per pod",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "memory_usage"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Container - working set memory"
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show memory metrics by pod \ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include incomplete data, i.e. pods without defined memory limits.\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.pod.name, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
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
              "sortBy": {
                "columnId": "[\"Memory usage\"]",
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
                "identifier": "Memory usage",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698181310,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory requests",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698189862,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698204816,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory limits",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698213152,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory limits %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698222294,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory slack",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with the highest receiving data bandwidth\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort received_data desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Receive bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Pod - network received data"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with the highest transmitting data bandwidth\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort transmitted_data desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Transmit bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_data"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Pod - network transmitted data"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with the highest number of received packets dropped\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort received_packets_dropped desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of received packets dropped",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "received_packets_dropped"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703359639,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "received_packets_dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with the highest number of transmitted packets dropped\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort transmitted_packets_dropped desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of transmitted packets dropped",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_packets_dropped"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703415478,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "transmitted_packets_dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with respect to network errors received\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort received_errors desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of received errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "received_errors"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
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
            ]
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads with respect to network errors while transmitting\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort transmitted_errors desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of transmitted errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "transmitted_errors"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
              ],
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
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
            ]
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
          "query": "// list the latest stable network metrics for all pods\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.pod.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
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
              "sortBy": {
                "columnId": "[\"Current receive bandwidth\"]",
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
                "identifier": "Current receive bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1715698181310,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current transmit bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1727770868052,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of received packets dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770889671,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of transmitted packets dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770905889,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of received errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770919779,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of transmitted errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "35": {
          "content": "### Pods in namespace: [$Namespace](/ui/intent/dynatrace.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\"id\":\"$NamespaceID\"})\nAnalyze resource allocation of all pods within a namespace. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-namespace-pods\",\"dt.variableValues\":{\"Cluster\":\"eks-playground\",\"Namespace\":\"easytrade\"}})",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the last stable CPU usage in percent \n// in relation to the CPU usage of the whole cluster.\n// get the last stable total CPU usage of the cluster.\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage)\n}, filter: {\n  // filter by selected cluster\n  k8s.cluster.name == $Cluster\n}, by: { k8s.cluster.name },\nfrom: -2m\n| fieldsAdd cpu_usage_cluster = arrayFirst(cpu_usage)\n| fieldsRemove cpu_usage\n// get the last stable total CPU usage for the selected namespace in the selected cluster\n| join [\n  timeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage)\n  }, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  }, by: { k8s.namespace.name, k8s.cluster.name },\n  from: -2m\n], executionOrder: leftFirst, on: { k8s.cluster.name }, fields: { cpu_usage }\n| fieldsAdd cpu_usage_namespace = arrayFirst(cpu_usage)\n// CPU usage for this namespace in percent of the whole cluster CPU usage\n// the total namespace usages for one cluster should sum up to around 100 percent,\n// however percentages might vary over time, and there are rounding differences\n| fieldsAdd cpu_usage_percent = cpu_usage_namespace * 100  / cpu_usage_cluster",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cluster CPU utilization contribution",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "cpu_usage_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "cpu_usage_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "cpu_usage"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the last stable memory utilization of this namespace in relation to the cluster\n// calculate to total memory usage of the cluster\ntimeseries {  \n  memory_usage = sum(dt.kubernetes.container.memory_working_set)\n}, filter: {\n  // filter by selected cluster\n  k8s.cluster.name == $Cluster\n}, by: { k8s.cluster.name },\nfrom: -2m\n| fieldsAdd memory_usage_cluster = arrayFirst(memory_usage)\n| fieldsRemove memory_usage\n// calculate the total memory usage of the namespace\n| join [\n  timeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set)\n  }, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  }, by: { k8s.namespace.name, k8s.cluster.name },\n  from: -2m\n], executionOrder: leftFirst, on: { k8s.cluster.name }, fields: { memory_usage }\n| fieldsAdd memory_usage_namespace = arrayFirst(memory_usage)\n| fieldsAdd memory_usage_percent = memory_usage_namespace * 100  / memory_usage_cluster",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cluster memory utilization contribution",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "memory_usage_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "memory_usage_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "memory_usage"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the last stable number of running pods in the namespace\ntimeseries {\n  pods_namespace = sum(dt.kubernetes.pods)\n}, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // consider pods in running and pods with an unknown pod phase\n  if(isNotNull(pod_phase), pod_phase == \"Running\", else: true)\n}, by: { k8s.namespace.name },\nfrom: -2m\n| fieldsAdd pods_namespace = arrayFirst(pods_namespace)",
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
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "pods_namespace",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "pods_namespace",
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "trendField": "pods_namespace",
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the latest stable CPU utilization for the selected cluster and namespace\n// in relation to the defined CPU requests\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu)\n}, filter: {\n  // filter by selected cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n  // both timeseries exist on container level, summarize them on namespace level.\n}, by: { k8s.namespace.name },\nfrom: -2m\n| fieldsAdd cpu_usage_namespace = arrayFirst(cpu_usage)\n| fieldsAdd cpu_requests_namespace = arrayFirst(requests_cpu)\n| fieldsAdd cpu_requests_utilization_percent = cpu_usage_namespace * 100 / cpu_requests_namespace",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU requests utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "cpu_requests_utilization_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "cpu_requests_utilization_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "requests_cpu"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "isVisible": false,
                "neutral": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
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
            ]
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// filter namespaces and timeseries by the selected cluster\nfetch dt.entity.kubernetes_cluster\n| fields entity.name\n| sort entity.name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectArray(entity.name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// filter timeseries by the selected namespace\nfetch dt.entity.cloud_application_namespace\n| fields id, name = entity.name\n// show only namespaces in the selected cluster \n| filter in(id, classicEntitySelector(concat(\"type(CLOUD_APPLICATION_NAMESPACE),toRelationship.isClusterOfNamespace(type(KUBERNETES_CLUSTER),entityName.equals(\", $Cluster, \"))\")))\n| fields name\n| sort name asc\n// if no namespaces, add * placeholder to avoid errors\n| summarize entries = collectArray(name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Namespace",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate to the kubernetes app\nfetch dt.entity.cloud_application_namespace\n| filter entity.name==$Namespace\n| filter in(id, classicEntitySelector(concat(\"type(CLOUD_APPLICATION_NAMESPACE),toRelationship.isClusterOfNamespace(type(KUBERNETES_CLUSTER),entityName.equals(\", $Cluster,\"))\")))\n| fields id\n// if no namespaces, add 'unknown-namespace' placeholder to avoid errors\n| summarize entries = collectArray(id)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"unknown-namespace\" })\n| expand records",
          "key": "NamespaceID",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.kubernetes.kubernetes-namespace-pods"
  # private = false
}
