resource "dynatrace_document" "Kubernetes_cluster" {
  name      = "Kubernetes cluster"
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
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 37
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 37
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 45
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 45
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 49
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 49
        },
        "31": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 41
        },
        "32": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 41
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "34": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 53
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
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 61
        },
        "39": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 63
        },
        "40": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 63
        },
        "41": {
          "h": 1,
          "w": 4,
          "x": 0,
          "y": 68
        },
        "42": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 69
        },
        "43": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 69
        },
        "44": {
          "h": 1,
          "w": 3,
          "x": 21,
          "y": 7
        },
        "45": {
          "h": 1,
          "w": 4,
          "x": 4,
          "y": 68
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "requests_memory_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "requests_memory_percent",
                  "value": 80
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "requests_memory_percent",
                  "value": 95
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "limits_cpu_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "limits_cpu_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "limits_memory_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "limits_memory_percent",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
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
          "query": "// show the top 20 CPU usages split by namespace\ntimeseries {\n  cpu = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort cpu desc\n| limit 20",
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
            "dataMapping": {
              "displayedFields": [
                "k8s.namespace.name"
              ]
            },
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
          "query": "// list the last stable values for CPU usage, throttling, requests and limits for each namespace\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.namespace.name, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
                  "dt.smartscape.k8s_namespace"
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
          "query": "// show the top 20 memory usages split by namespace\ntimeseries {\n  memory = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort memory desc\n| limit 20",
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
                "k8s.namespace.name"
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
          "query": "// list the last stable values for memory usage, requests and limits for each namespace\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// include result tuples which have no requests or limits defined (shown as null)\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.namespace.name,`Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.smartscape.k8s_namespace"
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
          "query": "// show the top 20 total receive data bandwidth split by namespace\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort received_data desc\n| limit 20",
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
                "k8s.namespace.name"
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
          "query": "// show the top 20 total transmitted data bandwidth split by namespace\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort transmitted_data desc\n| limit 20",
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
                "k8s.namespace.name"
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
          "query": "// show the top 20 total dropped packets received split by namespace\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort received_packets_dropped desc\n| limit 20",
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
          "query": "// show the top 20 total dropped packets transmitted split by namespace\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort transmitted_packets_dropped desc\n| limit 20",
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
          "query": "// show the top 20 errors received split by namespace\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort received_errors desc\n| limit 20",
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
          "query": "// show the top 20 errors while transmitting split by namespace\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort transmitted_errors desc\n| limit 20",
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
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 average receive data bandwidth split by namespace\ntimeseries {\n  received_data = avg(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort received_data desc\n| limit 20",
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
                "k8s.namespace.name"
              ]
            },
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
          "query": "// show the top 20 average transmitted data bandwidth split by namespace\ntimeseries {\n  transmitted_data = avg(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name }\n| sort transmitted_data desc\n| limit 20",
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
                "k8s.namespace.name"
              ]
            },
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
          "query": "// list a table by namespace with network statistics\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, \n// filter by the cluster selected \nfilter: {\n  k8s.cluster.name == $Cluster\n}, by: { dt.smartscape.k8s_namespace, k8s.namespace.name },\nfrom: -2m,\nnonempty: true,\n// show namespaces with missing timeseries, e.g. as there were no packets dropped.\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.namespace.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
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
                  "dt.smartscape.k8s_namespace"
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
          "content": "### Cluster: [$Cluster]($IntentLink)\nGet broad visibility into the scale, status, and resource usage of your Kubernetes clusters. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-cluster\",\"dt.variableValues\":{\"Cluster\":\"aks-playground\"}})",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Explanation:**  \nThe query aggregates the pre-counted error logs (`dt.log.status_per_entity_count`) for a specific Kubernetes cluster, grouped by namespace (`k8s.namespace.name`). It filters logs where the status is \"ERROR\" and matches the specified cluster name (`$Cluster`).\n\n**Why this visualization is useful:**  \nA bar chart effectively displays error distribution across namespaces, enabling quick identification of namespaces with the highest error counts for targeted troubleshooting.",
          "query": "// Aggregate pre-counted error logs for selected Kubernetes cluster\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {k8s.namespace.name},\n  filter: {status == \"ERROR\" and k8s.cluster.name == $Cluster}",
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
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20status%20%3D%3D%20%5C%22ERROR%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "38": {
          "content": "### Log Analytics\n\nLog distribution, volume trends, error breakdowns, patterns, and live tail. [Get deeper insights in Logs app](/ui/apps/dynatrace.logs/).",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis pie chart visualizes the distribution of log status counts across different statuses within a specific Kubernetes cluster (`$Cluster`). The query aggregates the total count of log statuses (`dt.log.status_per_entity_count`) and groups them by `status`.  \n\n**Purpose:**  \nThe pie chart is ideal for highlighting proportions and providing a clear overview of the relative frequency of each log status, making it easy to identify dominant statuses or anomalies at a glance.",
          "query": "// Aggregate pre-counted logs by status for selected Kubernetes cluster\ntimeseries value = sum(dt.log.status_per_entity_count, scalar:true),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Explanation:**  \nThis DQL query calculates the sum of log status counts (`dt.log.status_per_entity_count`) grouped by `status` within a specific Kubernetes cluster (`$Cluster`). It sorts the statuses in ascending order based on their severity: `INFO` (lowest priority), `WARN`, `ERROR` (highest priority), and others.\n\n**Why this visualization is useful:**  \nUsing a bar chart to display this data provides a clear visual representation of log severity distribution within the cluster. It helps quickly identify the prevalence of critical issues (`ERROR`) compared to less severe statuses (`INFO` or `WARN`), enabling efficient prioritization of troubleshooting efforts.",
          "query": "// Visualize pre-counted logs by status for selected Kubernetes cluster\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
          "type": "markdown"
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Purpose:**  \nThe query fetches raw error and warning logs filtered by a selected Kubernetes cluster, normalizes volatile data (e.g., timestamps, IPs, UUIDs), and summarizes log patterns by status and namespace. It highlights recurring log patterns with a count greater than one, sorted by frequency, and provides a direct link to Kubernetes namespace insights.\n\n**Why this visualization is useful:**  \nThis table helps identify frequent error and warning patterns across namespaces, enabling faster troubleshooting and deeper insights into Kubernetes cluster health and application behavior.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster\n| filter in(status, array(\"ERROR\", \"WARN\"))\n// Normalize common volatile data\n| fieldsAdd pattern = content\n// UUID tokens\n| fieldsAdd pattern = replacePattern(pattern, \"UUIDSTRING\", \"\u003cUUID\u003e\")\n// Timestamps\n| fieldsAdd pattern = replacePattern(pattern, \"(ISO8601|HTTPDATE(locale='en-US')|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"\u003cTIME\u003e\")\n// IP addresses\n| fieldsAdd pattern = replacePattern(pattern, \"IPADDR\", \"\u003cIP\u003e\")\n// Hexadecimal strings \u003e= 5 characters\n| fieldsAdd pattern = replacePattern(pattern, \"XDIGIT{5,}\", \"\u003cHEX\u003e\")\n// Standalone numbers\n| fieldsAdd pattern = replacePattern(pattern, \"DIGIT\", \"\u003cDIGIT\u003e\")\n// Full URLs\n| fieldsAdd pattern = replacePattern(pattern, \"'://' [^/]+ '/'? NSPACE*\", \"://\u003cURL\u003e\")\n// URL path after space\n| fieldsAdd pattern = replacePattern(pattern, \"' /' NSPACE*\", \"/\u003cURLPATH\u003e\")\n// Kubernetes pod name suffix\n| fieldsAdd pattern = replacePattern(pattern, \"'-' ALNUM{10} '-' ALNUM{5}\", \"\u003cPODID\u003e\")\n// Dynatrace internal log tags\n| fieldsAdd pattern = replacePattern(pattern, \"'[!dt' LD ']'\", \"\")\n// Collapse multiple spaces into one\n| fieldsAdd pattern = replacePattern(pattern, \"' '+\", \" \")\n// Redact user name after 'user' keyword\n| fieldsAdd pattern = replacePattern(pattern, \"'user ' [! ,]{1,}\", \"user \u003cUSER\u003e\")\n// Summarize by pattern and status\n| summarize count = count(), by: {pattern, status, k8s.namespace.name}\n| filter count \u003e 1\n| sort count desc\n| limit 20\n// Construct Kubernetes app intent link\n| fieldsAdd namespace = concat(\"[\", k8s.namespace.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", replaceString(encodeUrl(k8s.namespace.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields count, status, namespace, pattern",
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
                "[\"namespace\"]",
                "[\"pattern\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "namespace"
                  ],
                  "id": 2311368.9000000004,
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
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays the latest 50 error and warning logs from a selected Kubernetes cluster, sorted by timestamp. It includes formatted timestamps, log status, namespace links, and log content for quick analysis.  \n\n**Purpose:**  \nThis visualization helps identify recent issues and warnings in the cluster, enabling rapid troubleshooting and navigation to specific namespaces for deeper investigation.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and in(status, array(\"ERROR\", \"WARN\"))\n| sort timestamp desc\n| limit 50\n// Construct Kubernetes app intent link\n| fieldsAdd namespace = concat(\"[\", k8s.namespace.name, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", replaceString(encodeUrl(k8s.namespace.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields timestamp = formatTimestamp(timestamp, format:\"HH:mm:ss a\"), status, namespace, content",
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
                "[\"namespace\"]",
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
                    "namespace"
                  ],
                  "id": 2365432.3000000007,
                  "value": "markdown"
                }
              ],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": []
          }
        },
        "44": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "45": {
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "cpu_usage_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "cpu_usage_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
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
            "unitsOverrides": [
              {
                "added": 1715164486934,
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "memory_usage_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "memory_usage_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "pods_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "pods_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "requests_cpu_percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "requests_cpu_percent",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "requests_cpu_percent",
                  "value": 90
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
          "input": "timeseries count(`dt.kubernetes.nodes`), filter: {k8s.cluster.name==$Cluster}, by: {k8s.cluster.name, dt.smartscape.k8s_cluster, dt.entity.kubernetes_cluster}\n| fields k8s.cluster.name, dt.smartscape.k8s_cluster, dt.entity.kubernetes_cluster\n| fieldsAdd smartscapeIntent = concat(\"/ui/intent/dynatrace.kubernetes/view-entity-dt.smartscape.k8s_cluster/#{\\\"id\\\":\\\"\", dt.smartscape.k8s_cluster, \"\\\"}\")\n| fieldsAdd classicIntent = concat(\"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_cluster/#{\\\"id\\\":\", dt.entity.kubernetes_cluster, \"\\\"}\")\n| fields intentLink = if(isNotNull(dt.smartscape.k8s_cluster), smartscapeIntent, else: classicIntent)\n// if no clusters, add 'unknown-cluster' placeholder to avoid errors\n| summarize entries = collectDistinct(intentLink)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_cluster/#{\\\"id\\\":\\\"unknown-cluster\\\"}\" })\n| expand records",
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
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-cluster"
  # private = false
}
