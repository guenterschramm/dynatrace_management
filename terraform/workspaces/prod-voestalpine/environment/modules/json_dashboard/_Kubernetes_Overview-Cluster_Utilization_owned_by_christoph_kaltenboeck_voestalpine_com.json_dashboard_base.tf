resource "dynatrace_json_dashboard" "_Kubernetes_Overview-Cluster_Utilization_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "🕸 Kubernetes Overview - Cluster Utilization",
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
            "left": 0,
            "top": 760,
            "width": 418
          },
          "configured": true,
          "customName": "CPU requests by namespace",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.cpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU requests by namespace",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.cpuRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)",
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
            "type": "TOP_LIST"
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
            "left": 608,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Container usage \u0026 health](#dashboard;id=bbbbbbbb-a001-a008-0004-000000000001)",
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
          "markdown": "###[Cluster utilization](#dashboard;id=bbbbbbbb-a001-a008-0003-000000000001)",
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
          "markdown": "###[Performance Engineering](#dashboard;id=bbbbbbbb-a001-a008-0007-000000000001)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 836,
            "top": 722,
            "width": 418
          },
          "configured": true,
          "markdown": "Memory requests by namespace",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 380,
            "width": 836
          },
          "configured": true,
          "markdown": "CPU requests and limits over time",
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
            "height": 304,
            "left": 418,
            "top": 760,
            "width": 418
          },
          "configured": true,
          "customName": "CPU limits by namespace",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.cpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU limits by namespace",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.cpuLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)",
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 836,
            "top": 380,
            "width": 836
          },
          "configured": true,
          "markdown": "Memory requests and limits over time",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 760,
            "width": 418
          },
          "configured": true,
          "customName": "Memory requests by namespace",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.memoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory requests by namespace",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.memoryRequests:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)",
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
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 1254,
            "top": 722,
            "width": 418
          },
          "configured": true,
          "markdown": "Memory limits by namespace",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 760,
            "width": 418
          },
          "configured": true,
          "customName": "Memory limits by namespace",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:cloud.kubernetes.namespace.memoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory limits by namespace",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.memoryLimits:avg:splitBy(\"dt.entity.cloud_application_namespace\"):sum:sort(value(sum,descending)):limit(20)",
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
                "unitTransform": "MilliCores"
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 418,
            "width": 836
          },
          "configured": true,
          "customName": "Memory requests and limits",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.memoryLimits:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.memoryRequests:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Memory requests and limits",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.memoryLimits:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.memoryRequests:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
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
            "height": 38,
            "left": 418,
            "top": 722,
            "width": 418
          },
          "configured": true,
          "markdown": "CPU limits by namespace",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 722,
            "width": 418
          },
          "configured": true,
          "markdown": "CPU requests by namespace",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 418,
            "width": 836
          },
          "configured": true,
          "customName": "CPU requests and limits",
          "metricExpressions": [
            "resolution=null\u0026(builtin:cloud.kubernetes.namespace.cpuLimits:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:cloud.kubernetes.namespace.cpuRequests:avg:splitBy():sum:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "CPU requests and limits",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:cloud.kubernetes.namespace.cpuLimits:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
              "rate": "NONE",
              "spaceAggregation": "AUTO"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:cloud.kubernetes.namespace.cpuRequests:avg:splitBy():sum:sort(value(sum,descending)):limit(20)",
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
            "height": 38,
            "left": 304,
            "top": 342,
            "width": 304
          },
          "configured": true,
          "markdown": "###[Resource Quotas](#dashboard;id=bbbbbbbb-a001-a008-0006-000000000001)",
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
          "markdown": "###[User Experience](#dashboard;id=bbbbbbbb-a001-a008-0008-000000000001)",
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
  link_id  = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Cluster_Utilization_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "_Kubernetes_Overview-Cluster_Utilization_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Cluster_Utilization_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "_Kubernetes_Overview-Cluster_Utilization_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
