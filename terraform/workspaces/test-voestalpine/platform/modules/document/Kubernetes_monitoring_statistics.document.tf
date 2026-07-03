resource "dynatrace_document" "Kubernetes_monitoring_statistics" {
  name      = "Kubernetes monitoring statistics"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 27
        },
        "1": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 7
        },
        "10": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "11": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 27
        },
        "12": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "13": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "14": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 30
        },
        "15": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 39
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "17": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 39
        },
        "18": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 45
        },
        "19": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 45
        },
        "20": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 51
        },
        "4": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 7
        },
        "5": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "6": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "8": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 2
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "## Access type \n- **ApiServer:** This access type indicates that a call used the Kubernetes API server. This could be a normal API resource request but also a call via kube-proxy.\n- **DirectIp:** The internal IP address of the requested resource was used for the call. This can either be a pod or a node. This access type can only be applied if you run a containerized ActiveGate inside the Kubernetes cluster.",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "List the top number of average API requests per minute to endpoints of monitored Kubernetes clusters.",
          "query": "timeseries { sum(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m), value.A = avg(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m, scalar: true) }, by: { path, k8s.cluster.name }, filter: { matchesValue(dt.active_gate.id, $ActiveGateId) AND matchesValue(k8s.cluster.name, $Cluster) }\n| sort value.A desc\n| limit 10",
          "queryConfig": {
            "globalCommands": {
              "limit": 10,
              "sort": {
                "direction": "desc",
                "field": "value.A"
              }
            },
            "subQueries": [
              {
                "by": [
                  "path",
                  "k8s.cluster.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "dt.active_gate.id = $ActiveGateId AND k8s.cluster.name = $Cluster ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "dt.sfm.active_gate.kubernetes.api.query_count"
                },
                "rate": "1m"
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10
          },
          "subType": "dql-builder-metrics",
          "title": "Top endpoints average queries per minute",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "path",
                  "k8s.cluster.name"
                ],
                "categoryAxisLabel": "k8s.cluster.name,path",
                "isCategoryLabelVisible": false,
                "valueAxis": [
                  "value.A"
                ],
                "valueAxisLabel": "Number of queries"
              },
              "legend": {
                "hidden": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1743680791056,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(dt.sfm.active_gate.kubernetes.api.query_count, rate:1m)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the availability of Cluster Monitoring",
          "query": "timeseries\n  data = min(dt.kubernetes.cluster.readyz),\n  by: {k8s.cluster.name},\n  interval: 1m,\n  shift: -2m\n| filter in(k8s.cluster.name, $Cluster)\n| fieldsAdd sumDataPoints = arraySum(data), numDataPoints = arraySize(data)\n| fields `Kubernetes cluster` = k8s.cluster.name, `Availability (%)` = (sumDataPoints / numDataPoints) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cluster Monitoring Availability",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Kubernetes cluster\"]",
                "[\"Availability (%)\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "ActiveGate ID"
                  ],
                  "id": 180809.5,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Availability (%)\"]": 153.7
              },
              "hiddenColumns": [
                [
                  "dt.entity.kubernetes_cluster.activeGateId"
                ],
                [
                  "activeGateURL"
                ]
              ],
              "linewrapEnabled": true,
              "sortBy": [
                {
                  "columnId": "[\"Availability (%)\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1746776718230,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability (%)",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "11": {
          "content": "## Status codes\nThe following list gives you some hints for investigation based on the most common status codes.\n\n* **-1: General error.** Dynatrace could not access the endpoint. See \\\"Status reasons\\\" for more details. **Prometheus:** The [pod annotations](https://dt-url.net/y942vsf#annotate-prometheus-exporter-pods) might be incorrect.\n\n* **401: Unauthorized.** If you connect via URL and token, please double-check that the values are correct.\n\n- **403: Forbidden.** The service account might lack [required permissions](https://dt-url.net/un02v1h).\n\n* **404: Not Found.** The resource does not exist. This can happen when resources were deleted. **Prometheus:** It is likely that the [`metrics.dynatrace.com/path`](https://dt-url.net/y942vsf#path-to-metrics-endpoint) annotation points to a non-existent endpoint.\n\n* **503: Service Unavailable.** The Kubernetes API experiences an outage. **Prometheus:** The [`metrics.dynatrace.com/port`](https://dt-url.net/y942vsf#metrics-port) annotation might contain a wrong value. Another common reason for this status code are wrong TLS settings.\n",
          "type": "markdown"
        },
        "12": {
          "content": "# Troubleshoot Dynatrace Kubernetes platform monitoring and Prometheus integration\n\nGet detailed insights and investigate Dynatrace and the Kubernetes API server interactions.\nIf you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.kubernetes.kubernetes-monitoring-statistics).",
          "type": "markdown"
        },
        "13": {
          "content": "## Further resources\n1. [General overview about HTTP status codes: RFC7231](https://dt-url.net/pp62vxa)\n2. [Monitor Prometheus metrics](https://dt-url.net/y942vsf)\"  ",
          "type": "markdown"
        },
        "14": {
          "content": "## Status reasons\nThe following list gives you some hints for investigation based on the most common status codes.\n\n\n- **HttpStatus:** The status code represents an HTTP status code. See \\\"Status codes\\\" for more details.\n\n- **ConnectionError:** Signals that an error occurred while attempting to connect a socket to a remote address and port. Typically, the connection was refused remotely (e.g., no process is listening on the remote address/port).\n\n- **NoRouteToHost:** Signals that an error occurred while attempting to connect a socket to a remote address and port. Typically, the remote host cannot be reached because of an intervening firewall, or if an intermediate router is down.\n\n- **SocketTimeout:** Signals that a timeout has occurred on a socket read or accept.\n\n- **ConnectionTimeout:** A timeout occurred while connecting to an HTTP server.\n\n- **SslError:** Indicates an error detected by an SSL subsystem. This class is the general class of exceptions produced by failed SSL-related operations.\n\n- **InvalidContentType:** The response content type does not match the expected content type. Please check the logs for more info.",
          "type": "markdown"
        },
        "15": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1774013076547,
                "icon": "LinkIcon",
                "name": "Connection settings",
                "urlPattern": "/ui/intent/dynatrace.settings/open_settings#%7B%22settings.entityId%22%3A%22{{id}}%22%2C%22settings.itemId%22%3A%22kubernetes-cluster-connection%22%7D"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Query Explanation:**  \nThis query identifies Kubernetes clusters with API monitoring enabled and linked to specific ActiveGates. It evaluates ActiveGate health metrics (CPU usage, memory usage, and garbage collection time) over the last 30 minutes. Based on thresholds, it flags unhealthy ActiveGates and lists the conditions causing the issues (e.g., high CPU or memory usage).  \n\n**Why this visualization is useful:**  \nThe table provides a clear overview of clusters and their associated ActiveGates, highlighting problematic conditions. This helps quickly identify clusters impacted by resource constraints or performance issues, enabling targeted troubleshooting.",
          "query": "// Fetch Kubernetes clusters filtered by selected cluster name or ActiveGate ID\nsmartscapeNodes \"K8S_CLUSTER\"\n| fieldsAdd activeGateId = dt.metadata[activegate_id], activeGateVersion = dt.metadata[activegate_version]\n| filter in(activeGateId, $ActiveGateId)\n| filter matchesValue(name, $Cluster)\n| filter isNotNull(activeGateId)\n// Fetch the ActiveGate's JVM self-monitoing metrics for\n// - CPU usage [%]\n// - Memory available and used [bytes]\n// - Garbage collection time [ms]\n| lookup [\n  timeseries {\n    cpu_usage = max(dt.sfm.active_gate.jvm.cpu_usage),\n    memory_available = max(dt.sfm.active_gate.jvm.heap_memory_available),\n    memory_used = max(dt.sfm.active_gate.jvm.heap_memory_used),\n    gc_time = max(dt.sfm.active_gate.jvm.gc.major_collection_time)\n  },\n  by:{dt.active_gate.id},\n  shift:-3m\n  // Memory used percent is not available as a separate metric and therefore calculated\n  | fieldsAdd memory_used_percent = memory_used[] / memory_available[] * 100\n  // Determine if an ActiveGate is unhealthy:\n  // - CPU usage exceeds 85% for more than 3 samples within the last 30 minutes\n  // - Memory usage exceeds 80% for more than 3 samples within the last 30 minutes\n  // - Garbage collection time exceeds 3 seconds for more than 3 samples within the last 30 minutes\n  | fieldsAdd\n    unhealthy_cpu_usage = arraySum(iCollectArray(if(cpu_usage[] \u003e 85, 1, else: 0))) \u003e 3,\n    high_memory_usage = arraySum(iCollectArray(if(memory_used_percent[] \u003e 80, 1, else: 0))) \u003e 3,\n    high_gc_time = arraySum(iCollectArray(if(gc_time[] \u003e 3000, 1, else: 0))) \u003e 3\n  // Memory usage is unhealthy if the uage or garbage collection times are high\n  | fieldsAdd unhealthy_memory_usage = high_memory_usage or high_gc_time\n], sourceField:{activeGateId}, lookupField:{dt.active_gate.id}, fields:{unhealthy_cpu_usage, unhealthy_memory_usage}, executionOrder:leftFirst\n// Map the unhealthy states to human readable text\n| fieldsAdd conditions = arrayRemoveNulls(array(\n  if(unhealthy_cpu_usage, \"High CPU usage\", else:null),\n  if(unhealthy_memory_usage, \"High memory usage\", else:null)\n))\n// Show only unhealthy\n| filter arraySize(conditions) \u003e 0\n// Create an intent link to the cluster connection settings\n| fieldsAdd Actions = concat(\"[Connection settings](/ui/intent/dynatrace.settings/open_settings#%7B%22settings.entityId%22%3A%22\", toString(id), \"%22%2C%22settings.itemId%22%3A%22kubernetes-cluster-connection%22%7D)\")\n| fieldsAdd `ActiveGate ID` = concat(\"[\", activeGateId, \"](/ui/apps/dynatrace.classic/ui/deploymentstatus/activegates?filter=ID_HEX%3A\", activeGateId, \")\")\n| fields id, Cluster = name, `ActiveGate ID`, `ActiveGate version` = activeGateVersion, Conditions = conditions, Actions",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Clusters with unhealthy ActiveGates",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "Actions"
                  ],
                  "id": 266451.5,
                  "value": "markdown"
                },
                {
                  "disableRemoval": false,
                  "fields": [
                    "ActiveGate ID"
                  ],
                  "id": 301791.3999999985,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false
            }
          }
        },
        "16": {
          "content": "---",
          "type": "markdown"
        },
        "17": {
          "content": "### Conditions explanation\n\nThe DQL query thresholds for unhealthy conditions are based on the [Sizing guide for Dynatrace ActiveGates in the Kubernetes monitoring use-case](https://dt-url.net/26agsizes#monitoring-and-validation).\n\n#### High CPU usage\n\n- The ActiveGate's JVM CPU usage exceeded 85% for more than three samples within the last 30 minutes.\n\n#### High memory usage\n\n- The ActiveGate's JVM memory usage (used / available memory) exceeded 80% for more than three samples within the last 30 minutes.\n- The ActiveGate's JVM garbace collection time exceeded 3 seconds for more than three samples within the last 30 minutes.\n",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays the maximum CPU usage of ActiveGates over time.\n\n**Purpose:**\nThe line chart visualization highlights trends and fluctuations, enabling quick identification of performance spikes or resource bottlenecks.",
          "query": "// Fetch the ActiveGate's JVM self-monitoring metric for CPU usage\ntimeseries {\n    cpu_usage = max(dt.sfm.active_gate.jvm.cpu_usage)\n  },\n  by:{dt.active_gate.id},\n  shift:-3m,\n  // Filter by selected ActiveGate\n  filter: in(dt.active_gate.id, $ActiveGateId)\n// Filter by selected cluster name\n// The in-lookup expression is used as the cluster name is not available as a dimension\n| filter in(dt.active_gate.id, lookup(\n    [ smartscapeNodes \"K8S_CLUSTER\" | filter matchesValue(name, $Cluster) | fields activeGateId = dt.metadata[activegate_id] ],\n    sourceField:dt.active_gate.id, lookupField:activeGateId, executionOrder:leftFirst\n  )[activeGateId])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ActiveGate JVM CPU usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "curve": "smooth",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-apdex-fair-default, #a9780f)",
                  "colorMode": "single-color",
                  "label": "Unhealthy",
                  "max": 100,
                  "min": 85,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile visualizes the percentage of heap memory used by ActiveGates over time, calculated as `memory_used / memory_available * 100`.\n\n**Purpose:**\nThe line chart effectively highlights trends and fluctuations in memory usage, enabling proactive monitoring and capacity planning.",
          "query": "// Fetch the ActiveGate's JVM self-monitoring metric for available memory and memory usage\ntimeseries {\n    memory_available = max(dt.sfm.active_gate.jvm.heap_memory_available),\n    memory_used = max(dt.sfm.active_gate.jvm.heap_memory_used)\n  },\n  by:{dt.active_gate.id},\n  shift:-3m,\n  // Filter by selected ActiveGate\n  filter: in(dt.active_gate.id, $ActiveGateId)\n// Calculate the memory usage in percent\n| fieldsAdd memory_used_percent = memory_used[] / memory_available[] * 100\n| fieldsRemove memory_used, memory_available\n// Filter by selected cluster name\n// The in-lookup expression is used as the cluster name is not available as a dimension\n| filter in(dt.active_gate.id, lookup(\n    [ smartscapeNodes \"K8S_CLUSTER\" | filter matchesValue(name, $Cluster) | fields activeGateId = dt.metadata[activegate_id] ],\n    sourceField:dt.active_gate.id, lookupField:activeGateId, executionOrder:leftFirst\n  )[activeGateId])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ActiveGate JVM memory usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "curve": "smooth",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-apdex-fair-default, #a9780f)",
                  "colorMode": "single-color",
                  "label": "Unhealthy",
                  "max": 100,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1774013629561,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "memory_used_percent",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "**Description:**  \nThis tile displays the maximum major garbage collection time for ActiveGates \n\n**Purpose:**  \nThe line chart helps visualize trends and fluctuations in garbage collection times, enabling quick identification of performance bottlenecks or anomalies in ActiveGate JVMs.",
          "query": "// Fetch the ActiveGate's JVM self-monitoring metric for garbage collection time\ntimeseries {\n    gc_time = max(dt.sfm.active_gate.jvm.gc.major_collection_time)\n  },\n  by:{dt.active_gate.id},\n  shift:-3m,\n  // Filter by selected ActiveGate\n  filter: in(dt.active_gate.id, $ActiveGateId)\n// Filter by selected cluster name\n// The in-lookup expression is used as the cluster name is not available as a dimension\n| filter in(dt.active_gate.id, lookup(\n    [ smartscapeNodes \"K8S_CLUSTER\" | filter matchesValue(name, $Cluster) | fields activeGateId = dt.metadata[activegate_id] ],\n    sourceField:dt.active_gate.id, lookupField:activeGateId, executionOrder:leftFirst\n  )[activeGateId])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ActiveGate JVM garbage collection time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "curve": "smooth",
              "leftYAxisSettings": {
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-apdex-fair-default, #a9780f)",
                  "colorMode": "single-color",
                  "label": "Unhealthy",
                  "min": 3000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the number of failed API requests per minute to endpoints of monitored Kubernetes clusters.",
          "query": "timeseries { sum(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m), value.A = avg(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m, scalar: true) }, by: { k8s.cluster.name }, filter: { NOT matchesValue(status_code, \"2*\") AND ( matchesValue(k8s.cluster.name, $Cluster) AND matchesValue(dt.active_gate.id, $ActiveGateId) ) }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "by": [
                  "k8s.cluster.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "status_code != 2* AND k8s.cluster.name = $Cluster AND dt.active_gate.id = $ActiveGateId ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "dt.sfm.active_gate.kubernetes.api.query_count"
                },
                "rate": "1m"
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Failing queries per minute",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(dt.sfm.active_gate.kubernetes.api.query_count, rate:1m)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "ActiveGate Kubernetes API query count"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.cluster.name"
              ]
            }
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the number of successful API requests per minute to endpoints of monitored Kubernetes clusters in the last 2 hours.",
          "query": "timeseries { sum(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m), value.A = avg(dt.sfm.active_gate.kubernetes.api.query_count, rate: 1m, scalar: true) }, by: { k8s.cluster.name }, filter: { matchesValue(status_code, \"2*\") AND matchesValue(k8s.cluster.name, $Cluster) AND matchesValue(dt.active_gate.id, $ActiveGateId) }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "by": [
                  "k8s.cluster.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "status_code = 2* AND k8s.cluster.name = $Cluster AND dt.active_gate.id = $ActiveGateId ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "dt.sfm.active_gate.kubernetes.api.query_count"
                },
                "rate": "1m"
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Successful queries per minute",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(dt.sfm.active_gate.kubernetes.api.query_count, rate:1m)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "ActiveGate Kubernetes API query count"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.cluster.name"
              ]
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the average latency of successful API requests to endpoints of monitored Kubernetes clusters.",
          "query": "timeseries { avg(dt.sfm.active_gate.kubernetes.api.query_duration, rate: 1m), value.A = avg(dt.sfm.active_gate.kubernetes.api.query_duration, rate: 1m, scalar: true) }, by: { k8s.cluster.name }, filter: { matchesValue(status_code, \"2*\") AND matchesValue(k8s.cluster.name, $Cluster) AND matchesValue(dt.active_gate.id, $ActiveGateId) }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "by": [
                  "k8s.cluster.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "status_code = 2* AND k8s.cluster.name = $Cluster AND dt.active_gate.id = $ActiveGateId ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "dt.sfm.active_gate.kubernetes.api.query_duration"
                },
                "rate": "1m"
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Average latency successful queries",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(dt.sfm.active_gate.kubernetes.api.query_duration, rate:1m)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "ActiveGate Kubernetes API query duration"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.cluster.name"
              ]
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "List the top number of failed API requests to endpoints of monitored Kubernetes clusters.",
          "query": "timeseries\n  // Query the self-monitoring metric for API requests to endpoints of monitored Kubernetes clusters\n  queries = sum(dt.sfm.active_gate.kubernetes.api.query_count, scalar: true),\n  // Apply desired grouping\n  by: { k8s.cluster.name, dt.active_gate.id, path, status_code, status_reason, access_type },\n  // Filter out successful requests - status code 200\n  filter: { matchesValue(k8s.cluster.name, $Cluster ) AND NOT matchesValue(status_code, \"2*\") AND (matchesValue(dt.active_gate.id, $ActiveGateId)) }\n// Sort by the number of failed requests\n| sort queries desc\n// Add ActiveGateUrl as link to classic ActiveGate deployment status page\n| fieldsAdd activeGateURL = concat(\"/ui/apps/dynatrace.classic/ui/deploymentstatus/activegates?filter=ID_HEX%3A\", dt.active_gate.id)\n| fieldsAdd activeGateLink = concat(\"[\",dt.active_gate.id,\"](\",activeGateURL,\")\")\n// Rename fields for better visualization\n| fieldsRename `Top failing queries in total` = queries, `Cluster name` = k8s.cluster.name, `ActiveGate ID` = activeGateLink, `Path` = path, `Status code` = status_code, `Status reason` = status_reason, `Access type` = access_type",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failing queries",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"Cluster name\"]",
                "[\"dt.active_gate.id\"]",
                "[\"Top failing queries in total\"]",
                "[\"activeGateURL\"]",
                "[\"ActiveGate ID\"]",
                "[\"Path\"]",
                "[\"Status code\"]",
                "[\"Status reason\"]",
                "[\"Access type\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Top failing queries in total"
                  ],
                  "id": 1744360978129,
                  "value": "number"
                },
                {
                  "fields": [
                    "ActiveGate ID"
                  ],
                  "id": 16378.699999988079,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"dt.active_gate.id\"]": 119
              },
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "dt.active_gate.id"
                ],
                [
                  "activeGateURL"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Top failing queries in total\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "// filter timeseries by the selected cluster\ntimeseries count(`dt.kubernetes.nodes`), by: {name=k8s.cluster.name}\n| fields name\n| sort name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Cluster",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "// filter timeseries by the selected ActiveGate\ntimeseries sum(dt.sfm.active_gate.kubernetes.api.query_duration), by:{dt.active_gate.id, k8s.cluster.name}\n| fields dt.active_gate.id, k8s.cluster.name\n| filter matchesValue(k8s.cluster.name, $Cluster )\n// if no activeGates, add * placeholder to avoid errors\n| summarize entries = collectArray(dt.active_gate.id)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"no-activegates\" })\n| expand records",
          "key": "ActiveGateId",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-monitoring-statistics"
  # private = false
}
