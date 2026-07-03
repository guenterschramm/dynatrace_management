resource "dynatrace_document" "Azure_Service_Bus_Namespace" {
  name      = "Azure Service Bus Namespace"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "chart-active": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 14
        },
        "chart-bytes-io": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 26
        },
        "chart-connections": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 26
        },
        "chart-cpu": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "chart-dlq": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 14
        },
        "chart-incoming": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "chart-memory": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 32
        },
        "chart-outgoing": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "chart-server-errors": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 20
        },
        "chart-size": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 14
        },
        "chart-throttled": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 20
        },
        "chart-user-errors": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 20
        },
        "footer": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "header": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "kpi-connections": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "kpi-count": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "kpi-dlq": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "kpi-incoming": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "kpi-outgoing": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "kpi-server-errors": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "sec-bytes": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "sec-errors": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "sec-messages": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "sec-premium": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "sec-throughput": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        }
      },
      "settings": {},
      "tiles": {
        "chart-active": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average number of active (unprocessed) messages per namespace. Persistent growth indicates consumer lag.",
          "query": "timeseries val = avg(cloud.azure.microsoft_servicebus.namespaces.ActiveMessages),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Messages by Namespace",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-bytes-io": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Incoming and outgoing bytes per Service Bus Namespace. Large asymmetry between bytesIn and bytesOut may indicate a processing bottleneck.",
          "query": "timeseries {bytesIn = sum(cloud.azure.microsoft_servicebus.namespaces.IncomingBytes), bytesOut = sum(cloud.azure.microsoft_servicebus.namespaces.OutgoingBytes)},\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(bytesIn) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Bytes by Namespace",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytesIn",
                  "bytesOut"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "bytesIn",
                "bytesOut"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesIn",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1741737600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesOut",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "chart-connections": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Active AMQP connections per namespace over time. Sudden drops indicate mass client disconnection events.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.ActiveConnections),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Connections by Namespace",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-cpu": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "CPU utilization percentage for Premium-tier namespaces. Sustained high CPU may require scaling up messaging units.",
          "query": "timeseries val = max(cloud.azure.microsoft_servicebus.namespaces.NamespaceCpuUsage),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id, Replica},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage percentage (Premium)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
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
        "chart-dlq": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Dead-lettered message count per namespace. Growing dead-letter queues signal consumer failures or poison messages requiring immediate attention.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.DeadletteredMessages),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Dead-lettered Messages by Namespace",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-incoming": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Incoming message rate per Service Bus Namespace. Compare with outgoing to detect processing backlogs.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.IncomingMessages),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Incoming Messages by Namespace",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-memory": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Memory (working set) utilization for Premium-tier namespaces. High memory usage combined with elevated DLQ counts indicates CPU and memory pressure.",
          "query": "timeseries val = max(cloud.azure.microsoft_servicebus.namespaces.NamespaceMemoryUsage),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id, Replica},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage percentage (Premium)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
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
        "chart-outgoing": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Outgoing message rate per Service Bus Namespace. A rate significantly below incoming indicates consumer lag or processing issues.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.OutgoingMessages),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Outgoing Messages by Namespace",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-server-errors": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Service Bus service-side errors per namespace. Persistent server errors indicate platform-level problems requiring Azure support escalation.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.ServerErrors),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Server Errors by Namespace",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
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
        "chart-size": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Current storage size of the namespace. Monitor against quota limits to avoid disruption when capacity is exhausted.",
          "query": "timeseries val = avg(cloud.azure.microsoft_servicebus.namespaces.Size),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Namespace Size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
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
        "chart-throttled": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Throttled request count per namespace. Throttling indicates the namespace has reached its messaging unit capacity limit.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.ThrottledRequests),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throttled Requests by Namespace",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
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
        "chart-user-errors": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Client-originated errors per namespace (e.g. bad requests, unauthorized). Elevated user errors suggest application-level misconfigurations or expired tokens.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.UserErrors),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "User Errors by Namespace",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
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
        "footer": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "header": {
          "content": "### Azure Service Bus Namespace\n\nMonitor messaging throughput, dead-letter queues, errors, and throttling for Azure Service Bus Namespaces (Standard and Premium tiers). Dead-lettered messages and throttled requests are the top incident signals. Premium-tier CPU and memory metrics are included at the bottom.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"queue\",\"dt.smartscape.azure_microsoft_servicebus_namespaces\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "kpi-connections": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total active AMQP connections across selected namespaces. Sudden drops indicate client disconnections or network disruptions.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.ActiveConnections),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Connections",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Connections",
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
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-count": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of Azure Service Bus Namespaces matching the current filter selection.",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_SERVICEBUS_NAMESPACES\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
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
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Namespaces",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false,
                "record": "count"
              },
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "kpi-dlq": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total dead-lettered messages across namespaces. Growing counts indicate consumer failures or poison-message patterns that disrupt processing.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.DeadletteredMessages),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Dead-lettered Messages",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "Total",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 100
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Dead-lettered",
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
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-incoming": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total messages received by the selected Service Bus Namespaces during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.IncomingMessages),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Incoming Messages",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Incoming",
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
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-outgoing": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total messages delivered by the selected Service Bus Namespaces during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.OutgoingMessages),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Outgoing Messages",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Outgoing",
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
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-server-errors": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total Service Bus service-side errors. Any server errors indicate platform degradation that may impact message delivery.",
          "query": "timeseries val = sum(cloud.azure.microsoft_servicebus.namespaces.ServerErrors),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Server Errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Server Errors",
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
                "added": 1741737600000,
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
        "sec-bytes": {
          "content": "##### Network",
          "type": "markdown"
        },
        "sec-errors": {
          "content": "##### Errors \u0026 Throttling",
          "type": "markdown"
        },
        "sec-messages": {
          "content": "##### Messages \u0026 Capacity",
          "type": "markdown"
        },
        "sec-premium": {
          "content": "##### Premium Tier - Resource Utilization",
          "type": "markdown"
        },
        "sec-throughput": {
          "content": "##### Throughput",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_SERVICEBUS_NAMESPACES\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_SERVICEBUS_NAMESPACES\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_SERVICEBUS_NAMESPACES\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_SERVICEBUS_NAMESPACES\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-servicebus"
  # private = false
}
