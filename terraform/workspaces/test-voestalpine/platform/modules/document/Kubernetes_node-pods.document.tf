resource "dynatrace_document" "Kubernetes_node-pods" {
  name      = "Kubernetes node - pods"
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
          "h": 8,
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
          "y": 22
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "21": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "22": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "23": {
          "h": 1,
          "w": 3,
          "x": 21,
          "y": 7
        },
        "24": {
          "h": 1,
          "w": 3,
          "x": 18,
          "y": 7
        },
        "25": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "26": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 38
        },
        "27": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 38
        },
        "28": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 44
        },
        "29": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 44
        },
        "30": {
          "h": 1,
          "w": 4,
          "x": 4,
          "y": 43
        },
        "31": {
          "h": 1,
          "w": 4,
          "x": 0,
          "y": 43
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
          "query": "// calculate the last stable memory requests in percent\n// by dividing the defined usage requests by the allocatable memory\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.requests_memory),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, from: -2m\n| fieldsAdd requests_memory_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd requests_memory_percent = arrayFirst(requests_memory_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory utilization (requests)",
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
                  "field": "requests_memory_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "requests_memory_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "requests_memory_percent",
                  "value": 130
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "requests_memory_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "requests_memory_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp1"
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
                "identifier": "requests_memory_percent",
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
          "query": "// calculate the last stable CPU limits in percent\n// by dividing the defined container CPU limits by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.limits_cpu),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, from: -2m\n| fieldsAdd limits_cpu_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd limits_cpu_percent = arrayFirst(limits_cpu_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU utilization (limits)",
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
                  "field": "limits_cpu_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "limits_cpu_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "limits_cpu_percent",
                  "value": 150
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "limits_cpu_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "limits_cpu_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2"
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
                "identifier": "limits_cpu_percent",
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
          "query": "// calculate the last stable memory limits in percent\n// by dividing the defined limits by the allocatable memory\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.limits_memory),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, from: -2m\n| fieldsAdd limits_memory_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd limits_memory_percent = arrayFirst(limits_memory_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory utilization (limits)",
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
                  "field": "limits_memory_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "limits_memory_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "limits_memory_percent",
                  "value": 150
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "limits_memory_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "limits_memory_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2"
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
                "identifier": "limits_memory_percent",
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
          "query": "// show the top 20 CPU usages split by pods\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
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
                "baseUnit": "millicore",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage",
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
          "query": "// list the CPU usage, throttling, requests and limits split by pods, sorted by cpu usage\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.pod.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
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
                  "dt.smartscape.k8s_pod"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": {
                "columnId": "[\"CPU usage\"]",
                "direction": "descending"
              }
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
          "query": "// show the top 20 memory usages split by pods\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
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
              "xAxisLabel": "timeframe"
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
          "query": "// list the memory usage, requests and limits split by pods\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.smartscape.k8s_pod, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.pod.name, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
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
                "columnId": "[\"Name\"]",
                "direction": "unset"
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
        "21": {
          "content": "### Node: [$Node]($IntentLink)\nUnderstand pod resource consumption on your Kubernetes nodes. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-node-pods\",\"dt.variableValues\":{\"Cluster\":\"aks-playground\"}})",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "### Explanation of the Query\nThe query aggregates the pre-counted error logs (`dt.log.status_per_entity_count`) for Kubernetes pods within a specific cluster (`$Cluster`) and node (`$Node`). It filters the logs to include only those with a status of \"ERROR\" and groups the results by `k8s.pod.name`. The `sum` function calculates the total error count for each pod.\n\n### Why the Bar Chart is Useful\nA bar chart is ideal for visualizing this data as it provides a clear comparison of error counts across different pods. This helps identify which pods are experiencing the most issues, enabling targeted troubleshooting and optimization.",
          "query": "// Aggregate pre-counted error logs for selected Kubernetes cluster and Kubernetes node\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {k8s.pod.name},\n  filter: {status == \"ERROR\" and k8s.cluster.name == $Cluster and k8s.node.name == $Node}",
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
        "23": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "24": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.node.name%20%3D%3D%20%5C%22$NodeEncoded%5C%22%20and%20status%20%3D%3D%20%5C%22ERROR%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "25": {
          "content": "### Log Analytics\n\nLog distribution, volume trends, error breakdowns, patterns, and live tail. [Get deeper insights in Logs app](/ui/apps/dynatrace.logs/).",
          "type": "markdown"
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile visualizes the distribution of pre-counted logs by status (ERROR, WARN, INFO, and others) for a selected Kubernetes cluster and node. Logs are sorted by severity, with the most critical statuses displayed first.  \n\n**Purpose:**  \nThe bar chart helps identify the severity and frequency of log statuses, enabling quick assessment of issues within the Kubernetes environment.",
          "query": "// Visualize pre-counted logs by status for selected Kubernetes cluster and Kubernetes node\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.node.name == $Node}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:** Aggregates pre-counted logs by status for a selected Kubernetes cluster and node, sorting by severity (ERROR \u003e WARN \u003e INFO). The donut chart visually highlights the distribution of log statuses, enabling quick identification of critical issues.",
          "query": "// Aggregate pre-counted logs by status for selected Kubernetes cluster and Kubernetes node\ntimeseries value = sum(dt.log.status_per_entity_count, scalar:true),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.node.name == $Node}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays the latest 50 error and warning logs from a selected Kubernetes cluster and node, sorted by timestamp. It includes pod-specific links for quick navigation and formatted timestamps for clarity.  \n\n**Purpose:**  \nThis visualization helps identify recent issues and warnings in Kubernetes environments, enabling rapid troubleshooting and direct access to affected pods for deeper analysis.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.node.name == $Node and in(status, array(\"ERROR\", \"WARN\"))\n| sort timestamp desc\n| limit 50\n// Construct Kubernetes app intent link\n| fieldsAdd pod = concat(\"[\", k8s.pod.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.node.name%22%3A%20%22\", $NodeEncoded, \"%22%2C%0A%20%20%22k8s.pod.name%22%3A%20%22\", replaceString(encodeUrl(k8s.pod.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields timestamp = formatTimestamp(timestamp, format:\"HH:mm:ss a\"), status, pod, content",
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
                  "id": 1186627.8000000007,
                  "value": "markdown"
                }
              ],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": []
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays a table summarizing error and warning logs from a selected Kubernetes cluster and node. It normalizes volatile data (e.g., timestamps, UUIDs, IPs) for pattern-based analysis, highlights recurring log patterns, and links directly to Kubernetes pod details for further investigation.  \n\n**Purpose:**  \nThis visualization helps identify frequent issues and patterns across pods, enabling efficient troubleshooting and root cause analysis within Kubernetes environments.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.node.name == $Node\n| filter in(status, array(\"ERROR\", \"WARN\"))\n// Normalize common volatile data\n| fieldsAdd pattern = content\n// UUID tokens\n| fieldsAdd pattern = replacePattern(pattern, \"UUIDSTRING\", \"\u003cUUID\u003e\")\n// Timestamps\n| fieldsAdd pattern = replacePattern(pattern, \"(ISO8601|HTTPDATE(locale='en-US')|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"\u003cTIME\u003e\")\n// IP addresses\n| fieldsAdd pattern = replacePattern(pattern, \"IPADDR\", \"\u003cIP\u003e\")\n// Hexadecimal strings \u003e= 5 characters\n| fieldsAdd pattern = replacePattern(pattern, \"XDIGIT{5,}\", \"\u003cHEX\u003e\")\n// Standalone numbers\n| fieldsAdd pattern = replacePattern(pattern, \"DIGIT\", \"\u003cDIGIT\u003e\")\n// Full URLs\n| fieldsAdd pattern = replacePattern(pattern, \"'://' [^/]+ '/'? NSPACE*\", \"://\u003cURL\u003e\")\n// URL path after space\n| fieldsAdd pattern = replacePattern(pattern, \"' /' NSPACE*\", \"/\u003cURLPATH\u003e\")\n// Kubernetes pod name suffix\n| fieldsAdd pattern = replacePattern(pattern, \"'-' ALNUM{10} '-' ALNUM{5}\", \"\u003cPODID\u003e\")\n// Dynatrace internal log tags\n| fieldsAdd pattern = replacePattern(pattern, \"'[!dt' LD ']'\", \"\")\n// Collapse multiple spaces into one\n| fieldsAdd pattern = replacePattern(pattern, \"' '+\", \" \")\n// Redact user name after 'user' keyword\n| fieldsAdd pattern = replacePattern(pattern, \"'user ' [! ,]{1,}\", \"user \u003cUSER\u003e\")\n// Summarize by pattern and status\n| summarize count = count(), by: {pattern, status, k8s.pod.name}\n| filter count \u003e 1\n| sort count desc\n| limit 20\n// Construct Kubernetes app intent link\n| fieldsAdd pod = concat(\"[\", k8s.pod.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.node.name%22%3A%20%22\", $NodeEncoded, \"%22%2C%0A%20%20%22k8s.pod.name%22%3A%20%22\", replaceString(encodeUrl(k8s.pod.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields count, status, pod, pattern",
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
                  "id": 1138005.5,
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
        "30": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "31": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.node.name%20%3D%3D%20%5C%22$NodeEncoded%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the last stable CPU usage in percent \n// by dividing the usage by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.cpu_usage),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n  // retrieve last stable values\n}, from: -2m\n| fieldsAdd cpu_usage_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd cpu_usage_percent = arrayFirst(cpu_usage_percent)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
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
                "record": "valuesOp2"
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
              },
              {
                "added": 1734622711674,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage_percent_now",
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
          "query": "// calculate the last stable memory usage in percent\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.memory_working_set),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, from: -2m\n| fieldsAdd memory_usage_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd memory_usage_percent = arrayFirst(memory_usage_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory utilization",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
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
                "record": "valuesOp2"
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
          "query": "// calculate the last stable pod utilization in percent\n// by dividing the pods in running or undefined phase by the number of allocatable pods\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.pods),\n  valuesOp2 = sum(dt.kubernetes.node.pods_allocatable)\n  // filter pods in running or unknown phase and by selected cluster and node\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node AND\n  if(isNotNull(pod_phase), pod_phase == \"Running\", else: true)\n}, from: -2m\n| fieldsAdd pods_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd pods_percent = arrayFirst(pods_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pods utilization",
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
                  "field": "pods_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "pods_percent",
                  "value": 80
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "pods_percent",
                  "value": 90
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "pods_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "pods_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2"
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
                "upward": {
                  "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 1717763264287,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pods_percent",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "// calculate the last stable CPU requests in percent \n// by dividing the defined container CPU requests by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.requests_cpu),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, from: -2m\n| fieldsAdd requests_cpu_percent = valuesOp1[] / valuesOp2[] * 100\n// Take the first value of the timeseries (from: -2min), ensuring a stable value\n| fieldsAdd requests_cpu_percent = arrayFirst(requests_cpu_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU utilization (requests)",
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
                  "field": "requests_cpu_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "requests_cpu_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "â‰¥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "requests_cpu_percent",
                  "value": 130
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "requests_cpu_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "requests_cpu_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp2"
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
                "identifier": "requests_cpu_percent",
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
          "input": "// filter timeseries by the selected cluster\ntimeseries count(`dt.kubernetes.nodes`), by: {name=k8s.cluster.name}\n| fields name\n| sort name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// filter timeseries by selected node \ntimeseries count(`dt.kubernetes.node.pods_allocatable`), filter: {k8s.cluster.name == $Cluster}, by: {node.name=k8s.node.name}\n| fields node.name\n// if no nodes, add * placeholder to avoid errors\n| summarize entries = collectDistinct(node.name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Node",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate back to the kubernetes app\ntimeseries count(`dt.kubernetes.node.pods_allocatable`), filter: {k8s.node.name==$Node}, by: {k8s.node.name, dt.smartscape.k8s_node, dt.smartscape.k8s_cluster, dt.entity.kubernetes_node}\n| fields k8s.node.name, dt.smartscape.k8s_node, dt.smartscape.k8s_cluster, dt.entity.kubernetes_node\n| fieldsAdd smartscapeIntent = concat(\"/ui/intent/dynatrace.kubernetes/view-entity-dt.smartscape.k8s_node/#{\\\"id\\\":\\\"\", dt.smartscape.k8s_node, \"\\\"}\")\n| fieldsAdd classicIntent = concat(\"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_node/#{\\\"id\\\":\", dt.entity.kubernetes_node, \"\\\"}\")\n| fields intentLink = if(isNotNull(dt.smartscape.k8s_cluster), smartscapeIntent, else: classicIntent)\n// if no nodes, add 'unknown-node' placeholder to avoid errors\n| summarize entries = collectDistinct(intentLink)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_node/#{\\\"id\\\":\\\"unknown-node\\\"}\" })\n| expand records",
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
          "input": "// Encode the node name (spaces, special characters) to use it in intent links\ndata record(replaceString(encodeUrl($Node), \"+\", \"%20\"))",
          "key": "NodeEncoded",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-node-pods"
  # private = false
}
