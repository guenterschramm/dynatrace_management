resource "dynatrace_document" "Classic_Azure_overview" {
  name      = "Classic Azure overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 18
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "14": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 18
        },
        "16": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 35
        },
        "19": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 31
        },
        "2": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 18
        },
        "20": {
          "h": 4,
          "w": 5,
          "x": 3,
          "y": 35
        },
        "22": {
          "h": 4,
          "w": 5,
          "x": 3,
          "y": 31
        },
        "24": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 35
        },
        "26": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 31
        },
        "27": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "29": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 23
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "32": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 31
        },
        "33": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "34": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "35": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "36": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "39": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 39
        },
        "40": {
          "h": 4,
          "w": 5,
          "x": 3,
          "y": 39
        },
        "41": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 35
        },
        "42": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 39
        },
        "43": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 39
        },
        "44": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "45": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 45
        },
        "46": {
          "h": 6,
          "w": 6,
          "x": 6,
          "y": 45
        },
        "47": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 45
        },
        "48": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 45
        },
        "49": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "5": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "50": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "51": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "52": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "53": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "54": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 23
        },
        "9": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Lists the top 10 most commonly used VM sizes in the environment. ",
          "query": "fetch dt.entity.azure_vm\n\n| parse azureVmSize, \"\"\"'{' KVP{LD:key '=' (INT|LONG|[0-9]{1,}|LD):value (', '|'}')}{1,}:size\"\"\"\n\n| fieldsAdd sku = size[label]\n\n| summarize count = count(), by: {sku}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 VM Sizes",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "sku",
                "categoryAxisLabel": "sku",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "10": {
          "content": "### Other compute resources\n",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the top 10 Azure subscriptions hosting the highest number of VMs.",
          "query": "fetch dt.entity.azure_vm\n\n| fieldsadd azure_subscription = accessible_by[dt.entity.azure_subscription][0]\n\n| lookup [ fetch dt.entity.azure_subscription | fieldsAdd name = entity.name, uuid = azureSubscriptionUuid ], sourceField:azure_subscription, lookupField:id, prefix:\"azure.subscription.\" \n\n| fieldsRemove azure.subscription.entity.name, azure.subscription.id, azure_subscription\n\n| fieldsRename azure.subscription.id = azure.subscription.uuid\n\n| fieldsAdd azure.subscription = concat(azure.subscription.name, \" (\", azure.subscription.id, \")\")\n\n| summarize count = count(), by: {azure.subscription}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 VM by Azure Subscription",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.subscription",
                "categoryAxisLabel": "azure.subscription",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total number of active Azure Virtual Machines (VMs) in the environment. ",
          "query": "fetch dt.entity.azure_vm\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure VM's",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total number of active Azure Kubernetes Service (AKS) clusters in the environment. ",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:azure:containerservice:managedcluster\"\n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure Kubernetes Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
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
            "thresholds": []
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total number of active Azure Virtual Machine Scale Sets (VMSS) in the environment. ",
          "query": "fetch dt.entity.azure_vm_scale_set \n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "VM Scale Sets",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
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
            "thresholds": []
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the top 10 Azure regions hosting the highest number of VMs. ",
          "query": "fetch dt.entity.azure_vm\n\n| fieldsAdd subscription = arrayFirst(accessible_by[dt.entity.azure_subscription])\n\n| lookup sourceField: subscription, lookupField: id, fields: {environment}, [ fetch dt.entity.azure_subscription | fields id, environment = entity.name ]\n\n| fieldsAdd region_id = belongs_to[dt.entity.azure_region]\n\n| lookup sourceField: region_id, lookupField: id, fields: {region}, [ fetch dt.entity.azure_region | fields id, region = entity.name ]\n\n| summarize count = count(), by: {region}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 regions with Azure VM",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "region",
                "categoryAxisLabel": "region",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the top 10 Azure subscriptions hosting the most AKS clusters. ",
          "query": "fetch dt.entity.custom_device\n\n| filter entity.type == \"cloud:azure:containerservice:managedcluster\"\n\n| fieldsadd azure_subscription = belongs_to[dt.entity.azure_subscription]\n\n| lookup [ fetch dt.entity.azure_subscription | fieldsAdd name = entity.name, uuid = azureSubscriptionUuid ], sourceField:azure_subscription, lookupField:id, prefix:\"azure.subscription.\"\n\n| fieldsRemove azure.subscription.entity.name, azure.subscription.id, azure_subscription\n\n| fieldsRename azure.subscription.id = azure.subscription.uuid\n\n| fieldsAdd azure.subscription = concat(azure.subscription.name, \" (\", azure.subscription.id, \")\")\n\n| summarize count = count(), by: {azure.subscription}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10  AKS subscriptions",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "azure.subscription"
                ],
                "categoryAxisLabel": "azure.subscription",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the top 10 Azure subscriptions hosting the highest number of VM Scale Sets.",
          "query": "fetch dt.entity.azure_vm_scale_set\n\n| fieldsadd azure_subscription = accessible_by[dt.entity.azure_subscription][0]\n\n| lookup [ fetch dt.entity.azure_subscription | fieldsAdd name = entity.name, uuid = azureSubscriptionUuid ], sourceField:azure_subscription, lookupField:id, prefix:\"azure.subscription.\" \n\n| fieldsRemove azure.subscription.entity.name, azure.subscription.id, azure_subscription\n\n| fieldsRename azure.subscription.id = azure.subscription.uuid\n\n| fieldsAdd azure.subscription = concat(azure.subscription.name, \" (\", azure.subscription.id, \")\")\n\n| summarize count = count(), by: {azure.subscription}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10  VM Scale Sets subscriptions",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.subscription",
                "categoryAxisLabel": "azure.subscription",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Monitors the memory (in GB) available per AKS cluster over time. ",
          "query": "timeseries max = max(cloud.azure.microsoft_containerservice.managedclusters.kube_node_status_allocatable_memory_bytes), by: {dt.entity.custom_device}\n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure Kubernetes Service: Memory available / cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the CPU utilization percentage for each VM Scale Set over time.",
          "query": "timeseries max = max(dt.cloud.azure.vm_scale_set.cpu_usage), by: {dt.entity.azure_vm_scale_set}\n\n| lookup [ fetch dt.entity.azure_vm_scale_set | fieldsAdd name = entity.name ], sourceField:`dt.entity.azure_vm_scale_set`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "VM Scale Sets CPU Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "description": "Displays a breakdown of Azure Monitor error logs grouped by service. ",
          "query": "fetch logs\n\n| filter (cloud.provider == \"azure\" or cloud.provider == \"Azure\") and in(loglevel, array(\"ERROR\", \"WARNING\"))\n\n| summarize count(), by: {bin(timestamp, 5min), azure.resource.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure Monitor error logs by service",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "bin(timestamp, 5m)"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "description": "A hexagonal heatmap representing CPU utilization across Azure VMs. Each hexagon corresponds to a VM, with colors indicating the level of CPU usage, from low (green) to high (red).",
          "query": "timeseries max = max(dt.cloud.azure.vm.cpu_usage), by: {dt.entity.azure_vm}\n\n| lookup [ fetch dt.entity.azure_vm | fieldsAdd name = entity.name ], sourceField:`dt.entity.azure_vm`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd lastMaxCPU = toLong(arrayLast(max))\n\n| sort lastMaxCPU desc \n\n| fieldsKeep timeframe, lastMaxCPU, max, azure.resource.name\n\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "VM CPU utilization",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorPalette": "red-green",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "comparator": "=",
                  "id": 0,
                  "value": ""
                }
              ],
              "dataMappings": {
                "value": "lastMaxCPU"
              },
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "description": "Displays the total number of active problems detected by Davis, Dynatrace's AI engine. This chart provides a quick snapshot of the current health of your monitored environment. A value of \"0\" indicates no active issues requiring attention.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"azure\") \n  | sort `event.status` asc, `event.start` desc\n  | summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active Problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Monitors the total incoming network traffic (in bytes) for VM Scale Sets over time. ",
          "query": "timeseries max = max(dt.cloud.azure.vm_scale_set.network.bytes_in), by: {dt.entity.azure_vm_scale_set}\n\n| lookup [ fetch dt.entity.azure_vm_scale_set | fieldsAdd name = entity.name ], sourceField:`dt.entity.azure_vm_scale_set`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "VM Scale Sets Network In Total (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the most recent logs collected from Azure Monitor.",
          "query": "fetch logs\n\n| filter (cloud.provider == \"azure\" or cloud.provider == \"Azure\") and in(loglevel, array(\"ERROR\", \"WARNING\"))\n\n| fieldsKeep azure.subscription, azure.location, azure.resource.type, loglevel, content, timestamp\n\n| sort timestamp desc\n\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latest logs",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1725278083637,
                  "value": "log-content"
                }
              ]
            },
            "thresholds": []
          }
        },
        "34": {
          "content": "### Azure Monitor logs",
          "type": "markdown"
        },
        "35": {
          "content": "### Davis problems",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Breaks down active problems by geographic region, helping identify areas with recurring or localized issues.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"azure\") \n  | sort `event.status` asc, `event.start` desc\n  | summarize count(), by: {cloud.region[0]}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Problems by region",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "cloud.region[0]",
                "categoryAxisLabel": "cloud.region[0]",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Provides information about currently active problems types.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"azure\") \n  | sort `event.status` asc, `event.start` desc\n  | summarize count(), by:{problem=event.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active problem details",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "problem",
                "categoryAxisLabel": "problem",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "number-of-slices"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total number of Azure Container Apps in the environment.",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:azure:app:containerapps\"\n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure Container Apps",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
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
            "thresholds": []
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the top 10 Azure subscriptions hosting the most container apps.",
          "query": "fetch dt.entity.custom_device\n\n| filter entity.type == \"cloud:azure:app:containerapps\"\n\n| fieldsadd azure_subscription = belongs_to[dt.entity.azure_subscription]\n\n| lookup [ fetch dt.entity.azure_subscription | fieldsAdd name = entity.name, uuid = azureSubscriptionUuid ], sourceField:azure_subscription, lookupField:id, prefix:\"azure.subscription.\"\n\n| fieldsRemove azure.subscription.entity.name, azure.subscription.id, azure_subscription \n\n| fieldsRename azure.subscription.id = azure.subscription.uuid\n\n| fieldsAdd azure.subscription.label = concat(azure.subscription.name, \" (\", azure.subscription.id, \")\")\n\n| summarize count = count(), by: {azure.subscription.label}\n\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 Container Apps subscriptions",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "azure.subscription.label"
                ],
                "categoryAxisLabel": "azure.subscription",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the number of CPU cores available per AKS cluster over time.",
          "query": "timeseries max = max(cloud.azure.microsoft_containerservice.managedclusters.kube_node_status_allocatable_cpu_cores), by: {dt.entity.custom_device}\n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Azure Kubernetes Service: CPU cores available / cluster",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the CPU usage for individual Azure Container Apps over time. ",
          "query": "timeseries max = max(cloud.azure.microsoft_app.containerapps.usagenanocores), by: {dt.entity.custom_device}\n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Container apps CPU usage / resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Monitors the incoming network traffic (in bytes) for individual Azure Container Apps over time. ",
          "query": "timeseries max = max(cloud.azure.microsoft_app.containerapps.rxbytes), by: {dt.entity.custom_device}\n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Container apps Network in bytes / resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "44": {
          "content": "### Non compute resources\n",
          "type": "markdown"
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the distribution of database resources in the environment, such as Azure SQL Server.",
          "query": "fetch dt.entity.azure_sql_server | fieldsAdd  azure.resource.type = \"Azure SQL Server\"\n| append [ fetch dt.entity.azure_sql_database | fieldsAdd  azure.resource.type = \"Azure SQL Database\"]\n| append [ fetch dt.entity.azure_sql_elastic_pool | fieldsAdd  azure.resource.type = \"Azure SQL Elastic Pool\"]\n| append [ fetch dt.entity.azure_cosmos_db | fieldsAdd  azure.resource.type = \"Azure Cosmos DB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:sql:servers:elasticpools:vcore\" | fieldsAdd  azure.resource.type = \"Azure SQL Elastic Pool\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:sql:servers:elasticpools:dtu\" | fieldsAdd  azure.resource.type = \"Azure SQL Elastic Pool\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:documentdb:databaseaccounts:global\" | fieldsAdd  azure.resource.type = \"Azure Cosmos DB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:documentdb:databaseaccounts:mongo\" | fieldsAdd  azure.resource.type = \"Azure Cosmos DB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:sql:servers\" | fieldsAdd  azure.resource.type = \"Azure SQL Server\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:sql:servers:databases:vcore\" | fieldsAdd  azure.resource.type = \"Azure SQL Database\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:sql:servers:databases:dtu\" | fieldsAdd  azure.resource.type = \"Azure SQL Database\"]\n| summarize count= count(), by: {azure.resource.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Databases",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.resource.type",
                "categoryAxisLabel": "azure.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Represents the total number of Azure Storage Accounts in the environment.",
          "query": "fetch dt.entity.azure_storage_account | fieldsAdd  azure.resource.type = \"Storage Accounts\"\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:storage:storageaccounts\" | fieldsAdd  azure.resource.type = \"Storage Accounts\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:classic_storage_account\" | fieldsAdd  azure.resource.type = \"Classic Storage Accounts\"]\n| summarize count= count(), by: {azure.resource.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage Accounts",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.resource.type",
                "categoryAxisLabel": "azure.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Visualizes the distribution of serverless resources, such as App Service Plans, Function Apps, Web App Deployment Slots, and Web Apps.",
          "query": "fetch dt.entity.azure_function_app | fieldsAdd  azure.resource.type = \"Function App\"\n| append [ fetch dt.entity.azure_web_app | fieldsAdd  azure.resource.type = \"Web Apps\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:web:serverfarms\" | fieldsAdd  azure.resource.type = \"App Service Plan\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:web:functionslots\" | fieldsAdd  azure.resource.type = \"Web App Deployment Slot\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:web:appslots\" | fieldsAdd  azure.resource.type = \"Function App Deployment Slot\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:app:containerapps\" | fieldsAdd  azure.resource.type = \"Container Apps\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:containerinstance:containergroup\" | fieldsAdd  azure.resource.type = \"Container Instance\"]\n| summarize count= count(), by: {azure.resource.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Serverless",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.resource.type",
                "categoryAxisLabel": "azure.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays data about network devices in the environment. Currently, no records are available. ",
          "query": "fetch dt.entity.azure_application_gateway | fieldsAdd  azure.resource.type = \"Application Gateway\"\n| append [ fetch dt.entity.azure_api_management_service | fieldsAdd azure.resource.type = \"API Management\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:applicationgateways\" | fieldsAdd  azure.resource.type = \"Application Gateway\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:azurefirewalls\" | fieldsAdd  azure.resource.type = \"Azure Firewall\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:dnszones\" | fieldsAdd  azure.resource.type = \"DNS Zone\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:expressroutecircuits\" | fieldsAdd  azure.resource.type = \"ExpressRoute Circuit\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:frontdoor\" | fieldsAdd  azure.resource.type = \"Front Door (classic)\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:loadbalancers:basic\" | fieldsAdd  azure.resource.type = \"Basic Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:loadbalancers:gateway\" | fieldsAdd  azure.resource.type = \"Gateway Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:loadbalancers:standard\" | fieldsAdd  azure.resource.type = \"Standard Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:privatednszones\" | fieldsAdd  azure.resource.type = \"Private DNS Zone\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:network:publicipAddress\" | fieldsAdd  azure.resource.type = \"Public IP Address\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:traffic_manager_profile\" | fieldsAdd  azure.resource.type = \"Traffic Manager Profile\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:azure:virtual_network_gateway\" | fieldsAdd  azure.resource.type = \"Virtual Network Gateway\"]\n| summarize count= count(), by: {azure.resource.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network devices",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "azure.resource.type",
                "categoryAxisLabel": "azure.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "49": {
          "content": "### Classic Azure overview\nExplore the resource utilization distribution across all your Azure instances.  If you don't see data, [start monitoring your cloud resources](/ui/apps/dynatrace.clouds/overview/service/all) or [explore this dashboard in our Playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.kubernetes.kubernetes-persistent-volumes)\n\n-----",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the total incoming network traffic (in bytes) for Azure VMs over time.",
          "query": "timeseries max = max(dt.cloud.azure.vm.network.bytes_in), by: {dt.entity.azure_vm}\n\n| lookup [ fetch dt.entity.azure_vm | fieldsAdd name = entity.name ], sourceField:`dt.entity.azure_vm`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: VM Network In Total (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "50": {
          "content": " ",
          "type": "markdown"
        },
        "51": {
          "content": " ",
          "type": "markdown"
        },
        "52": {
          "content": " ",
          "type": "markdown"
        },
        "53": {
          "content": " ",
          "type": "markdown"
        },
        "54": {
          "content": "### Additional information\n* To learn more about Azure monitoring visit dedicated [Docs](https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/cloud-platform-monitoring/azure-monitoring)\n* For more information about Davis® problems, visit Dynatrace [Docs](https://docs.dynatrace.com/docs/discover-dynatrace/platform/davis-ai)\n* Information about setting up data ingestion from Azure can be found in [Ingest data from Azure](https://docs.dynatrace.com/docs/ingest-from/microsoft-azure-services)\n",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the total outgoing network traffic (in bytes) for Azure VMs over time.",
          "query": "timeseries max = max(dt.cloud.azure.vm.network.bytes_out), by: {dt.entity.azure_vm}\n\n| lookup [ fetch dt.entity.azure_vm | fieldsAdd name = entity.name ], sourceField:`dt.entity.azure_vm`, lookupField:id, prefix:\"azure.resource.\"\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, azure.resource.name\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: VM Network Out Total (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "9": {
          "content": "### Azure Virtual Machines",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 26
    })
  custom_id = "dynatrace.clouds.Azure-overview-classic"
  # private = false
}
