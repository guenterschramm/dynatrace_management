resource "dynatrace_document" "Azure_AKS_Cluster" {
  name      = "Azure AKS Cluster"
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
          "w": 12,
          "x": 12,
          "y": 19
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 24
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 24
        },
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "15": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 35
        },
        "19": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "20": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 40
        },
        "21": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 40
        },
        "22": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 40
        },
        "23": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 40
        },
        "24": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 35
        },
        "25": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 35
        },
        "26": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "27": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "28": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 13
        },
        "3": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 13
        },
        "31": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "4": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "5": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "6": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "7": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 19
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Azure Kubernetes Service\n\nMonitor node CPU and memory utilization, allocatable capacity, pod readiness, pod phase distribution, and node condition health across your Azure Kubernetes Service managed clusters.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"container\",\"dt.smartscape.azure_microsoft_containerservice_managedclusters\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average node memory working set utilization per cluster; clusters with highest average shown first - memory pressure above 85% triggers the kubelet eviction manager",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.node_memory_working_set_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node Memory usage percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "percent",
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Node memory working set in bytes per cluster - the active working set excludes reclaimable pages and is the primary figure kubelet uses for eviction decisions",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.node_memory_working_set_bytes),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node Memory Working Set by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "Discrete CPU core capacity allocatable to pods per cluster - changes reflect node pool scaling events; compare against CPU usage % to assess headroom",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.kube_node_status_allocatable_cpu_cores),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Allocatable CPU Cores by Cluster",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": " cores",
                "unitCategory": "unspecified"
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
          "description": "Memory allocatable to pods per cluster in bytes - a falling trend without a corresponding drop in usage indicates nodes were removed and capacity is shrinking",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.kube_node_status_allocatable_memory_bytes),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Allocatable Memory by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "14": {
          "content": "##### etcd Resource utilization",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "etcd database usage percentage per cluster - high values approaching 100% risk write failures and cluster instability; consider compacting or defragmenting the etcd database",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.etcd_database_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "etcd DB Usage percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "19": {
          "content": "##### Cluster Autoscaling",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of AKS managed clusters matching the current filters",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_CONTAINERSERVICE_MANAGEDCLUSTERS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
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
              "prefixIcon": "",
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
                "added": 1740489600000,
                "baseUnit": "none",
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Whether the cluster autoscaler considers the cluster safe to scale per cluster - an unsafe state means autoscaling is blocked, which can prevent the cluster from responding to workload demand",
          "query": "timeseries val = min(cloud.azure.microsoft_containerservice.managedclusters.cluster_autoscaler_cluster_safe_to_autoscale),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = if(arrayLast(val) == 1, \"Safe\", else: \"Unsafe\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cluster safe to autoscale",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "apdex",
                  "comparator": "= *value*",
                  "field": "m",
                  "type": "string",
                  "value": "Safe"
                },
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "m",
                  "type": "string",
                  "value": "Unsafe"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "m"
              },
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Whether the cluster autoscaler scale-down is in a cooldown period per cluster - during cooldown no nodes are removed, which is normal after a recent scale event but a prolonged cooldown may delay cost savings",
          "query": "timeseries val = min(cloud.azure.microsoft_containerservice.managedclusters.cluster_autoscaler_scale_down_in_cooldown),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = if(arrayLast(val) == 1, \"Cooldown active\", else: \"Scale-down eligible\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scale down in cooldown",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "apdex",
                  "comparator": "=",
                  "field": "m",
                  "type": "string",
                  "value": "Scale-down eligible"
                },
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "m",
                  "type": "string",
                  "value": "Cooldown active"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "m"
              },
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of nodes the cluster autoscaler has identified as unneeded and eligible for removal - a persistently high count with scale-down blocked may indicate autoscaler misconfiguration or pod disruption budgets preventing eviction",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.cluster_autoscaler_unneeded_nodes_count),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unneeded nodes count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1772714578809,
                "baseUnit": "none",
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
          "description": "Number of pods that cannot be scheduled due to insufficient cluster capacity - a non-zero value means workloads are pending; investigate node pool limits or resource requests that exceed available headroom",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.cluster_autoscaler_unschedulable_pods_count),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unschedulable pods count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1772714564821,
                "baseUnit": "none",
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "etcd CPU usage percentage per cluster - elevated CPU on the etcd control plane can slow key-value operations and delay Kubernetes API responses across the cluster",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.etcd_cpu_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "etcd CPU percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "etcd memory usage percentage per cluster - high memory pressure on etcd can trigger OOM events that restart the control plane component, causing temporary API unavailability",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.etcd_memory_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "etcd Memory percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "26": {
          "content": "##### API Server Resource Utilization",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "API server CPU utilization per cluster; clusters with highest average shown first - a rising trend often correlates with increased request volume or runaway controllers issuing excessive LIST or WATCH calls",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.apiserver_cpu_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Server CPU usage percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "percent",
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
            },
            "enabled": false
          },
          "description": "API server memory utilization per cluster; clusters with highest average shown first - memory growth above 85% risks OOM kills of the API server process, causing brief control plane outages until the pod restarts",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.apiserver_memory_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Server Memory usage percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "percent",
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of currently active in-flight requests to the API server per cluster - a sustained high count indicates the API server is under heavy load and may start throttling or rejecting requests",
          "query": "timeseries val = sum(cloud.azure.microsoft_containerservice.managedclusters.apiserver_current_inflight_requests),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inflight Requests by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average node CPU utilization across all selected clusters - values above 80% risk pod evictions and scheduling failures",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.node_cpu_usage_percentage),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
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
                  "value": 60
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg Node CPU",
              "labelMode": "none",
              "prefixIcon": "",
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
                "added": 1740489600000,
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
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "In-flight API server requests broken down by cluster and request kind (mutating vs read-only) - a spike in mutating requests often signals a deployment rollout or a misconfigured controller creating excessive write traffic",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.apiserver_current_inflight_requests),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, requestKind},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inflight Requests by Cluster and Request Kind",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "requestKind",
                "azure.resource.name"
              ]
            }
          }
        },
        "31": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Peak node CPU utilization across all selected clusters - a hotspot node above 90% may cause pod throttling or OOMkills on co-located workloads",
          "query": "timeseries val = max(cloud.azure.microsoft_containerservice.managedclusters.node_cpu_usage_percentage),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayMax(val)\n| summarize Total = max(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Max Node CPU",
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
                  "value": 70
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Max Node CPU",
              "labelMode": "none",
              "prefixIcon": "",
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
                "added": 1740489600000,
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
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average node memory working set utilization across all selected clusters - above 85% risks pod evictions due to memory pressure",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.node_memory_working_set_percentage),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
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
                  "value": 70
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg Node Memory",
              "labelMode": "none",
              "prefixIcon": "",
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
                "added": 1740489600000,
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average Kubernetes API server CPU utilization across all selected clusters - elevated values indicate heavy request load or inefficient controllers; sustained high CPU can increase API request latency",
          "query": "timeseries \n  val = avg(cloud.azure.microsoft_containerservice.managedclusters.apiserver_cpu_usage_percentage),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd total = arrayAvg(val)\n| summarize Total = avg(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg API Server CPU",
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
                  "type": "double",
                  "value": 70
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Alloc CPU Cores",
              "labelMode": "none",
              "prefixIcon": "",
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
                "added": 1740489600000,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
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
            }
          },
          "description": "Average Kubernetes API server memory utilization across all selected clusters - high memory usage can lead to OOM restarts of the API server, causing temporary control plane unavailability",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.apiserver_memory_usage_percentage),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd total = arrayAvg(val)\n| summarize Total = avg(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg API Server Memory",
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
                  "type": "double",
                  "value": 70
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Alloc Memory",
              "labelMode": "none",
              "prefixIcon": "",
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
                "added": 1740489600000,
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
        "8": {
          "content": "##### Node Resource Utilization",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average node CPU utilization per cluster; clusters with highest average shown first - sustained high usage indicates a need to scale out node pools",
          "query": "timeseries val = avg(cloud.azure.microsoft_containerservice.managedclusters.node_cpu_usage_percentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Node CPU usage percentage by Cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CONTAINERSERVICE_MANAGEDCLUSTERS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CONTAINERSERVICE_MANAGEDCLUSTERS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
          "key": "Subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CONTAINERSERVICE_MANAGEDCLUSTERS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CONTAINERSERVICE_MANAGEDCLUSTERS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
          "key": "ResourceGroup",
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
  custom_id = "dynatrace.clouds.azure-aks-cluster"
  # private = false
}
