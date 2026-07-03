resource "dynatrace_document" "AWS_EKS" {
  name      = "AWS EKS"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 20
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 20
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "15": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 26
        },
        "16": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 26
        },
        "17": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 26
        },
        "18": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 72
        },
        "19": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "2": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 4
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "21": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 36
        },
        "22": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 36
        },
        "23": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 36
        },
        "24": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "25": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 41
        },
        "26": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 41
        },
        "27": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 46
        },
        "28": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 46
        },
        "29": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 46
        },
        "3": {
          "h": 4,
          "w": 3,
          "x": 3,
          "y": 4
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 60
        },
        "31": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "32": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 50
        },
        "33": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 50
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 55
        },
        "35": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 55
        },
        "36": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 60
        },
        "37": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 4
        },
        "38": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 4
        },
        "39": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "4": {
          "h": 4,
          "w": 3,
          "x": 6,
          "y": 4
        },
        "5": {
          "h": 4,
          "w": 3,
          "x": 9,
          "y": 4
        },
        "6": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 4
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Amazon Elastic Kubernetes Service — Control Plane\n\nMonitor the health of your EKS cluster control planes. Track API server request rates and error rates, scheduler throughput and pending pod queues, and admission webhook latency and rejection counts.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"dt.smartscape.aws_eks_cluster\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "etcd database size per cluster — a growing trend approaching the storage quota causes write failures and switches the cluster to read-only mode; consider compacting history or reviewing resource object retention policies",
          "query": "timeseries val = avg(cloud.aws.eks.apiserver_storage_size_bytes.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "etcd storage size by cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758285000006,
                "baseUnit": "byte",
                "cascade": null,
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
        "11": {
          "content": "##### Scheduler",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Scheduler attempt rate split by outcome — error attempts mean the scheduler tried but failed to place a pod; sustained errors require investigation of resource constraints, taints, or affinity rules",
          "query": "timeseries total = sum(cloud.aws.eks.scheduler_schedule_attempts_total.By.ClusterName),\nerror = sum(cloud.aws.eks.scheduler_schedule_attempts_ERROR.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Schedule Attempts by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                "ClusterName",
                "total",
                "error"
              ]
            }
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Breakdown of pending pods by queue state — unschedulable pods have no fitting node; backoff pods hit repeated failures; gated pods are held by scheduling gates; activeq pods are queued for immediate scheduling",
          "query": "timeseries total = sum(cloud.aws.eks.scheduler_pending_pods.By.ClusterName),\ngated = sum(cloud.aws.eks.scheduler_pending_pods_GATED.By.ClusterName),\nactiveq = sum(cloud.aws.eks.scheduler_pending_pods_ACTIVEQ.By.ClusterName),\nbackoff = sum(cloud.aws.eks.scheduler_pending_pods_BACKOFF.By.ClusterName),\nunschedulable = sum(cloud.aws.eks.scheduler_pending_pods_UNSCHEDULABLE.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pending Pods by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "total",
                  "activeq",
                  "gated",
                  "backoff",
                  "unschedulable"
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
                    "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "gated"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "backoff"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "unschedulable"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "total",
                "activeq",
                "gated",
                "backoff",
                "unschedulable"
              ]
            }
          }
        },
        "14": {
          "content": "##### Admission Webhooks",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Admission webhook request rate split by type — mutating (admit) webhooks run first and may modify objects; validating webhooks enforce policy; a spike in either can slow or block deployments",
          "query": "timeseries total = sum(cloud.aws.eks.apiserver_admission_webhook_request_total.By.ClusterName),\nadmit = sum(cloud.aws.eks.apiserver_admission_webhook_request_total_ADMIT.By.ClusterName),\nvalidating = sum(cloud.aws.eks.apiserver_admission_webhook_request_total_VALIDATING.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort ClusterName\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Webhook Requests by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "admit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "validating"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "total",
                "admit",
                "validating"
              ]
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Admission webhook rejection count per cluster — rejections block resource creation or updates; a spike indicates policy violations or misconfigured webhooks causing deployment failures",
          "query": "timeseries val = sum(cloud.aws.eks.apiserver_admission_webhook_rejection_count.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Webhook Rejections by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758285000007,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average admission webhook processing time per cluster — slow webhooks (\u003e1 s) directly extend API request latency and can cause controller timeouts; identify and optimize high-latency webhooks",
          "query": "timeseries val = avg(cloud.aws.eks.apiserver_admission_webhook_admission_duration_seconds.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Webhook Admission Duration by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1758285000008,
                "baseUnit": "second",
                "cascade": null,
                "decimals": 3,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "18": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "19": {
          "content": "### Amazon CloudWatch Container Insights\n\nMonitor the health of your EKS workloads using Container Insights metrics. Track cluster capacity, node resource utilization, and pod-level CPU, memory, network I/O, and container restart activity.\n\nContainer Insights must be enabled on your EKS cluster for these metrics to appear.\n\n---",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of EKS clusters matching the current filters",
          "query": "smartscapeNodes \"AWS_EKS_CLUSTER\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
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
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Clusters",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285000000,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "20": {
          "content": "##### Container Insights — Cluster",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of worker nodes across selected clusters",
          "query": "timeseries val = sum(cloud.aws.containerinsights.cluster_node_count.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Nodes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total Nodes",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285002000,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of failed worker nodes — any non-zero value requires immediate investigation of node health and availability",
          "query": "timeseries val = sum(cloud.aws.containerinsights.cluster_failed_node_count.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failed Nodes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Failed Nodes",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285002001,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
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
            }
          },
          "description": "Total number of running pods across selected clusters",
          "query": "timeseries val = sum(cloud.aws.containerinsights.cluster_number_of_running_pods.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Running Pods",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Running Pods",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285002002,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "24": {
          "content": "##### Container Insights — Nodes",
          "type": "markdown"
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average CPU utilization per node per cluster — sustained high values indicate under-provisioned capacity or resource-intensive workloads",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_cpu_utilization.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node CPU Utilization by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002003,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average memory utilization per node per cluster — high values risk OOM kills; consider scaling nodes or adjusting workload memory limits",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_memory_utilization.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node Memory Utilization by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002004,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average filesystem utilization per node per cluster — nodes approaching full disk risk pod evictions and log pipeline failures",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_filesystem_utilization.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node Filesystem Utilization by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002005,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total network bytes across nodes per cluster — unexpected spikes may indicate data exfiltration, traffic amplification, or storage-intensive workloads",
          "query": "timeseries val = sum(cloud.aws.containerinsights.node_network_total_bytes.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node Network Traffic by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002006,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Running pods and containers per cluster — a large gap between the two indicates multi-container pods or sidecar overhead",
          "query": "timeseries pods = sum(cloud.aws.containerinsights.node_number_of_running_pods.By.ClusterName),\ncontainers = sum(cloud.aws.containerinsights.node_number_of_running_containers.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(pods) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Running Pods \u0026 Containers by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "pods",
                "containers"
              ]
            },
            "legend": {
              "ratio": 32
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total API server request rate across selected clusters — a sudden drop may indicate the control plane is unreachable or severely throttled",
          "query": "timeseries val = sum(cloud.aws.eks.apiserver_request_total.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arraySum(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total API requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total API Requests",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285000001,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total GPU units in use across nodes per cluster — only populated for clusters with GPU-accelerated instance types",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_gpu_usage_total.By.ClusterName.NodeName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, NodeName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node GPU Usage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "NodeName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            }
          }
        },
        "31": {
          "content": "##### Container Insights — Pods",
          "type": "markdown"
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average CPU utilization across pods per cluster — high values combined with pending pods indicate a need for cluster scaling",
          "query": "timeseries val = avg(cloud.aws.containerinsights.pod_cpu_utilization.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pod CPU Utilization by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002007,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average memory utilization across pods per cluster — sustained high values combined with restart spikes typically indicate OOM kills",
          "query": "timeseries val = avg(cloud.aws.containerinsights.pod_memory_utilization.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pod Memory Utilization by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002008,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Network receive and transmit bytes across pods per cluster — correlate with application activity to identify traffic anomalies or bandwidth saturation",
          "query": "timeseries rx = sum(cloud.aws.containerinsights.pod_network_rx_bytes.By.ClusterName),\ntx = sum(cloud.aws.containerinsights.pod_network_tx_bytes.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(rx) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pod Network Traffic by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "rx",
                "tx"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1758285002009,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "rx",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1758285002010,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tx",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total container restart count per cluster — high restart counts indicate crashlooping or OOM-killed workloads; clusters at the top need immediate investigation",
          "query": "timeseries val = sum(cloud.aws.containerinsights.pod_number_of_container_restarts.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container Restarts by Cluster",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "val"
              ]
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total GPU units in use across pods per cluster — only populated for clusters running GPU-accelerated workloads",
          "query": "timeseries val = avg(cloud.aws.containerinsights.pod_gpu_usage_total.By.ClusterName.PodName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName, PodName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pod GPU Usage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "PodName",
                "val"
              ]
            },
            "legend": {
              "ratio": 32
            }
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average node CPU utilization across selected clusters — above 80 % indicates resource pressure; consider scaling out node pools",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_cpu_utilization.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Node CPU",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 80
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg Node CPU",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285003000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average node memory utilization across selected clusters — above 85 % risks kubelet evictions; review workload memory requests and limits",
          "query": "timeseries val = avg(cloud.aws.containerinsights.node_memory_utilization.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Node Memory",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 85
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg Node Memory",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285003001,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Client (4XX) and server (5XX) error rates per cluster — sorted by highest 5XX rate to surface the most unreliable clusters first",
          "query": "timeseries `4xx` = sum(cloud.aws.eks.apiserver_request_total_4XX.By.ClusterName),\n`5xx` = sum(cloud.aws.eks.apiserver_request_total_5XX.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| fieldsAdd m = arrayAvg(`5xx`)\n| sort m desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Errors by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                    "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "4xx"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "5xx"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "4xx",
                "5xx"
              ]
            },
            "legend": {
              "ratio": 32
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total API server 5XX error rate — any non-zero value means the control plane is failing requests; investigate etcd connectivity and API server logs immediately",
          "query": "timeseries val = sum(cloud.aws.eks.apiserver_request_total_5XX.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arraySum(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API 5XX errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "API 5XX Errors",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285000002,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total scheduler error rate — errors mean pods could not be assigned to a node; non-zero values require investigation of node capacity, taints, or resource quotas",
          "query": "timeseries val = sum(cloud.aws.eks.scheduler_schedule_attempts_ERROR.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arraySum(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scheduler errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Scheduler Errors",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285000003,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of pods pending scheduling — a rising trend indicates insufficient cluster capacity or scheduling constraints blocking pod placement",
          "query": "timeseries val = sum(cloud.aws.eks.scheduler_pending_pods.By.ClusterName),\n  filter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arraySum(val)\n| summarize Total = sum(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pending pods",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Pending Pods",
              "labelMode": "none",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1758285000004,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "8": {
          "content": "##### API server",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total API server request rate per cluster — sorted by highest traffic to identify clusters under load",
          "query": "timeseries total = sum(cloud.aws.eks.apiserver_request_total.By.ClusterName),\nby: {aws.account.id, aws.region, dt.smartscape_source.id, ClusterName},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n},\nunion: true\n| fieldsAdd m = arrayAvg(total)\n| sort m desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Requests by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "total"
              ]
            },
            "legend": {
              "ratio": 32
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
