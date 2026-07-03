resource "dynatrace_document" "Azure_Overview" {
  name      = "Azure Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 10
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "14": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 10
        },
        "15": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 10
        },
        "19": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 23
        },
        "2": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 10
        },
        "22": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 23
        },
        "26": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 23
        },
        "29": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 15
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 3
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
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 28
        },
        "40": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 28
        },
        "42": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 28
        },
        "43": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 28
        },
        "44": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "45": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 35
        },
        "46": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 35
        },
        "47": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 35
        },
        "48": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 35
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
          "y": 15
        },
        "50": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
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
          "y": 33
        },
        "53": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 23
        },
        "54": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 42
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 15
        },
        "9": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
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
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| parse azure.object, \"JSON:json\"\n| fields instanceSize = json[configuration][properties][hardwareProfile][vmSize]\n| summarize  count=count(), by: {instanceSize}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 VM instance sizes",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "sku",
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
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| summarize  count=count(), by: {azure.subscription}\n| sort count desc\n| limit 10",
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
                "categoryAxisLabel": "azure.subscripton",
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
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| summarize  count=count()",
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
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| summarize  count=count()",
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
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| summarize  count=count(), by: {azure.location}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 locations running VM",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "region",
                  "azure.location"
                ],
                "categoryAxisLabel": "region",
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
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| summarize  count=count(), by: {azure.subscription}\n| sort count desc\n| limit 10",
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
                "categoryAxisLabel": "azure.subscripton",
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
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.azure.microsoft_compute.virtualmachinescalesets.PercentageCPU),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| fieldsAdd lastMaxCPU = arrayMax(max)\n| sort lastMaxCPU desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Utilization",
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.azure.microsoft_compute.virtualmachines.PercentageCPU),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| fieldsAdd lastMaxCPU = arrayMax(max)\n| sort lastMaxCPU desc\n| limit 100",
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
          "query": "fetch dt.davis.problems\n|filter in(\"azure\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count()",
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
          "query": "fetch dt.davis.problems\n|filter in(\"azure\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {cloud.region[0]}",
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
          "query": "fetch dt.davis.problems\n|filter in(\"azure\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {event.name}\n| fieldsRename problem = event.name",
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
          "query": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS\"\n| summarize  count=count()",
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS\"\n| summarize  count=count(), by: {azure.subscription}\n| sort count desc\n| limit 10",
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
                "categoryAxisLabel": "azure.subscripton",
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
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.azure.microsoft_app.containerapps.UsageNanoCores),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| fieldsAdd lastMaxCPU = arrayMax(max)\n| sort lastMaxCPU desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage (nanocores)",
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
          "query": "timeseries sum = sum(cloud.azure.microsoft_app.containerapps.RxBytes),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| fieldsAdd sumNetworkBytes = arraySum(sum)\n| sort sumNetworkBytes desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network in (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AZURE_MICROSOFT_SQL_SERVERS_DATABASES\")\n  OR startsWith(type, \"AZURE_MICROSOFT_CACHE_REDIS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\")\n| summarize count= count(), by: {type}",
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AZURE_MICROSOFT_STORAGE_STORAGEACCOUNTS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_COMPUTE_DISKS\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AZURE_MICROSOFT_WEB_SITES\")\n  OR startsWith(type, \"AZURE_MICROSOFT_DEVICES_IOTHUBS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES_EVENTHUBS\")\n| summarize count= count(), by: {type}",
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AZURE_MICROSOFT_NETWORK_LOADBALANCERS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_NETWORK_APPLICATIONGATEWAYS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_NETWORK_NATGATEWAYS\")\n  OR startsWith(type, \"AZURE_MICROSOFT_NETWORK_PUBLICIPADDRESSES\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Networking",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
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
          "content": "### Azure overview\nExplore the resource utilization distribution across all your Azure instances.  If you don't see data, [start monitoring your cloud resources](/ui/apps/dynatrace.clouds/overview/service/all).\n\n-----",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum = sum(cloud.azure.microsoft_compute.virtualmachines.NetworkInTotal),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| sort arraySum(sum) desc\n| limit 10",
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
                  "sum"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.NetworkInTotal),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| fieldsAdd lastMaxCPU = arraySum(sum)\n| sort lastMaxCPU desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network in (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
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
        "54": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum = sum(cloud.azure.microsoft_compute.virtualmachines.NetworkOutTotal),\n            by: {azure.resource.name, azure.subscription, azure.location, dt.smartscape_source.id}\n| sort arraySum(sum) desc\n| limit 10",
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
                  "sum"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
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
  custom_id = "dynatrace.clouds.azure-overview"
  # private = false
}
