resource "dynatrace_document" "Azure_Key_Vault" {
  name      = "Azure Key Vault"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "chart-4xx-by-instance": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 20
        },
        "chart-5xx-by-instance": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 20
        },
        "chart-avail": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "chart-hits": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "chart-latency": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "chart-latency-by-activity": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "chart-results-by-status": {
          "h": 5,
          "w": 8,
          "x": 0,
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
        "kpi-4xx": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "kpi-5xx": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "kpi-avail": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "kpi-count": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "kpi-hits": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "kpi-latency": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "sec-errors": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "sec-perf": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "sec-traffic": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        }
      },
      "settings": {},
      "tiles": {
        "chart-4xx-by-instance": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Count of 4xx client errors per Key Vault instance. Spike in 4xx typically indicates access policy misconfigurations or certificate/token expiry.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiResult),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    matchesValue(statuscodeclass, \"4xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx Errors by Instance",
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
        "chart-5xx-by-instance": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Count of 5xx server errors per Key Vault instance. Persistent 5xx errors indicate vault service degradation or misconfiguration.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiResult),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    matchesValue(statuscodeclass, \"5xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Errors by Instance",
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
        "chart-avail": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Availability percentage per Key Vault over time. Instances sorted ascending so low-availability vaults appear prominently.",
          "query": "timeseries val = avg(cloud.azure.microsoft_keyvault.vaults.Availability),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability by Instance",
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
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "chart-hits": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total API calls per Key Vault. Sudden spikes or drops indicate unexpected load or application issues.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiHit),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Hits by Instance",
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
        "chart-latency": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average API latency per Key Vault. Spikes indicate throttling, vault overload, or regional network issues.",
          "query": "timeseries val = avg(cloud.azure.microsoft_keyvault.vaults.ServiceApiLatency),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Latency by Instance",
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
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "chart-latency-by-activity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average API latency broken down by activity type (vault vs key/secret operations). Helps identify which operation class is slow.",
          "query": "timeseries val = avg(cloud.azure.microsoft_keyvault.vaults.ServiceApiLatency),\n  by: {activitytype, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Latency by Activity Type",
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
                "activitytype",
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "chart-results-by-status": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "API result counts grouped by HTTP status code class (2xx, 4xx, 5xx). A rising non-2xx portion signals authentication, authorization, or vault issues.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiResult),\n  by: {statuscodeclass, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API Results by Status Code Class",
          "type": "data",
          "visualization": "areaChart",
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
                "statuscodeclass",
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
          "content": "### Azure Key Vault\n\nMonitor availability, latency, and traffic of your Azure Key Vaults. Track API operation results by status code to detect authentication failures, throttling, and vault health degradation early.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"securityIdentity\",\"dt.smartscape.azure_microsoft_keyvault_vaults\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "kpi-4xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total client-side (4xx) error responses from Key Vault APIs. High 4xx rates typically indicate authentication or authorization failures.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiResult),\n  by: {statuscodeclass},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter statuscodeclass == \"4xx\"\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx Errors",
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
                  "value": 10
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "4xx Errors",
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
        "kpi-5xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total server-side (5xx) error responses from Key Vault APIs. Any 5xx errors indicate vault or service degradation.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiResult),\n  by: {statuscodeclass},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter statuscodeclass == \"5xx\"\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Errors",
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
              "label": "5xx Errors",
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
        "kpi-avail": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average availability percentage across all selected Key Vaults. Values below 99.9% should trigger investigation.",
          "query": "timeseries val = avg(cloud.azure.microsoft_keyvault.vaults.Availability),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgAvail = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Availability",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "AvgAvail",
                  "value": 99
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Availability",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgAvail",
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
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgAvail",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "Total number of Azure Key Vaults matching the current filter selection.",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_KEYVAULT_VAULTS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Key Vaults",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Key Vaults",
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
        "kpi-hits": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of API calls made to the selected Key Vaults during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_keyvault.vaults.ServiceApiHit),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total API Hits",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "API Hits",
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
        "kpi-latency": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average API response latency across all selected Key Vaults. Elevated latency can indicate vault throttling or network issues.",
          "query": "timeseries val = avg(cloud.azure.microsoft_keyvault.vaults.ServiceApiLatency),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgLatency = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average API Latency",
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
                  "field": "AvgLatency",
                  "value": 500
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Latency",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgLatency",
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
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgLatency",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "sec-errors": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "sec-perf": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "sec-traffic": {
          "content": "##### Traffic",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_KEYVAULT_VAULTS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_KEYVAULT_VAULTS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_KEYVAULT_VAULTS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_KEYVAULT_VAULTS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-key-vault"
  # private = false
}
