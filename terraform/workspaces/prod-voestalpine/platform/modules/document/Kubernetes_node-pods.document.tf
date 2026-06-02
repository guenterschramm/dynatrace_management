resource "dynatrace_document" "Kubernetes_node-pods" {
  name      = "Kubernetes node - pods"
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
          "query": "// show the top 20 CPU usages split by pods\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| filter isNotNull(cpu_usage)\n| sort cpu_usage desc\n| limit 20",
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
              "hiddenLegendFields": [
                "dt.entity.cloud_application_instance"
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
                "baseUnit": "millicore",
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
          "query": "// list the CPU usage, throttling, requests and limits split by pods, sorted by cpu usage\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.pod.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
          "query": "// show the top 20 memory usages split by pods\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name }\n| sort memory_usage desc\n| limit 20",
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
              "xAxisLabel": "timeframe"
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
          "query": "// list the memory usage, requests and limits split by pods\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.node.name == $Node\n}, by: { dt.entity.cloud_application_instance, k8s.pod.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.pod.name, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.entity.cloud_application_instance"
                ]
              ],
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
        "21": {
          "content": "### Node: [$Node](/ui/intent/dynatrace.kubernetes/view-entity-dt.entity.kubernetes_node/#{\"id\":\"$NodeID\"})\nUnderstand pod resource consumption on your Kubernetes nodes. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-node-pods\",\"dt.variableValues\":{\"Cluster\":\"aks-playground\"}})",
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
            ]
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// filter nodes and timeseries by the selected cluster\nfetch dt.entity.kubernetes_cluster\n| fields entity.name\n| sort entity.name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectArray(entity.name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// filter timeseries by selected node \nfetch dt.entity.kubernetes_node\n| fields id, node.name = entity.name\n| filter in(id, classicEntitySelector(concat(\"type(KUBERNETES_NODE),toRelationship.isClusterOfNode(type(KUBERNETES_CLUSTER),entityName.equals(\",$Cluster,\"))\")))\n| fields node.name\n| sort node.name\n// if no nodes, add * placeholder to avoid errors\n| summarize entries = collectArray(node.name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Node",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate back to the kubernetes app\nfetch dt.entity.kubernetes_node\n| filter entity.name==$Node\n| filter in(id, classicEntitySelector(concat(\"type(KUBERNETES_NODE),toRelationship.isClusterOfNode(type(KUBERNETES_CLUSTER),entityName.equals(\", $Cluster,\"))\")))\n| fields id\n// if no nodes, add 'unknown-node' placeholder to avoid errors\n| summarize entries = collectArray(id)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"unknown-node\" })\n| expand records",
          "key": "NodeID",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.kubernetes.kubernetes-node-pods"
  # private = false
}
