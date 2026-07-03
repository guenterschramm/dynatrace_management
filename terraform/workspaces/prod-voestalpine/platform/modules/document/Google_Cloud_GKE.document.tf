resource "dynatrace_document" "Google_Cloud_GKE" {
  name      = "Google Cloud GKE"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "11": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "14": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 44
        },
        "16": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 44
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "18": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 50
        },
        "19": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 50
        },
        "2": {
          "h": 1,
          "w": 12,
          "x": 0,
          "y": 11
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 55
        },
        "3": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "32": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 60
        },
        "33": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 61
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 61
        },
        "35": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "36": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "37": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "38": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 2
        },
        "39": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 55
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 17
        },
        "40": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 66
        },
        "41": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 72
        },
        "42": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 77
        },
        "43": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 67
        },
        "44": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 77
        },
        "46": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 72
        },
        "47": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 77
        },
        "48": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "5": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "## Google Kubernetes Engine\n\nThis dashboard provides insights into your GKE clusters including containers, nodes, and pods.",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.memory.request_utilization), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name, gcp.metric_labels.memory_type }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 0.95,
                  "min": 0.8,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 0.95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.memory.limit_utilization), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name, gcp.metric_labels.memory_type }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Limit utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 0.95,
                  "min": 0.8,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 0.95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "13": {
          "content": "##### Container Ephemeral Storage",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.ephemeral_storage.used_bytes), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Used bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100441321,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.ephemeral_storage.request_bytes), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100470390,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.ephemeral_storage.limit_bytes), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Limit bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100483686,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "17": {
          "content": "##### Nodes",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_node.kubernetes_io.node.cpu.total_cores), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.node_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.node_name, array($NodeName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total cores",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
            },
            "unitsOverrides": [
              {
                "added": 1769105312153,
                "baseUnit": "core",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_node.kubernetes_io.node.pid_used), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.node_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.node_name, array($NodeName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pid used",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            }
          }
        },
        "2": {
          "content": "##### Container CPU",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_node.kubernetes_io.node.network.received_bytes_count), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.node_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.node_name, array($NodeName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Received bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100542461,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Core usage time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100299215,
                "baseUnit": "second",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "32": {
          "content": "##### Pods Network Flow",
          "type": "markdown"
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_pod.networking_googleapis_com.pod_flow.ingress_bytes_count), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.metric_labels.protocol, gcp.metric_labels.remote_continent }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress bytes",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769100555206,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_pod.networking_googleapis_com.pod_flow.ingress_packets_count), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.metric_labels.protocol, gcp.metric_labels.remote_continent }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress packets",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name}, cpu_utilization = avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time)\n| filter {in(gcp.project.id, array($Project))}\n| summarize count = countDistinct(gcp.resource_labels.cluster_name)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Clusters",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name}, cpu_utilization = avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time)\n| filter {in(gcp.project.id, array($Project))}\n| summarize count = countDistinct(gcp.resource_labels.namespace_name)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Namespaces",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name}, cpu_utilization = avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time)\n| filter {in(gcp.project.id, array($Project))}\n| summarize count = countDistinct(gcp.resource_labels.pod_name)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pods",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name}, cpu_utilization = avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time)\n| filter {in(gcp.project.id, array($Project))}\n| summarize count = countDistinct(gcp.resource_labels.pod_name), by: {gcp.resource_labels.container_name}\n| sort count desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Poders per containers",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_node.kubernetes_io.node.network.sent_bytes_count), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.node_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.node_name, array($NodeName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sent bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769100531874,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.request_cores), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request cores",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769105247676,
                "baseUnit": "core",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "40": {
          "content": "##### Quotas",
          "type": "markdown"
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.containers_per_cluster_autopilot.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.containers_per_cluster_autopilot.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Containers per cluster autopilot limit",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.containers_per_cluster_standard.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.containers_per_cluster_standard.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Containers per cluster standard",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.etcd_database_size_bytes.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.etcd_database_size_bytes.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Etcd database size bytes limit",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.nodes_per_cluster.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.nodes_per_cluster.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Nodes per cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.pods_per_cluster_autopilot.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.quota.pods_per_cluster_autopilot.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pods per cluster autopilot limit",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.limit), usage=avg(cloud.gcp.container_googleapis_com_cluster.container_googleapis_com.quota.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.cluster_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pods per cluster standard",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 99,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 99,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { restarts = sum(cloud.gcp.k8s_container.kubernetes_io.container.restart_count) }, by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name } \n| filter arraySum(restarts) \u003e 0 AND in(gcp.project.id, array($Project)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName))\n| sort restarts asc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container restarts",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "restarts"
                  ],
                  "id": 1770381765302,
                  "value": "sparkline"
                }
              ],
              "hideColumnsForLargeResults": true
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
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.cpu.request_utilization), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "pointsDisplay": "never"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)",
                  "colorMode": "single-color",
                  "max": 0.95,
                  "min": 0.8,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 0.95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            }
          }
        },
        "6": {
          "content": "##### Container Memory",
          "type": "markdown"
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.memory.used_bytes), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name, gcp.metric_labels.memory_type }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Used bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100392051,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries val=avg(cloud.gcp.k8s_container.kubernetes_io.container.memory.request_bytes), by: { gcp.project.id, gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.resource_labels.pod_name, gcp.resource_labels.container_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.cluster_name, array($ClusterName)) AND in(gcp.resource_labels.namespace_name, array($Namespace)) AND in(gcp.resource_labels.pod_name, array($PodName)) AND in(gcp.resource_labels.container_name, array($ContainerName)) }\n| limit toLong($Limit)\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769100421541,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.project.id}\n| summarize collectDistinct(gcp.project.id)",
          "key": "Project",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.location}\n| summarize collectDistinct(gcp.location)",
          "key": "Location",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.region}\n| summarize collectDistinct(gcp.region)",
          "key": "Region",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.resource_labels.cluster_name}\n| summarize collectDistinct(gcp.resource_labels.cluster_name)",
          "key": "ClusterName",
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
          "input": "timeseries sum(cloud.gcp.k8s_node.kubernetes_io.node.cpu.total_cores, scalar:true), by: {gcp.resource_labels.node_name}\n| summarize collectDistinct(gcp.resource_labels.node_name)",
          "key": "NodeName",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.resource_labels.namespace_name}\n| summarize collectDistinct(gcp.resource_labels.namespace_name)",
          "key": "Namespace",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.resource_labels.pod_name}\n| summarize collectDistinct(gcp.resource_labels.pod_name)",
          "key": "PodName",
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
          "input": "timeseries sum(cloud.gcp.k8s_container.kubernetes_io.container.cpu.core_usage_time, scalar:true), by: {gcp.resource_labels.container_name}\n| summarize collectDistinct(gcp.resource_labels.container_name)",
          "key": "ContainerName",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "100",
          "editable": true,
          "key": "Limit",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.gcp-gke"
  # private = false
}
