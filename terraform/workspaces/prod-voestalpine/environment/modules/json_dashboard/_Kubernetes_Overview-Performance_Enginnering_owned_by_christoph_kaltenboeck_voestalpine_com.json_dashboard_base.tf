resource "dynatrace_json_dashboard" "_Kubernetes_Overview-Performance_Enginnering_owned_by_christoph_kaltenboeck_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "🕸 Kubernetes Overview - Performance Enginnering",
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
          "markdown": "###[Container usage \u0026 health](#dashboard;id=bbbbbbbb-a001-a008-0004-000000000001)\n",
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
            "left": 1596,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "##[⬅︎](#dashboard;id=bbbbbbbb-a001-a008-0005-000000000001)",
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
            "height": 152,
            "left": 0,
            "top": 722,
            "width": 152
          },
          "chartVisible": true,
          "configured": true,
          "filterConfig": {
            "chartConfig": {
              "legendShown": true,
              "type": "TIMESERIES"
            },
            "customName": "Container Services",
            "defaultName": "Container Services",
            "filtersPerEntityType": {
              "SERVICE": {
                "AUTO_TAGS": [
                  "[Kubernetes]namespace"
                ]
              }
            },
            "type": "SERVICE"
          },
          "name": "",
          "tileType": "SERVICES"
        },
        {
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "customName": "Slowest services based on 95th p ",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):percentile(90.0):sort(value(percentile(90.0),descending)):limit(20)):limit(100):names"
          ],
          "name": "Slowest services based on 95th p ",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "dt.entity.service"
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
            "left": 1102,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "customName": "Throughput of services ",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):count:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Throughput of services ",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "spaceAggregation": "COUNT",
              "splitBy": [
                "dt.entity.service"
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
            "left": 152,
            "top": 722,
            "width": 152
          },
          "chartVisible": true,
          "configured": true,
          "name": "Database health",
          "tileType": "DATABASES_OVERVIEW"
        },
        {
          "bounds": {
            "height": 304,
            "left": 836,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "customName": "❗️Most failing services",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.errors.total.rate:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):avg:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "❗️Most failing services",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.errors.total.rate",
              "rate": "NONE",
              "spaceAggregation": "AVG",
              "splitBy": [
                "dt.entity.service"
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
            "left": 570,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "customName": "Service outlier transactions (max)",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):max:sort(value(max,descending)):limit(20)):limit(100):names"
          ],
          "name": "Service outlier transactions (max)",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "spaceAggregation": "MAX",
              "splitBy": [
                "dt.entity.service"
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
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 228,
            "top": 380,
            "width": 684
          },
          "configured": true,
          "markdown": " [Requests by App](/ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E48%11%5BKubernetes%5Dapp) -  [Requests by Namespace](/ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E48%11%5BKubernetes%5Dnamespace)  - [🐢 TX \u003e 10 Sec](ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%112%1026%111%100%1110000000%144611686018427387) - [🐌 \u003e30 Sec](ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%112%1026%111%100%1130000000%144611686018427387) - [Top SQL Statements](#topdbstatements;gtf=l_2_HOURS;gf=all) ",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 342,
            "left": 0,
            "top": 380,
            "width": 228
          },
          "configured": true,
          "markdown": "[🔬 Diagnostic Tools](/ui/diagnostictools)\n\n- [🕸Smartscape](#smartscape)\n- [Top WebRequests](#topglobalwebrequests)\n- [Exceptions](#exceptionsoverview)\n- [Process Crashes](#processcrashesglobal)\n- [CPU Analysis](/ui/diagnostictools/profiling/cpu)\n- [Memory Dumps](#memorydumpsglobal)\n- [Log Analytics](#loganalytics)\n- [Technologies](#newprocessessummary)\n- [Database Statements](/ui/diagnostictools/mda?mdaId=topdb\u0026metric=REQUEST_COUNT\u0026dimension=%7BDatabase-Statement%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%110)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 228,
            "top": 418,
            "width": 684
          },
          "configured": true,
          "customName": "Request count vs 95th percentile",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):percentile(90.0):sort(value(percentile(90.0),descending)):limit(20)):limit(100):names,(builtin:service.response.time:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):count:sort(value(avg,descending)):limit(20)):limit(100):names"
          ],
          "name": "Request count vs 95th percentile",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "spaceAggregation": "PERCENTILE_90",
              "splitBy": [
                "dt.entity.service"
              ]
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "B",
              "metric": "builtin:service.response.time",
              "rate": "NONE",
              "spaceAggregation": "COUNT",
              "splitBy": [
                "dt.entity.service"
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
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 950,
            "top": 418,
            "width": 684
          },
          "configured": true,
          "customName": "HTTP [4|5xx] and failed transactions",
          "metricExpressions": [
            "resolution=null\u0026(builtin:service.errors.fourxx.count:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy():value:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:service.errors.fivexx.count:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy():value:sort(value(sum,descending)):limit(20)):limit(100):names,(builtin:service.errors.total.count:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):value:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "HTTP [4|5xx] and failed transactions",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.errors.fourxx.count",
              "rate": "NONE",
              "spaceAggregation": "VALUE"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "B",
              "metric": "builtin:service.errors.fivexx.count",
              "rate": "NONE",
              "spaceAggregation": "VALUE"
            },
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "C",
              "metric": "builtin:service.errors.total.count",
              "rate": "NONE",
              "spaceAggregation": "VALUE",
              "splitBy": [
                "dt.entity.service"
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
                    "A",
                    "B",
                    "C"
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
                }
              },
              {
                "matcher": "B:",
                "properties": {
                  "seriesType": "STACKED_COLUMN"
                }
              },
              {
                "matcher": "C:",
                "properties": {
                  "seriesType": "LINE"
                }
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 722,
            "width": 266
          },
          "configured": true,
          "customName": "Database calls per Service",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:service.dbChildCallCount:filter(and(or(in(\"dt.entity.service\",entitySelector(\"type(service),tag(~\"[Kubernetes]namespace~\")\"))))):splitBy(\"dt.entity.service\"):value:sort(value(sum,descending)):limit(20)):limit(100):names"
          ],
          "name": "Database calls per Service",
          "queries": [
            {
              "enabled": true,
              "filterBy": {
                "filterOperator": "AND",
                "nestedFilters": [
                  {
                    "criteria": [
                      {
                        "evaluator": "IN",
                        "value": "[Kubernetes]namespace"
                      }
                    ],
                    "filter": "dt.entity.service",
                    "filterOperator": "OR",
                    "filterType": "TAG"
                  }
                ]
              },
              "id": "A",
              "metric": "builtin:service.dbChildCallCount",
              "rate": "NONE",
              "spaceAggregation": "VALUE",
              "splitBy": [
                "dt.entity.service"
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
                  "seriesType": "LINE"
                }
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
            "width": 684
          },
          "configured": true,
          "markdown": "[❗Failed requests](/ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%112%1026%111%103%110) \n - [❗HTTP 4XX](/ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%112%1026%111%102%11400-499) - [❗HTTP 5XX](/ui/diagnostictools/mda?mdaId=topweb\u0026metric=REQUEST_COUNT\u0026dimension=%7BRequest:Name%7D\u0026mergeServices=false\u0026aggregation=COUNT\u0026percentile=80\u0026chart=COLUMN\u0026servicefilter=0%1E26%112%1026%111%102%11500-599) - [⚡️failed exceptions](#exceptionsoverview;servicefilter=0%1E3%110)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 874,
            "width": 304
          },
          "configured": true,
          "name": "Network status",
          "tileType": "NETWORK_MEDIUM"
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
  link_id  = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Performance_Enginnering_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "_Kubernetes_Overview-Performance_Enginnering_owned_by_christoph_kaltenboeck_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base._Kubernetes_Overview-Performance_Enginnering_owned_by_christoph_kaltenboeck_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "_Kubernetes_Overview-Performance_Enginnering_owned_by_christoph_kaltenboeck_voestalpine_com" {
  # contents = ""
}
