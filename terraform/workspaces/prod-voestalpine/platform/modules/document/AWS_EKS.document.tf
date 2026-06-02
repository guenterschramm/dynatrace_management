resource "dynatrace_document" "AWS_EKS" {
  name      = "AWS EKS"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "102": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 48
        },
        "104": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 48
        },
        "106": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "108": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "112": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 52
        },
        "115": {
          "h": 4,
          "w": 18,
          "x": 0,
          "y": 9
        },
        "116": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "118": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "120": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "121": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "123": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 5
        },
        "125": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 5
        },
        "126": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 5
        },
        "127": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 18
        },
        "129": {
          "h": 4,
          "w": 16,
          "x": 8,
          "y": 35
        },
        "130": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "131": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 35
        },
        "132": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 56
        },
        "58": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 22
        },
        "60": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 52
        },
        "66": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 52
        },
        "79": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 9
        },
        "82": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "88": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 30
        },
        "90": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 22
        },
        "92": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 30
        },
        "94": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 18
        },
        "96": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "99": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 22
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Amazon Elastic Kubernetes Service\n\nMonitor the health and performance of your Kubernetes clusters. Gain insights into node and pod utilization, CPU and memory trends. Dive deeper and look for anomalies in performance, network traffic and container statuses. \n\n**Note:** This dashboards uses Container Insights metrics.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"dt.smartscape.aws_eks_cluster\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "102": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = sum(cloud.aws.containerinsights.pod_cpu_utilization.By.ClusterName.FullPodName.Namespace.PodName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, FullPodName, Namespace, PodName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, FullPodName, Namespace, PodName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "FullPodName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758284686795,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "104": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = sum(cloud.aws.containerinsights.pod_gpu_usage_total.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "GPU usage total",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1758284849860,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "106": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.pod_memory_utilization.By.ClusterName.FullPodName.Namespace.PodName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, FullPodName, Namespace, PodName },\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, FullPodName, Namespace, PodName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "total",
                "FullPodName"
              ]
            },
            "legend": {
              "ratio": 28
            },
            "unitsOverrides": [
              {
                "added": 1758288421376,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "108": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.pod_network_rx_bytes.By.ClusterName.FullPodName.Namespace.PodName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, FullPodName, Namespace, PodName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, FullPodName, Namespace, PodName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network rx bytes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "PodName",
                "total",
                "FullPodName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758289289231,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "112": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = count(cloud.aws.containerinsights.pod_number_of_container_restarts.By.ClusterName.Namespace.PodName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, Namespace, PodName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, Namespace, PodName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container restarts",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "PodName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758289233981,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "115": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.eks.apiserver_admission_webhook_request_total.By.ClusterName),\nadmit = avg(cloud.aws.eks.apiserver_admission_webhook_request_total_ADMIT.By.ClusterName),\nvalidating = avg(cloud.aws.eks.apiserver_admission_webhook_request_total_VALIDATING.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Admission webhook request total",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "116": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.eks.apiserver_request_total.By.ClusterName),\n`4xx` = avg(cloud.aws.eks.apiserver_request_total_4XX.By.ClusterName),\n`5xx` = avg(cloud.aws.eks.apiserver_request_total_5XX.By.ClusterName),\n by: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, PodName},\n filter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion: true\n| sort ClusterName, PodName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": " APIServer request",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "total"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-04-default, #8f4624)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "4xx"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "5xx"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "total",
                "4xx",
                "5xx",
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 24
            }
          }
        },
        "118": {
          "content": "##### Pod Insights",
          "type": "markdown"
        },
        "120": {
          "content": "##### Node Insights",
          "type": "markdown"
        },
        "121": {
          "content": "##### API server",
          "type": "markdown"
        },
        "123": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries total = avg(cloud.aws.containerinsights.cluster_node_count.By.ClusterName),\nfailed = avg(cloud.aws.containerinsights.cluster_failed_node_count.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion:true\n| sort ClusterName\n| summarize distinct_count = countDistinct(ClusterName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Clusters"
            },
            "unitsOverrides": [
              {
                "added": 1758540601964,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "clusters_count",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "125": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort InstanceId, NodeName\n| fields arrayLast(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Running pods(per node)"
            },
            "unitsOverrides": [
              {
                "added": 1759142623565,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arrayLast(total)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "126": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.cluster_node_count.By.ClusterName),\nfailed = avg(cloud.aws.containerinsights.cluster_failed_node_count.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion:true\n| sort ClusterName\n| fields arrayLast(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Running Nodes"
            },
            "unitsOverrides": [
              {
                "added": 1758540573327,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arrayLast(total)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "127": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.cluster_node_count.By.ClusterName),\nfailed = avg(cloud.aws.containerinsights.cluster_failed_node_count.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cluster nodes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "total",
                  "failed"
                ]
              },
              "leftYAxisSettings": {
                "max": {
                  "mode": "data-max"
                }
              },
              "rightYAxisSettings": {
                "max": {
                  "mode": "data-max"
                },
                "min": {
                  "mode": "data-min"
                }
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "vvostotskyi-managed-node-cluster•total"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "vvostotskyi-managed-node-cluster•failed"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "failed",
                "total",
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": []
          }
        },
        "129": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, InstanceId, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Running pods",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "data-max"
                }
              },
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "NodeName",
                "total"
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": []
          }
        },
        "130": {
          "content": "##### Container Insights",
          "type": "markdown"
        },
        "131": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort InstanceId, NodeName\n| summarize total_sum = sum(arrayLast(total))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "All running pods",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "recordField": "total_sum"
            },
            "unitsOverrides": [
              {
                "added": 1759326255276,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total_sum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "132": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_cpu_usage_total.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion: true\n| sort ClusterName, InstanceId, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage total (amount)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "tooltip": {
                "variant": "shared"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758288972551,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries total=sum(cloud.aws.eks.scheduler_schedule_attempts_total.By.ClusterName),\nerror = sum(cloud.aws.eks.scheduler_schedule_attempts_ERROR.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\n filter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n}, nonempty:true,\nunion: true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scheduler attempts",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "total"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "error"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "total",
                "error"
              ]
            }
          }
        },
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total= avg(cloud.aws.eks.scheduler_pending_pods.By.ClusterName),\ngated = avg(cloud.aws.eks.scheduler_pending_pods_GATED.By.ClusterName),\nactiveq = avg(cloud.aws.eks.scheduler_pending_pods_ACTIVEQ.By.ClusterName),\nbackoff = avg(cloud.aws.eks.scheduler_pending_pods_BACKOFF.By.ClusterName),\nunshedulable = avg(cloud.aws.eks.scheduler_pending_pods_UNSCHEDULABLE.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty: true,\nunion: true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scheduler pending pods",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "total",
                  "gated",
                  "backoff",
                  "unshedulable",
                  "activeq"
                ]
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "gated"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "activeq"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "backoff"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "unshedulable"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "gated",
                "activeq",
                "unshedulable",
                "backoff",
                "total",
                "ClusterName"
              ]
            }
          }
        },
        "79": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = sum(cloud.aws.containerinsights.apiserver_admission_webhook_admission_duration_seconds.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Webhook admission duration seconds",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1758285508396,
                "baseUnit": "second",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "82": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.eks.apiserver_storage_size_bytes.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nnonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage  size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1758285476218,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_cpu_utilization.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, InstanceId, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "NodeName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758284334965,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1758288946424,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "interval",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "90": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_gpu_usage_total.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "GPU usage total",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_filesystem_utilization.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, InstanceId, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Filesystem utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "total",
                "NodeName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758288542724,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_memory_utilization.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758284121596,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "96": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_network_total_bytes.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, InstanceId, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort ClusterName, InstanceId, NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network total bytes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "NodeName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758273034657,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "99": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries total = avg(cloud.aws.containerinsights.node_number_of_running_containers.By.ClusterName.InstanceId.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, NodeName},\nfilter:{\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},nonempty:true,\nunion:true\n| sort NodeName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Running containers",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "NodeName",
                "total"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758289165832,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "input": "smartscapeNodes \"AWS_EKS_CLUSTER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "SmartscapeId",
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
          "input": "smartscapeNodes \"AWS_EKS*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
          "key": "AccountId",
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
          "input": "smartscapeNodes \"AWS_EKS*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "10",
          "editable": true,
          "key": "Limit",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.aws-eks"
  # private = false
}
