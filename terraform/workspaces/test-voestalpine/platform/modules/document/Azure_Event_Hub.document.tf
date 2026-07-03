resource "dynatrace_document" "Azure_Event_Hub" {
  name      = "Azure Event Hub"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "chart-connections": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "chart-incoming": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "chart-incoming-entity": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 20
        },
        "chart-size": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "chart-size-entity": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 20
        },
        "chart-successful": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "chart-successful-entity": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 20
        },
        "footer": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 25
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
          "x": 12,
          "y": 3
        },
        "kpi-count": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "kpi-failed": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "kpi-incoming": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "kpi-size": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "kpi-successful": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "sec-capacity": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "sec-entity": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
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
        "chart-connections": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Active AMQP connection count per namespace. Approaching the namespace connection limit triggers throttling.",
          "query": "timeseries val = max(cloud.azure.microsoft_eventhub.namespaces.ActiveConnections),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
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
        "chart-incoming": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Incoming publish request rate per Event Hub Namespace. Spikes correlate with upstream data-burst events.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.IncomingRequests),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Incoming Requests by Namespace",
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
        "chart-incoming-entity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Incoming requests broken down by individual Event Hub entity (topic). Identifies which hubs receive the most traffic.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.IncomingRequests),\n  by: {EntityName, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Incoming Requests by Entity",
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
                "EntityName",
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
        "chart-size": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Storage size per Event Hub Namespace over time. Increasing size indicates events are being retained but not processed or expired.",
          "query": "timeseries val = avg(cloud.azure.microsoft_eventhub.namespaces.Size),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Namespace Size by Namespace",
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
        "chart-size-entity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Storage size per individual Event Hub entity. Growing storage in specific entities may indicate retention policy limitations or stalled consumers.",
          "query": "timeseries val = avg(cloud.azure.microsoft_eventhub.namespaces.Size),\n  by: {EntityName, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Size by Entity",
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
                "EntityName",
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
        "chart-successful": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Successful request count per namespace. A widening gap compared to incoming requests signals error or throttling conditions.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.SuccessfulRequests),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful Requests by Namespace",
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
        "chart-successful-entity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Successful requests per Event Hub entity. Identify per-hub success rate by comparing to the incoming requests for the same entity.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.SuccessfulRequests),\n  by: {EntityName, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful Requests by Entity",
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
                "EntityName",
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
        "footer": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "header": {
          "content": "### Azure Event Hub\n\nMonitor Event Hub ingestion throughput, connection counts, namespace size, and request success rates. Throughput units and partition counts drive capacity planning.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"queue\",\"dt.smartscape.azure_microsoft_eventhub_namespaces\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "kpi-connections": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average active AMQP connections across selected Event Hub Namespaces.",
          "query": "timeseries val = max(cloud.azure.microsoft_eventhub.namespaces.ActiveConnections),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = avg(arrayAvg(val))",
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
          "description": "Total number of Event Hub Namespaces matching the current filter selection.",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
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
        "kpi-failed": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Estimated failed requests (incoming minus successful). Any persistent failures warrant investigation of producer connectivity or throttling.",
          "query": "timeseries {total = sum(cloud.azure.microsoft_eventhub.namespaces.IncomingRequests), \n            succ = sum(cloud.azure.microsoft_eventhub.namespaces.SuccessfulRequests)},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd failed = total[]-succ[]\n| summarize Total = sum(arraySum(failed))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failed Requests",
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
              "label": "Failed",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "failed"
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
        "kpi-incoming": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total incoming publish requests to selected Event Hub Namespaces during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.IncomingRequests),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Incoming Requests",
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
        "kpi-size": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total storage consumed across selected Event Hub Namespaces. Monitor against byte retention limits.",
          "query": "timeseries val = avg(cloud.azure.microsoft_eventhub.namespaces.Size),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Namespaces Size",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Size",
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
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "kpi-successful": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total successful Event Hub namespace requests. Compare with incoming to compute the implicit failure rate.",
          "query": "timeseries val = sum(cloud.azure.microsoft_eventhub.namespaces.SuccessfulRequests),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful Requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Successful",
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
        "sec-capacity": {
          "content": "##### Capacity",
          "type": "markdown"
        },
        "sec-entity": {
          "content": "##### Per Event Hub Entity",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_EVENTHUB_NAMESPACES\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-eventhub"
  # private = false
}
