resource "dynatrace_document" "Kubernetes_namespace-pods" {
  name      = "Kubernetes namespace - pods"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
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
          "y": 9
        },
        "15": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 36
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 36
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 44
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 44
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "34": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 48
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "36": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "37": {
          "h": 1,
          "w": 3,
          "x": 18,
          "y": 7
        },
        "38": {
          "h": 1,
          "w": 3,
          "x": 21,
          "y": 7
        },
        "39": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 56
        },
        "40": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 58
        },
        "41": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 58
        },
        "42": {
          "h": 1,
          "w": 4,
          "x": 0,
          "y": 63
        },
        "43": {
          "h": 1,
          "w": 4,
          "x": 4,
          "y": 63
        },
        "44": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 64
        },
        "45": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 64
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
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 6
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "memory_requests_utilization_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "memory_requests_utilization_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "memory_requests_utilization_percent",
                  "value": 130
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "cascade": null,
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "cpu_limits_utilization_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "cpu_limits_utilization_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "cpu_limits_utilization_percent",
                  "value": 150
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "cascade": null,
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "memory_limits_utilization_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "memory_limits_utilization_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "memory_limits_utilization_percent",
                  "value": 90
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "cascade": null,
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
          "query": "// show the top 20 pods with the highest CPU usage \ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
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
            "dataMapping": {
              "displayedFields": [
                "k8s.pod.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1715178821410,
                "baseUnit": "none",
                "cascade": null,
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
          "query": "// show summarized CPU metrics for the selected cluster and namespace\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// join incomplete timeseries, e.g. undefind CPU limits\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.pod.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
                  "dt.smartscape.k8s_pod"
                ]
              ],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": [
              {
                "added": 1715618539759,
                "baseUnit": "millicore",
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
          "query": "// show to top 20 memory usages in the selected cluster and namespace\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
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
            "dataMapping": {
              "displayedFields": [
                "k8s.pod.name"
              ]
            },
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
          "query": "// show memory metrics by pod \ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include incomplete data, i.e. pods without defined memory limits.\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.pod.name, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.smartscape.k8s_pod"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": {
                "columnId": "[\"Memory usage\"]",
                "direction": "descending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "byte",
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
          "query": "// show the top 20 workloads with the highest receiving data bandwidth\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort received_data desc\n| limit 20",
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
            "dataMapping": {
              "displayedFields": [
                "k8s.pod.name"
              ]
            },
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
          "query": "// show the top 20 workloads with the highest transmitting data bandwidth\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort transmitted_data desc\n| limit 20",
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
            "dataMapping": {
              "displayedFields": [
                "k8s.pod.name"
              ]
            },
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
          "query": "// show the top 20 workloads with the highest number of received packets dropped\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort received_packets_dropped desc\n| limit 20",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1727703359639,
                "baseUnit": "count_per_second",
                "cascade": null,
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
          "query": "// show the top 20 workloads with the highest number of transmitted packets dropped\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort transmitted_packets_dropped desc\n| limit 20",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1727703415478,
                "baseUnit": "count_per_second",
                "cascade": null,
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
          "query": "// show the top 20 workloads with respect to network errors received\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort received_errors desc\n| limit 20",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1727703459327,
                "baseUnit": "count_per_second",
                "cascade": null,
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
          "query": "// show the top 20 workloads with respect to network errors while transmitting\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort transmitted_errors desc\n| limit 20",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1727703517246,
                "baseUnit": "count_per_second",
                "cascade": null,
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
          "query": "// list the latest stable network metrics for all pods\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.pod.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
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
                  "dt.smartscape.k8s_pod"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": {
                "columnId": "[\"Current receive bandwidth\"]",
                "direction": "descending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "Bps",
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
          "content": "### Pods in namespace: [$Namespace]($IntentLink)\nAnalyze resource allocation of all pods within a namespace. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-namespace-pods\",\"dt.variableValues\":{\"Cluster\":\"eks-playground\",\"Namespace\":\"easytrade\"}})",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Explanation:**  \nThis query aggregates the pre-counted error logs (`dt.log.status_per_entity_count`) for a specific Kubernetes cluster (`$Cluster`) and namespace (`$Namespace`) where the log status is \"ERROR.\" The results are grouped by the cluster name and namespace name.\n\n**Purpose of Visualization:**  \nThe bar chart effectively displays error log counts across Kubernetes clusters and namespaces, enabling quick identification of problematic areas and facilitating targeted troubleshooting.",
          "query": "// Aggregate pre-counted error logs for selected Kubernetes cluster and Kubernetes namespace\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {k8s.pod.name},\n  filter: {status == \"ERROR\" and k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error logs",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "37": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.namespace.name%20%3D%3D%20%5C%22$NamespaceEncoded%5C%22%20and%20status%20%3D%3D%20%5C%22ERROR%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "38": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "39": {
          "content": "### Log Analytics\n\nLog distribution, volume trends, error breakdowns, patterns, and live tail. [Get deeper insights in Logs app](/ui/apps/dynatrace.logs/).",
          "type": "markdown"
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile visualizes the distribution of pre-counted logs by status (ERROR, WARN, INFO, and others) for a selected Kubernetes cluster and namespace. Logs are sorted by severity, with the most critical statuses displayed first.  \n\n**Purpose:**  \nThe bar chart helps quickly identify the severity and frequency of log statuses, enabling efficient monitoring and prioritization of issues within the Kubernetes environment.",
          "query": "// Visualize pre-counted logs by status for selected Kubernetes cluster and Kubernetes namespace\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log volume",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "log-status",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nAggregates pre-counted logs by status for a specific Kubernetes cluster and namespace, sorting them by severity (ERROR \u003e WARN \u003e INFO). The donut chart visually highlights the distribution of log statuses, enabling quick identification of critical issues.",
          "query": "// Aggregate pre-counted logs by status for selected Kubernetes cluster and Kubernetes namespace\ntimeseries value = sum(dt.log.status_per_entity_count, scalar:true),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log level distribution",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "log-status",
                  "comparator": "≥",
                  "field": "interval",
                  "type": "duration",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 29
            },
            "unitsOverrides": [
              {
                "added": 1779169634641,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "42": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.namespace.name%20%3D%3D%20%5C%22$NamespaceEncoded%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "43": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nDisplays the latest 50 error and warning logs from the selected Kubernetes cluster and namespace, sorted by timestamp. Useful for quickly identifying recent issues and their details.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster and Kubernetes namespace\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(status, array(\"ERROR\", \"WARN\"))\n| sort timestamp desc\n| limit 50\n// Construct Kubernetes app intent link\n| fieldsAdd pod = concat(\"[\", k8s.pod.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", $NamespaceEncoded, \"%22%2C%0A%20%20%22k8s.pod.name%22%3A%20%22\", replaceString(encodeUrl(k8s.pod.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields timestamp = formatTimestamp(timestamp, format:\"HH:mm:ss a\"), status, pod, content",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-15m",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Error and warning logs (last 15 minutes)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-warning-default, #a9780f)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "metadata": {
                    "fields": [
                      "Status",
                      "status"
                    ]
                  },
                  "type": "string",
                  "value": "WARN"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "metadata": {
                    "applyTo": "value",
                    "fields": []
                  },
                  "type": "string",
                  "value": "ERROR"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "type": "string",
                  "value": "INFO"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-none-default, #2c2f3f)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "type": "string",
                  "value": "NONE"
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"timestamp\"]",
                "[\"status\"]",
                "[\"pod\"]",
                "[\"content\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "content"
                  ],
                  "id": 1779171969921,
                  "value": "log-content"
                },
                {
                  "disableRemoval": false,
                  "fields": [
                    "pod"
                  ],
                  "id": 342095,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": []
          }
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays the top 20 recurring error and warning log patterns across Kubernetes pods within the selected cluster and namespace. Logs are normalized to redact sensitive data (e.g., UUIDs, IPs, timestamps) and summarized by pattern, status, and pod name.  \n\n**Purpose:**  \nThis visualization helps identify common issues and anomalies in Kubernetes workloads, enabling faster troubleshooting and root cause analysis by focusing on frequently occurring log patterns.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster and Kubernetes namespace\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace\n| filter in(status, array(\"ERROR\", \"WARN\"))\n// Normalize common volatile data\n| fieldsAdd pattern = content\n// UUID tokens\n| fieldsAdd pattern = replacePattern(pattern, \"UUIDSTRING\", \"\u003cUUID\u003e\")\n// Timestamps\n| fieldsAdd pattern = replacePattern(pattern, \"(ISO8601|HTTPDATE(locale='en-US')|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"\u003cTIME\u003e\")\n// IP addresses\n| fieldsAdd pattern = replacePattern(pattern, \"IPADDR\", \"\u003cIP\u003e\")\n// Hexadecimal strings \u003e= 5 characters\n| fieldsAdd pattern = replacePattern(pattern, \"XDIGIT{5,}\", \"\u003cHEX\u003e\")\n// Standalone numbers\n| fieldsAdd pattern = replacePattern(pattern, \"DIGIT\", \"\u003cDIGIT\u003e\")\n// Full URLs\n| fieldsAdd pattern = replacePattern(pattern, \"'://' [^/]+ '/'? NSPACE*\", \"://\u003cURL\u003e\")\n// URL path after space\n| fieldsAdd pattern = replacePattern(pattern, \"' /' NSPACE*\", \"/\u003cURLPATH\u003e\")\n// Kubernetes pod name suffix\n| fieldsAdd pattern = replacePattern(pattern, \"'-' ALNUM{10} '-' ALNUM{5}\", \"\u003cPODID\u003e\")\n// Dynatrace internal log tags\n| fieldsAdd pattern = replacePattern(pattern, \"'[!dt' LD ']'\", \"\")\n// Collapse multiple spaces into one\n| fieldsAdd pattern = replacePattern(pattern, \"' '+\", \" \")\n// Redact user name after 'user' keyword\n| fieldsAdd pattern = replacePattern(pattern, \"'user ' [! ,]{1,}\", \"user \u003cUSER\u003e\")\n// Summarize by pattern and status\n| summarize count = count(), by: {pattern, status, k8s.pod.name}\n| filter count \u003e 1\n| sort count desc\n| limit 20\n// Construct Kubernetes app intent link\n| fieldsAdd pod = concat(\"[\", k8s.pod.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", $NamespaceEncoded, \"%22%2C%0A%20%20%22k8s.pod.name%22%3A%20%22\", replaceString(encodeUrl(k8s.pod.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields count, status, pod, pattern",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-15m",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Error and warning log patterns (last 15 minutes)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-warning-default, #a9780f)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "metadata": {
                    "fields": [
                      "status"
                    ]
                  },
                  "type": "string",
                  "value": "WARN"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "status",
                  "metadata": {
                    "applyTo": "value",
                    "fields": [
                      "status"
                    ]
                  },
                  "type": "string",
                  "value": "ERROR"
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"count\"]",
                "[\"status\"]",
                "[\"pod\"]",
                "[\"pattern\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "pod"
                  ],
                  "id": 3252197,
                  "value": "markdown"
                }
              ],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": [
              {
                "added": 1779170699106,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "count",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "cpu_usage_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "cpu_usage_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "cpu_usage_percent",
                  "value": 90
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1716814972871,
                "baseUnit": "percent",
                "cascade": null,
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "memory_usage_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "memory_usage_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "memory_usage_percent",
                  "value": 90
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "cascade": null,
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
            "unitsOverrides": [
              {
                "added": 1734622122485,
                "baseUnit": "count",
                "cascade": null,
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "cpu_requests_utilization_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "cpu_requests_utilization_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "cpu_requests_utilization_percent",
                  "value": 130
                }
              ]
            },
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
                "baseUnit": "percent",
                "cascade": null,
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
          "input": "// filter timeseries by the selected cluster\ntimeseries count(`dt.kubernetes.workloads`), by: {name=k8s.cluster.name}\n| fields name\n| sort name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// filter timeseries by the selected namespace \ntimeseries count(`dt.kubernetes.workloads`), filter: {k8s.cluster.name == $Cluster}, by: {name=k8s.namespace.name}\n| fields name\n| sort name asc\n// if no namespaces, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Namespace",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate back to the kubernetes app\ntimeseries count(`dt.kubernetes.workloads`), filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace}, by: {k8s.cluster.name, k8s.namespace.name, dt.smartscape.k8s_namespace, dt.smartscape.k8s_cluster, dt.entity.kubernetes_namespace}\n| fields k8s.cluster.name, k8s.namespace.name, dt.smartscape.k8s_namespace, dt.smartscape.k8s_cluster, dt.entity.kubernetes_namespace\n| fieldsAdd smartscapeIntent = concat(\"/ui/intent/dynatrace.kubernetes/view-entity-dt.smartscape.k8s_namespace/#{\\\"id\\\":\\\"\", dt.smartscape.k8s_namespace, \"\\\"}\")\n| fieldsAdd classicIntent = concat(\"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\\\"id\\\":\", dt.entity.kubernetes_namespace, \"\\\"}\")\n| fields intentLink = if(isNotNull(dt.smartscape.k8s_cluster), smartscapeIntent, else: classicIntent)\n// if no namespaces, add 'unknown-namespace' placeholder to avoid errors\n| summarize entries = collectDistinct(intentLink)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\\\"id\\\":\\\"unknown-namespace\\\"}\" })\n| expand records",
          "key": "IntentLink",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "// Encode the cluster name (spaces, special characters) to use it in intent links\ndata record(replaceString(encodeUrl($Cluster), \"+\", \"%20\"))",
          "key": "ClusterEncoded",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "// Encode the namespace name (spaces, special characters) to use it in intent links\ndata record(replaceString(encodeUrl($Namespace), \"+\", \"%20\"))",
          "key": "NamespaceEncoded",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-namespace-pods"
  # private = false
}
