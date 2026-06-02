resource "dynatrace_document" "Kubernetes_namespace-workloads" {
  name      = "Kubernetes namespace - workloads"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
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
          "h": 4,
          "w": 10,
          "x": 0,
          "y": 2
        },
        "22": {
          "h": 4,
          "w": 7,
          "x": 10,
          "y": 2
        },
        "23": {
          "h": 4,
          "w": 7,
          "x": 17,
          "y": 2
        },
        "24": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 39
        },
        "27": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 39
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 43
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 43
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
          "y": 47
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        }
      },
      "settings": {},
      "tiles": {
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the top 20 workloads witht the highest CPU usage\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name, k8s.workload.kind }\n// sort by highest workload first\n| sort cpu_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage per workload",
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
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Container - CPU usage"
              },
              "legend": {
                "position": "bottom"
              },
              "xAxisLabel": "timeframe"
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
          "query": "// list the CPU usage, throttling, requests and limits for each workload\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, \n// filter by cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name, k8s.workload.kind },\nfrom: -2m,\n// include result tuples which have no requests or limits defined (shown as null)\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n// sort by highest CPU usage first\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
                "[\"CPU limits %\"]": 147.328125,
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
                  "id"
                ],
                [
                  "dt.entity.cloud_application"
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
          "query": "// show up to 20 workloads with the highest memory usage\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name, k8s.workload.kind }\n// sort by highest memory usage first\n| sort memory_usage desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory usage per workload",
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
                "dt.entity.cloud_application"
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
          "query": "// list the memory usage, requests and limits for each workload\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name, k8s.workload.kind },\nfrom: -2m,\n// include result tuples which have no requests or limits defined (shown as null)\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n// sort by highest memory usage first\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.entity.cloud_application"
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show CPU and memory usage of all or selected workloads\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  memory_usage = sum(dt.kubernetes.container.memory_working_set)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.workload.kind },\nfrom: -2m\n| fieldsRemove interval, timeframe\n// take latest stable value of cpu and memory usage\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsRename `CPU usage (sum)` = `cpu_usage`, `Memory usage (sum)` = `memory_usage`, `Type` = `k8s.workload.kind`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage overview",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"CPU usage (sum)\"]": 172.09375,
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
                  "id"
                ]
              ],
              "sortBy": {
                "columnId": "[\"CPU usage (sum)\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "millicore",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU usage (sum)",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1717575771158,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory usage (sum)",
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
          "query": "// show latest stable CPU usage of selected workloads within the namespace\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.workload.kind },\nfrom: -2m\n// take the lastest stable value for CPU usage\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsRename `CPU usage (sum)` = `cpu_usage`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "k8s.workload.kind",
                "categoryAxisLabel": "k8s.workload.kind",
                "valueAxis": "CPU usage (sum)",
                "valueAxisLabel": "CPU usage (sum)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "millicore",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU usage (sum)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show latest stable memory usage of all workloads within the namespace\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.workload.kind },\nfrom: -2m\n// take the lastest stable value for memory usage\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsRename `Memory usage (sum)` = `memory_usage`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory usage",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "k8s.workload.kind",
                "categoryAxisLabel": "k8s.workload.kind",
                "valueAxis": "Memory usage (sum)",
                "valueAxisLabel": "Memory usage (sum)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575771158,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory usage (sum)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show up to 20 workloads with the highest total bandwidth received\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest received bandwidth first\n| sort received_data desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show up to 20 workloads with the highest total bandwidth transmitted\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest transmitted bandwidth first\n| sort transmitted_data desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show up to 20 workloads with the highest rate of received packages dropped\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest value first\n| sort received_packets_dropped desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show up to 20 workloads with the highest rate of transmitted packages dropped\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest value first\n| sort transmitted_packets_dropped desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
          "query": "// show up to 20 workloads with the highest rate of received errors\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest value first\n| sort received_errors desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
          "query": "// show up to 20 workloads with the highest rate of transmitted errors\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n},\n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name }\n// sort by highest value first\n| sort transmitted_errors desc\n| limit 20",
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
                "dt.entity.cloud_application"
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
          "query": "// show network statistics for each workload\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.entity.cloud_application, k8s.workload.name },\nfrom: -2m,\n// show workloads with missing timeseries, e.g. as there were no packets dropped.\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.workload.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
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
                  "dt.entity.cloud_application"
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
          "content": "### Workloads in namespace: [$Namespace](/ui/intent/dynatrace.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\"id\":\"$NamespaceID\"})\nExplore the resource utilization distribution across workloads in your namespace. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-namespace-workloads\",\"dt.variableValues\":{\"Cluster\":\"eks-playground\",\"Namespace\":\"easytrade\",\"Workload\":[\"*\"]}})",
          "type": "markdown"
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
          "input": "// filter timeseries by the selected namespace \nfetch dt.entity.cloud_application_namespace\n| fields id, name = entity.name\n| filter in(id, classicEntitySelector(concat(\"type(CLOUD_APPLICATION_NAMESPACE),toRelationship.isClusterOfNamespace(type(KUBERNETES_CLUSTER),entityName.equals(\", $Cluster, \"))\")))\n| fields name\n| sort name asc\n// if no namespaces, add * placeholder to avoid errors\n| summarize entries = collectArray(name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Namespace",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "timeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.workload.kind },\nfrom: -2m\n| summarize collectDistinct(k8s.workload.kind)\n| fieldsAdd `collectDistinct(k8s.workload.kind)` = if(isNull(`collectDistinct(k8s.workload.kind)`), array(\"*\"), else:`collectDistinct(k8s.workload.kind)`)\n| fieldsAdd `collectDistinct(k8s.workload.kind)` = arraySort(`collectDistinct(k8s.workload.kind)`, direction: \"ascending\")\n",
          "key": "Type",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// used to navigate to the kubernetes app \nfetch dt.entity.cloud_application_namespace\n| filter entity.name==$Namespace\n| filter in(id, classicEntitySelector(concat(\"type(CLOUD_APPLICATION_NAMESPACE),toRelationship.isClusterOfNamespace(type(KUBERNETES_CLUSTER),entityName.equals(\", $Cluster,\"))\")))\n| fields id\n// if no namespaces, add 'unknown-namespace' placeholder to avoid errors\n| summarize entries = collectArray(id)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"unknown-namespace\" })\n| expand records",
          "key": "NamespaceID",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.kubernetes.kubernetes-namespace-workloads"
  # private = false
}
