resource "dynatrace_document" "Azure_OpenAI" {
  name      = "Azure OpenAI"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "29": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 12
        },
        "37": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "38": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "39": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 12
        },
        "40": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "41": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "42": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "44": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "46": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "47": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "8": {
          "h": 4,
          "w": 8,
          "x": 4,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure OpenAI\n\nThis dashboard provides an overview of Azure OpenAI focused on its availability, latency and usage for both deployment kinds Azure OpenAI and Foundry (AIServices). Monitor activity and reliability across Azure OpenAI multimodal models, identify performance hotspots, and compare service kinds and deployments to understand trends.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"artificialIntelligence\",\"dt.smartscape.azure_microsoft_cognitiveservices_accounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries tt = sum(cloud.azure.microsoft_cognitiveservices.accounts.TotalTokens)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd TotalTokens = arraySum(tt)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total tokens",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "QueryTreeIcon",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1762162377611,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "TotalTokens",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "29": {
          "content": "##### Latency",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries ttr = avg(cloud.azure.microsoft_cognitiveservices.accounts.AzureOpenAITimeToResponse),\n                 by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(ttr) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to response",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1770903439056,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ttr",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "timeseries av = max(cloud.azure.microsoft_cognitiveservices.accounts.AzureOpenAIAvailabilityRate),\nby: {azure.resource.kind}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize arrayLast(takeLast(av)), by: {azure.resource.kind}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability rate by kind",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1770897685208,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arrayLast(takeLast(av))",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "38": {
          "content": "##### Usage",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries ttl = avg(cloud.azure.microsoft_cognitiveservices.accounts.AzureOpenAITTLTInMS),\n                 by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(ttl) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to last token",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1762162377611,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ttl",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries tokens = sum(cloud.azure.microsoft_cognitiveservices.accounts.ProcessedPromptTokens),\n                 by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(tokens) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Processed prompt tokens",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries tokens = sum(cloud.azure.microsoft_cognitiveservices.accounts.GeneratedTokens),\n                 by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(tokens) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generated tokens",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries tps = avg(cloud.azure.microsoft_cognitiveservices.accounts.AzureOpenAITokenPerSecond),\n                 by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(tps) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tokens per second",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries tokens = sum(cloud.azure.microsoft_cognitiveservices.accounts.TotalTokens),\n                 by:{modelname},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(tokens) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total tokens by model",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "modelname"
              ]
            }
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries ttr = avg(cloud.azure.microsoft_cognitiveservices.accounts.AzureOpenAITimeToResponse),\n                 by:{modelname},\n                 filter:{in(azure.subscription, array($Subscription)) AND\n                         in(azure.location, array($Location)) AND\n                         in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(ttr) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to response by model",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "modelname"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1770903439056,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ttr",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "47": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COGNITIVESERVICES_ACCOUNTS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=count(), by: {azure.resource.kind}\n| sort count desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances by kind",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
            },
            "legend": {
              "ratio": 38
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COGNITIVESERVICES_ACCOUNTS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COGNITIVESERVICES_ACCOUNTS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COGNITIVESERVICES_ACCOUNTS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COGNITIVESERVICES_ACCOUNTS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-openai"
  # private = false
}
