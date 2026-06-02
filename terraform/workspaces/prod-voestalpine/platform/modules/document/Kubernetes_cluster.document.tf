resource "dynatrace_document" "Kubernetes_cluster" {
  name      = "Kubernetes cluster"
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
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 43
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 43
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
          "y": 39
        },
        "32": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 39
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "34": {
          "h": 8,
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
          "query": "// calculate the last stable memory request commitment in percent\n// by dividing the defined usage requests by the allocatable memory\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.requests_memory),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd requests_memory_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd requests_memory_percent = arrayFirst(requests_memory_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory requests commitment",
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
                "record": "valuesOp2"
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
          "query": "// calculate the last stable CPU limit commitment in percent\n// by dividing the defined container CPU limits by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.limits_cpu),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd limits_cpu_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd limits_cpu_percent = arrayFirst(limits_cpu_percent)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU limits commitment",
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
          "query": "// calculate the last stable memory limit commitment in percent\n// by dividing the defined limits by the allocatable memory\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.limits_memory),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd limits_memory_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd limits_memory_percent = arrayFirst(limits_memory_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory limits commitment",
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
          "query": "// show the top 20 CPU usages split by namespace\ntimeseries {\n  cpu = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort cpu desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage per namespace",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Container - CPU usage",
                "min": {
                  "mode": "custom",
                  "value": 0
                }
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
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// list the last stable values for CPU usage, throttling, requests and limits for each namespace\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.namespace.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
              "colorThresholdTarget": "background",
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
          "query": "// show the top 20 memory usages split by namespace\ntimeseries {\n  memory = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort memory desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory usage per namespace",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "memory"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "dt.entity.cloud_application_namespace",
                "interval"
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
          "query": "// list the last stable values for memory usage, requests and limits for each namespace\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.namespace.name,`Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.entity.cloud_application_namespace"
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
          "query": "// show the top 20 total receive data bandwidth split by namespace\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort received_data desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace",
                "interval"
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
          "query": "// show the top 20 total transmitted data bandwidth split by namespace\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort transmitted_data desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace",
                "interval"
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
          "query": "// show the top 20 total dropped packets received split by namespace\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort received_packets_dropped desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace"
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
          "query": "// show the top 20 total dropped packets transmitted split by namespace\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort transmitted_packets_dropped desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace"
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
          "query": "// show the top 20 errors received split by namespace\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort received_errors desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace"
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
          "query": "// show the top 20 errors while transmitting split by namespace\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort transmitted_errors desc\n| limit 20",
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
                "dt.entity.cloud_application_namespace"
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
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 average receive data bandwidth split by namespace\ntimeseries {\n  received_data = avg(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort received_data desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average pod bandwidth by namespace: received",
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
                "dt.entity.cloud_application_namespace",
                "interval"
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
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 average transmitted data bandwidth split by namespace\ntimeseries {\n  transmitted_data = avg(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name }\n| sort transmitted_data desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average pod bandwidth by namespace: transmitted",
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
                "dt.entity.cloud_application_namespace",
                "interval"
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
          "query": "// list a table by namespace with network statistics\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.entity.cloud_application_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// show namespaces with missing timeseries, e.g. as there were no packets dropped.\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.namespace.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
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
                  "dt.entity.cloud_application_namespace"
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
          "content": "### Cluster: [$Cluster](/ui/intent/dynatrace.kubernetes/view-entity-dt.entity.kubernetes_cluster/#{\"id\":\"$ClusterID\"})\nGet broad visibility into the scale, status, and resource usage of your Kubernetes clusters. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-cluster\",\"dt.variableValues\":{\"Cluster\":\"aks-playground\"}})",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// calculate the last stable CPU usage in percent \n// by dividing the usage by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.cpu_usage),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd cpu_usage_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd cpu_usage_percent = arrayFirst(cpu_usage_percent)",
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
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "cpu_usage_percent",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "cpu_usage_percent",
              "sparklineSettings": {
                "isVisible": false,
                "record": "valuesOp1"
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
          "query": "// calculate the last stable memory usage in percent\n// by dividing the usage by the allocatable memory\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.memory_working_set),\n  valuesOp2 = sum(dt.kubernetes.node.memory_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd memory_usage_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd memory_usage_percent = arrayFirst(memory_usage_percent)",
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
          "query": "// calculate the last stable pod utilization in percent\n// by dividing the pods in running or undefined phase by the number of allocatable pods\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.pods),\n  valuesOp2 = sum(dt.kubernetes.node.pods_allocatable)\n}, \n// filter pods in running or unknown phase and by the cluster selected \nfilter: {\n  if(isNotNull(pod_phase), pod_phase == \"Running\", else: true) AND\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd pods_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd pods_percent = arrayFirst(pods_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Pod utilization",
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
          "query": "// calculate the last stable CPU request commitment in percent \n// by dividing the defined container CPU requests by the allocatable CPUs\ntimeseries {\n  valuesOp1 = sum(dt.kubernetes.container.requests_cpu),\n  valuesOp2 = sum(dt.kubernetes.node.cpu_allocatable)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, from: -2m\n| fieldsAdd requests_cpu_percent = valuesOp1[] / valuesOp2[] * 100\n| fieldsAdd requests_cpu_percent = arrayFirst(requests_cpu_percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "CPU requests commitment",
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
            ]
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// filter timeseries by the selected cluster\nfetch dt.entity.kubernetes_cluster\n| fields entity.name\n| sort entity.name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectArray(entity.name)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate back to the kubernetes app\nfetch dt.entity.kubernetes_cluster\n| filter entity.name==$Cluster\n| fields id\n// if no clusters, add 'unknown-cluster' placeholder to avoid errors\n| summarize entries = collectArray(id)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"unknown-cluster\" })\n| expand records",
          "key": "ClusterID",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.kubernetes.kubernetes-cluster"
  # private = false
}
