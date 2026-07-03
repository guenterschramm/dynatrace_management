resource "dynatrace_document" "Kubernetes_namespace-workloads" {
  name      = "Kubernetes namespace - workloads"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "15": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "21": {
          "h": 4,
          "w": 14,
          "x": 0,
          "y": 2
        },
        "22": {
          "h": 3,
          "w": 7,
          "x": 0,
          "y": 6
        },
        "23": {
          "h": 3,
          "w": 7,
          "x": 7,
          "y": 6
        },
        "24": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 38
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 38
        },
        "26": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 42
        },
        "27": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 42
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 46
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 46
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "34": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "36": {
          "h": 6,
          "w": 10,
          "x": 14,
          "y": 2
        },
        "37": {
          "h": 1,
          "w": 5,
          "x": 19,
          "y": 8
        },
        "38": {
          "h": 1,
          "w": 5,
          "x": 14,
          "y": 8
        },
        "39": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "40": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 60
        },
        "41": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 60
        },
        "42": {
          "h": 1,
          "w": 4,
          "x": 0,
          "y": 65
        },
        "43": {
          "h": 1,
          "w": 4,
          "x": 4,
          "y": 65
        },
        "44": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 66
        },
        "45": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 66
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
          "query": "// show the top 20 workloads witht the highest CPU usage\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller,\n  dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name, k8s.workload.kind }\n// sort by highest workload first\n| sort cpu_usage desc\n| limit 20",
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
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Kubernetes: Container - CPU usage"
              },
              "legend": {
                "position": "bottom"
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.workload.name",
                "k8s.workload.kind"
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
          "query": "// list the CPU usage, throttling, requests and limits for each workload\ntimeseries {\n  cpu_usage = sum(dt.kubernetes.container.cpu_usage),\n  cpu_throttled = sum(dt.kubernetes.container.cpu_throttled),\n  requests_cpu = sum(dt.kubernetes.container.requests_cpu),\n  limits_cpu = sum(dt.kubernetes.container.limits_cpu)\n}, \n// filter by cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name, k8s.workload.kind },\nfrom: -2m,\n// include result tuples which have no requests or limits defined (shown as null)\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd cpu_usage = arrayFirst(cpu_usage)\n| fieldsAdd cpu_throttled = arrayFirst(cpu_throttled)\n| fieldsAdd requests_cpu = arrayFirst(requests_cpu)\n| fieldsAdd limits_cpu = arrayFirst(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n// sort by highest CPU usage first\n| sort cpu_usage desc\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `CPU usage` = cpu_usage, `CPU throttled` = cpu_throttled, `CPU requests` = requests_cpu, `CPU requests %` = requests_cpu_percent, `CPU limits` = limits_cpu, `CPU limits %` = limits_cpu_percent, `CPU slack` = cpu_slack\n",
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
                  "dt.smartscape.k8s_deployment"
                ],
                [
                  "dt.smartscape.k8s_deploymentconfig"
                ],
                [
                  "dt.smartscape.k8s_daemonset"
                ],
                [
                  "dt.smartscape.k8s_statefulset"
                ],
                [
                  "dt.smartscape.k8s_replicaset"
                ],
                [
                  "dt.smartscape.k8s_replicationcontroller"
                ],
                [
                  "dt.smartscape.k8s_cronjob"
                ],
                [
                  "dt.smartscape.k8s_job"
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
          "query": "// show up to 20 workloads with the highest memory usage\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name, k8s.workload.kind }\n// sort by highest memory usage first\n| sort memory_usage desc\n| limit 20",
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
                "k8s.workload.name",
                "k8s.workload.kind"
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
          "query": "// list the memory usage, requests and limits for each workload\ntimeseries {\n  memory_usage = sum(dt.kubernetes.container.memory_working_set),\n  requests_memory = sum(dt.kubernetes.container.requests_memory),\n  limits_memory = sum(dt.kubernetes.container.limits_memory)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name, k8s.workload.kind },\nfrom: -2m,\n// include result tuples which have no requests or limits defined (shown as null)\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd memory_usage = arrayFirst(memory_usage)\n| fieldsAdd requests_memory = arrayFirst(requests_memory)\n| fieldsAdd limits_memory = arrayFirst(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n// sort by highest memory usage first\n| sort memory_usage desc\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `Memory usage` = memory_usage, `Memory requests` = requests_memory, `Memory requests %` = requests_memory_percent, `Memory limits` = limits_memory, `Memory limits %` = limits_memory_percent, `Memory slack` = memory_slack",
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
                  "dt.smartscape.k8s_deployment"
                ],
                [
                  "dt.smartscape.k8s_deploymentconfig"
                ],
                [
                  "dt.smartscape.k8s_daemonset"
                ],
                [
                  "dt.smartscape.k8s_statefulset"
                ],
                [
                  "dt.smartscape.k8s_replicaset"
                ],
                [
                  "dt.smartscape.k8s_replicationcontroller"
                ],
                [
                  "dt.smartscape.k8s_cronjob"
                ],
                [
                  "dt.smartscape.k8s_job"
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
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "millicore",
                "cascade": null,
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
                "cascade": null,
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
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              }
            },
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "millicore",
                "cascade": null,
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
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              }
            },
            "unitsOverrides": [
              {
                "added": 1717575771158,
                "baseUnit": "byte",
                "cascade": null,
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
          "query": "// show up to 20 workloads with the highest total bandwidth received\ntimeseries {\n  received_data = sum(dt.kubernetes.pod.network_received_data, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest received bandwidth first\n| sort received_data desc\n| limit 20",
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
                "k8s.workload.name"
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
          "query": "// show up to 20 workloads with the highest total bandwidth transmitted\ntimeseries {\n  transmitted_data = sum(dt.kubernetes.pod.network_transmitted_data, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest transmitted bandwidth first\n| sort transmitted_data desc\n| limit 20",
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
                "k8s.workload.name"
              ]
            },
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
          "query": "// show up to 20 workloads with the highest rate of received packages dropped\ntimeseries {\n  received_packets_dropped = sum(dt.kubernetes.pod.network_received_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest value first\n| sort received_packets_dropped desc\n| limit 20",
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show up to 20 workloads with the highest rate of transmitted packages dropped\ntimeseries {\n  transmitted_packets_dropped = sum(dt.kubernetes.pod.network_transmitted_packets_dropped, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest value first\n| sort transmitted_packets_dropped desc\n| limit 20",
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
          "query": "// show up to 20 workloads with the highest rate of received errors\ntimeseries {\n  received_errors = sum(dt.kubernetes.pod.network_received_errors, rollup:sum, rate:1m)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest value first\n| sort received_errors desc\n| limit 20",
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
          "query": "// show up to 20 workloads with the highest rate of transmitted errors\ntimeseries {\n  transmitted_errors = sum(dt.kubernetes.pod.network_transmitted_errors, rollup:sum, rate:1m)\n},\n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name }\n// sort by highest value first\n| sort transmitted_errors desc\n| limit 20",
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
          "query": "// show network statistics for each workload\ntimeseries {\n  receiveData = sum(dt.kubernetes.pod.network_received_data),\n  transmitData = sum(dt.kubernetes.pod.network_transmitted_data),\n  receivePacketDrop = sum(dt.kubernetes.pod.network_received_packets_dropped),\n  transmitPacketDrop = sum(dt.kubernetes.pod.network_transmitted_packets_dropped),\n  receiveError = sum(dt.kubernetes.pod.network_received_errors),\n  transmitError = sum(dt.kubernetes.pod.network_transmitted_errors)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // filter by the kind of workload (all or selected)\n  in(k8s.workload.kind, array($Type))\n}, by: { dt.smartscape.k8s_deployment, dt.smartscape.k8s_deploymentconfig, dt.smartscape.k8s_daemonset, dt.smartscape.k8s_statefulset, dt.smartscape.k8s_replicaset, dt.smartscape.k8s_replicationcontroller, dt.smartscape.k8s_cronjob, dt.smartscape.k8s_job, k8s.workload.name },\nfrom: -2m,\n// show workloads with missing timeseries, e.g. as there were no packets dropped.\nnonempty: true,\nunion: true\n| fieldsRemove interval, timeframe\n| fieldsAdd receiveData = arrayFirst(receiveData)\n| fieldsAdd transmitData = arrayFirst(transmitData)\n| fieldsAdd receivePacketDrop = arrayFirst(receivePacketDrop)\n| fieldsAdd transmitPacketDrop = arrayFirst(transmitPacketDrop)\n| fieldsAdd receiveError = arrayFirst(receiveError)\n| fieldsAdd transmitError = arrayFirst(transmitError)\n| sort receiveData desc\n| fieldsRename `Name` = k8s.workload.name\n, `Current receive bandwidth` = receiveData\n, `Current transmit bandwidth` = transmitData\n, `Rate of received packets dropped` = receivePacketDrop\n, `Rate of transmitted packets dropped` = transmitPacketDrop\n, `Rate of received errors` = receiveError\n, `Rate of transmitted errors` = transmitError",
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
                  "dt.smartscape.k8s_deployment"
                ],
                [
                  "dt.smartscape.k8s_deploymentconfig"
                ],
                [
                  "dt.smartscape.k8s_daemonset"
                ],
                [
                  "dt.smartscape.k8s_statefulset"
                ],
                [
                  "dt.smartscape.k8s_replicaset"
                ],
                [
                  "dt.smartscape.k8s_replicationcontroller"
                ],
                [
                  "dt.smartscape.k8s_cronjob"
                ],
                [
                  "dt.smartscape.k8s_job"
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
          "content": "### Workloads in namespace: [$Namespace]($IntentLink)\nExplore the resource utilization distribution across workloads in your namespace. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-namespace-workloads\",\"dt.variableValues\":{\"Cluster\":\"eks-playground\",\"Namespace\":\"easytrade\",\"Workload\":[\"*\"]}})",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile aggregates pre-counted error logs by workload name within a specific Kubernetes cluster and namespace, filtered by workload kind and error status.  \n\n**Purpose:**  \nThe bar chart visualization effectively highlights error distribution across workloads, enabling quick identification of problematic workloads for targeted troubleshooting.",
          "query": "// Aggregate pre-counted error logs by Workload kind for selected Kubernetes cluster and Kubernetes namespace\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {k8s.workload.name},\n  filter: {status == \"ERROR\" and k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(k8s.workload.kind, array($Type))}",
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
          "content": "[+ Add logs](https://docs.dynatrace.com/docs/ingest-from/setup-on-k8s/deployment/k8s-log-monitoring)",
          "type": "markdown"
        },
        "38": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.namespace.name%20%3D%3D%20%5C%22$NamespaceEncoded%5C%22%20and%20in%28k8s.workload.kind%2C%20%7B$TypeEncoded%7D%29%20and%20status%20%3D%3D%20%5C%22ERROR%5C%22%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
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
          "description": "**Description:** Aggregates pre-counted logs by status for a selected Kubernetes cluster, namespace, and workload type. Displays log severity distribution (ERROR, WARN, INFO) in a sorted donut chart for quick insights into system health.",
          "query": "// Aggregate pre-counted logs by status for selected Kubernetes cluster, Kubernetes namespace and Workload kind\ntimeseries value = sum(dt.log.status_per_entity_count, scalar:true),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(k8s.workload.kind, array($Type))}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Purpose:**  \nVisualizes pre-counted log occurrences by status (ERROR, WARN, INFO, etc.) for a specific Kubernetes cluster, namespace, and workload type. Logs are sorted by severity, with the most critical statuses displayed first.\n\n**Why Useful:**  \nThe bar chart highlights the distribution of log severities, enabling quick identification of critical issues within Kubernetes workloads for targeted troubleshooting and optimization.",
          "query": "// Visualize pre-counted logs by status for selected Kubernetes cluster, Kubernetes namespace and Workload kind\ntimeseries values = sum(dt.log.status_per_entity_count),\n  by: {status},\n  filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(k8s.workload.kind, array($Type))}\n// Sort rows so ERROR \u003c WARN \u003c INFO \u003c everything else (most severe first)\n| sort if(status == \"INFO\", 3, else: if(status == \"WARN\", 2, else: if(status == \"ERROR\", 1, else: 4))) asc",
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
        "42": {
          "content": "[View logs](/ui/intent/dynatrace.logs/view_query/#%7B%0A%20%20%22dt.query%22%3A%20%22fetch%20logs%5Cn%7C%20filter%20k8s.cluster.name%20%3D%3D%20%5C%22$ClusterEncoded%5C%22%20and%20k8s.namespace.name%20%3D%3D%20%5C%22$NamespaceEncoded%5C%22%20and%20in%28k8s.workload.kind%2C%20%7B$TypeEncoded%7D%29%5Cn%7C%20sort%20timestamp%20desc%5Cn%7C%20fields%20timestamp%2C%20status%2C%20content%22%2C%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22$dt_timeframe_from%22%2C%22to%22%3A%22$dt_timeframe_to%22%7D%2C%0A%20%20%22showDqlEditor%22%3A%20true%0A%7D)",
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
          "description": "**Query Explanation:**  \nThis query fetches raw error and warning logs from Kubernetes workloads filtered by cluster, namespace, and workload type. It sorts logs by timestamp, limits results to 50 entries, and constructs links for deeper investigation into specific workloads.\n\n**Purpose of Visualization:**  \nThe table provides a concise view of recent errors and warnings, enabling quick identification of problematic workloads and facilitating direct navigation to detailed Kubernetes insights for troubleshooting.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster, Kubernetes namespace and Workload kind\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(k8s.workload.kind, array($Type)) and in(status, array(\"ERROR\", \"WARN\"))\n| sort timestamp desc\n| limit 50\n// Construct Kubernetes app intent link\n| fieldsAdd workloadName = if(isNull(k8s.workload.name), \"-\", else:k8s.workload.name)\n| fieldsAdd workload = concat(\"[\", workloadName, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", $NamespaceEncoded, \"%22%2C%0A%20%20%22k8s.workload.name%22%3A%20%22\", replaceString(encodeUrl(k8s.workload.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields timestamp = formatTimestamp(timestamp, format:\"HH:mm:ss a\"), status, workload, content",
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
                "[\"workload\"]",
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
                    "workload"
                  ],
                  "id": 695762,
                  "value": "markdown"
                }
              ],
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
          "description": "**Description:**  \nThis tile displays a summary of error and warning logs for selected Kubernetes clusters, namespaces, and workload types. It normalizes volatile data (e.g., timestamps, UUIDs, IPs) to identify recurring patterns and their frequency.  \n\n**Purpose:**  \nThis visualization helps pinpoint common issues across workloads, enabling faster troubleshooting and pattern recognition in Kubernetes environments.",
          "query": "// Fetch raw error and warning logs filtered by selected Kubernetes cluster, Kubernetes namespace and Workload kind\nfetch logs, scanLimitGBytes: 100\n| filter k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace and in(k8s.workload.kind, array($Type))\n| filter in(status, array(\"ERROR\", \"WARN\"))\n// Normalize common volatile data\n| fieldsAdd pattern = content\n// UUID tokens\n| fieldsAdd pattern = replacePattern(pattern, \"UUIDSTRING\", \"\u003cUUID\u003e\")\n// Timestamps\n| fieldsAdd pattern = replacePattern(pattern, \"(ISO8601|HTTPDATE(locale='en-US')|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"\u003cTIME\u003e\")\n// IP addresses\n| fieldsAdd pattern = replacePattern(pattern, \"IPADDR\", \"\u003cIP\u003e\")\n// Hexadecimal strings \u003e= 5 characters\n| fieldsAdd pattern = replacePattern(pattern, \"XDIGIT{5,}\", \"\u003cHEX\u003e\")\n// Standalone numbers\n| fieldsAdd pattern = replacePattern(pattern, \"DIGIT\", \"\u003cDIGIT\u003e\")\n// Full URLs\n| fieldsAdd pattern = replacePattern(pattern, \"'://' [^/]+ '/'? NSPACE*\", \"://\u003cURL\u003e\")\n// URL path after space\n| fieldsAdd pattern = replacePattern(pattern, \"' /' NSPACE*\", \"/\u003cURLPATH\u003e\")\n// Kubernetes pod name suffix\n| fieldsAdd pattern = replacePattern(pattern, \"'-' ALNUM{10} '-' ALNUM{5}\", \"\u003cPODID\u003e\")\n// Dynatrace internal log tags\n| fieldsAdd pattern = replacePattern(pattern, \"'[!dt' LD ']'\", \"\")\n// Collapse multiple spaces into one\n| fieldsAdd pattern = replacePattern(pattern, \"' '+\", \" \")\n// Redact user name after 'user' keyword\n| fieldsAdd pattern = replacePattern(pattern, \"'user ' [! ,]{1,}\", \"user \u003cUSER\u003e\")\n// Summarize by pattern and status\n| summarize count = count(), by: {pattern, status, k8s.workload.name}\n| filter count \u003e 1\n| sort count desc\n| limit 20\n// Construct Kubernetes app intent link\n| fieldsAdd workloadName = if(isNull(k8s.workload.name), \"-\", else:k8s.workload.name)\n| fieldsAdd workload = concat(\"[\", workloadName, \"](/ui/intent/dynatrace.kubernetes/view-entity-list-by-dimension/#%7B%0A%20%20%22dt.timeframe%22%3A%20%7B%22from%22%3A%22now%28%29-15m%22%2C%22to%22%3A%22now%28%29%22%7D%2C%0A%20%20%22k8s.cluster.name%22%3A%20%22\", $ClusterEncoded, \"%22%2C%0A%20%20%22k8s.namespace.name%22%3A%20%22\", $NamespaceEncoded, \"%22%2C%0A%20%20%22k8s.workload.name%22%3A%20%22\", replaceString(encodeUrl(k8s.workload.name), \"+\", \"%20\"), \"%22%0A%7D)\")\n| fields count, status, workload, pattern",
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
                "[\"workload\"]",
                "[\"pattern\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "workload"
                  ],
                  "id": 639951.6999999993,
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
          "input": "// filter timeseries by the selected namespace \ntimeseries count(`dt.kubernetes.pods`), filter: {k8s.cluster.name == $Cluster}, by: {name=k8s.namespace.name}\n| fields name\n| sort name asc\n// if no namespaces, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
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
          "input": "// used to navigate back to the kubernetes app\ntimeseries count(`dt.kubernetes.pods`), filter: {k8s.cluster.name == $Cluster and k8s.namespace.name == $Namespace}, by: {k8s.cluster.name, k8s.namespace.name, dt.smartscape.k8s_namespace, dt.smartscape.k8s_cluster, dt.entity.kubernetes_namespace}\n| fields k8s.cluster.name, k8s.namespace.name, dt.smartscape.k8s_namespace, dt.smartscape.k8s_cluster, dt.entity.kubernetes_namespace\n| fieldsAdd smartscapeIntent = concat(\"/ui/intent/dynatrace.kubernetes/view-entity-dt.smartscape.k8s_namespace/#{\\\"id\\\":\\\"\", dt.smartscape.k8s_namespace, \"\\\"}\")\n| fieldsAdd classicIntent = concat(\"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\\\"id\\\":\", dt.entity.kubernetes_namespace, \"\\\"}\")\n| fields intentLink = if(isNotNull(dt.smartscape.k8s_cluster), smartscapeIntent, else: classicIntent)\n// if no namespaces, add 'unknown-namespace' placeholder to avoid errors\n| summarize entries = collectDistinct(intentLink)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.cloud_application_namespace/#{\\\"id\\\":\\\"unknown-namespace\\\"}\" })\n| expand records",
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
        },
        {
          "editable": true,
          "input": "data record($Type)\n| fieldsAdd types = iCollectArray(concat(\"\\\\\\\"\", array($Type)[], \"\\\\\\\"\"))\n| fields encodeUrl(arrayToString(types, delimiter:\",\"))",
          "key": "TypeEncoded",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-namespace-workloads"
  # private = false
}
