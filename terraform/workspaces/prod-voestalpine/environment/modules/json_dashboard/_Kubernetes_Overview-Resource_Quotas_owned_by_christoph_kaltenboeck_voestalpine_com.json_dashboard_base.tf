resource "dynatrace_json_dashboard" "_Kubernetes_Overview-Resource_Quotas_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "🕸 Kubernetes Overview - Resource Quotas",
        "owner": "christoph.kaltenboeck@voestalpine.com",
        "shared": true,
        "tags": [
          "Configurator"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "markdown": "###Cluster Overview   - [Cluster Insights](/ui/kubernetes/)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 152,
            "top": 38,
            "width": 152
          },
          "chartVisible": true,
          "configured": true,
          "filterConfig": {
            "chartConfig": {
              "legendShown": true,
              "type": "TIMESERIES"
            },
            "customName": "Full-Stack Kubernetes nodes",
            "defaultName": "Full-Stack Kubernetes nodes",
            "filtersPerEntityType": {
              "HOST": {
                "HOST_SOFTWARE_TECH": [
                  "KUBERNETES"
                ]
              }
            },
            "type": "HOST"
          },
          "name": "",
          "tileType": "HOSTS"
        },
        {
          "bounds": {
            "height": 304,
            "left": 418,
            "top": 760,
            "width": 532
          },
          "configured": true,
          "customName": "CPU requests quota",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.cpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU requests quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.cpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "10000.0",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "unitTransform": "MilliCores"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 418,
            "top": 418,
            "width": 532
          },
          "configured": true,
          "customName": "CPU limits quota",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.cpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU limits quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.cpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "10000.0",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "unitTransform": "MilliCores"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1102,
            "top": 418,
            "width": 532
          },
          "configured": true,
          "customName": "Memory limits quota",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.memoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory limits quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.memoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "10.0",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "unitTransform": "GibiByte"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1102,
            "top": 760,
            "width": 532
          },
          "configured": true,
          "customName": "Memory requests quota",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.memoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory requests quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.memoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "10.0",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "unitTransform": "GibiByte"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 456,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "customName": "CPU available [last 5 min]",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.cluster.cpuAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.cluster.cpuAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "CPU available [last 5 min]",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.cluster.cpuAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 456,
            "top": 190,
            "width": 152
          },
          "configured": true,
          "customName": "Memory available [last 5 min]",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.cluster.memoryAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.cluster.memoryAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "Memory available [last 5 min]",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.cluster.memoryAvailable:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "customName": "Cores",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.cluster.cores:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.cluster.cores:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "Cores",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.cluster.cores:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 190,
            "width": 152
          },
          "configured": true,
          "customName": "Memory total",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.cluster.memory:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.cluster.memory:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "Memory total",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.cluster.memory:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 190,
            "width": 304
          },
          "configured": true,
          "name": "Smartscape",
          "tileType": "PURE_MODEL"
        },
        {
          "bounds": {
            "height": 38,
            "left": 304,
            "top": 0,
            "width": 304
          },
          "configured": true,
          "markdown": "###Cluster Utilization",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1064,
            "top": 0,
            "width": 266
          },
          "configured": true,
          "markdown": "###Pods phases ",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1064,
            "top": 38,
            "width": 266
          },
          "configured": true,
          "customName": "🚦Pods phases",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.workload.pods:avg:splitBy(\"Pod phase\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "🚦Pods phases",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.workload.pods:avg:splitBy(\"Pod phase\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#f5d30f",
                    "name": "Pending"
                  },
                  {
                    "color": "#ff0000",
                    "name": "Failed"
                  },
                  {
                    "color": "#64bd64",
                    "name": "Running"
                  }
                ]
              }
            ],
            "type": "PIE_CHART"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "customName": "Nodes / Cluster",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.cluster.nodes:avg:splitBy(\"dt.entity.kubernetes_cluster\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Nodes / Cluster",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.cluster.nodes:avg:splitBy(\"dt.entity.kubernetes_cluster\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "PIE_CHART"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 1330,
            "top": 190,
            "width": 304
          },
          "configured": true,
          "customName": "Desired vs Running pods",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.desiredPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Desired vs Running pods",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.desiredPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ff0000",
                    "name": "[Deprecated] Kubernetes: Namespace desired pods"
                  }
                ],
                "unitTransform": "Count"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#64bd64",
                    "name": "[Deprecated] Kubernetes: Namespace running pods"
                  }
                ],
                "unitTransform": "Count"
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 608,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Workloads",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.workloads:avg:splitBy(\"Deployment type\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Workloads",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.workloads:avg:splitBy(\"Deployment type\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Pods by namespace",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.workloads:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Pods by namespace",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.workloads:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 1330,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "customName": "desired pods",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.desiredPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.desiredPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)),(builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "desired pods",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.desiredPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#ff0000",
                    "name": "[Deprecated] Kubernetes: Namespace desired pods"
                  }
                ],
                "unitTransform": "Count"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#64bd64",
                    "name": "[Deprecated] Kubernetes: Namespace running pods"
                  }
                ],
                "unitTransform": "Count"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 1482,
            "top": 38,
            "width": 152
          },
          "configured": true,
          "customName": "running pods",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20))"
          ],
          "name": "running pods",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.runningPods:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "LINE"
                },
                "seriesOverrides": [
                  {
                    "color": "#64bd64",
                    "name": "[Deprecated] Kubernetes: Namespace running pods"
                  }
                ],
                "unitTransform": "Count"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 608,
            "top": 0,
            "width": 456
          },
          "configured": true,
          "markdown": "###Cluster Workloads \u0026 Namespaces",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1330,
            "top": 0,
            "width": 266
          },
          "configured": true,
          "markdown": "Running vs. desired pods",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Cluster utilization](#dashboard;id=bbbbbbbb-a001-a008-0003-000000000001)\n",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 266,
            "top": 760,
            "width": 152
          },
          "configured": true,
          "customName": "CPU requests quota",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.cpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.cpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)),(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "CPU requests quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.cpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "MilliCores"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 266,
            "top": 418,
            "width": 152
          },
          "configured": true,
          "customName": "CPU limits quota",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.cpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.cpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)),(builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "CPU limits quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.cpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "MilliCores"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 266,
            "top": 570,
            "width": 152
          },
          "configured": true,
          "customName": "CPU limits quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "CPU limits quota used",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 266,
            "top": 912,
            "width": 152
          },
          "configured": true,
          "customName": "CPU requests quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "CPU requests quota used",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 950,
            "top": 418,
            "width": 152
          },
          "configured": true,
          "customName": "Memory limits quota",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.memoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.memoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)),(builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "Memory limits quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.memoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 950,
            "top": 570,
            "width": 152
          },
          "configured": true,
          "customName": "Memory limits quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "Memory limits quota used",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryLimits:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 950,
            "top": 760,
            "width": 152
          },
          "configured": true,
          "customName": "Memory requests quota",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.memoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.memoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)),(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "Memory requests quota",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.memoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 760,
            "width": 266
          },
          "configured": true,
          "customName": "Memory requests quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory requests quota used",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.cloud_application_namespace",
                "Resource quota name"
              ]
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "markdown": "Memory limits quota \u0026 usage",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 266,
            "top": 380,
            "width": 304
          },
          "configured": true,
          "markdown": "CPU limits quota \u0026 usage",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 266,
            "top": 722,
            "width": 304
          },
          "configured": true,
          "markdown": "CPU requests",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 950,
            "top": 722,
            "width": 304
          },
          "configured": true,
          "markdown": "Memory requests",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1596,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "##[⬅︎](#dashboard;id=bbbbbbbb-a001-a008-0005-000000000001;)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 304,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Resource Quotas](#dashboard;id=bbbbbbbb-a001-a008-0006-000000000001)\n",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 608,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Container usage \u0026 health](#dashboard;id=bbbbbbbb-a001-a008-0004-000000000001)\n",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Performance Engineering](#dashboard;id=bbbbbbbb-a001-a008-0007-000000000001)\n",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1216,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[User Experience](#dashboard;id=bbbbbbbb-a001-a008-0008-000000000001)\n",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 418,
            "width": 266
          },
          "configured": true,
          "customName": "CPU requests quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedCpuRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU requests quota used",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND"
              },
              "id": "A",
              "metric": "builtin:cloud.kubernetes.namespace.quota.usedCpuRequests",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.cloud_application_namespace",
                "Resource quota name"
              ]
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "MilliCores"
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 152,
            "left": 950,
            "top": 912,
            "width": 152
          },
          "configured": true,
          "customName": "Memory requests quota used",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names",
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20))"
          ],
          "name": "Memory requests quota used",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.quota.usedMemoryRequests:splitBy(\"dt.entity.cloud_application_namespace\",\"Resource quota name\"):avg:sort(value(avg,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            }
          ],
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "seriesType": "STACKED_AREA"
                },
                "unitTransform": "GibiByte"
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 380,
            "width": 266
          },
          "configured": true,
          "markdown": "List of CPU request quotas usage",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "markdown": "List of Memory request quotas usage",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1748,
            "top": 0,
            "width": 38
          },
          "configured": true,
          "markdown": "## [⇦](#dashboard;id=bbbbbbbb-a001-a008-0000-000000000001)\n![BackButton]()",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Resource_Quotas_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "_Kubernetes_Overview-Resource_Quotas_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Resource_Quotas_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "_Kubernetes_Overview-Resource_Quotas_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
