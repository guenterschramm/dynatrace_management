resource "dynatrace_document" "Azure_Functions" {
  name      = "Azure Functions"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "18": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 24
        },
        "19": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "24": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "48": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "50": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "69": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "70": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "71": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "72": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "74": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 24
        },
        "75": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "76": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 17
        },
        "77": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 20
        },
        "78": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 17
        },
        "79": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 17
        },
        "80": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 20
        },
        "81": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 34
        }
      },
      "settings": {},
      "tiles": {
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Combines execution time and memory usage into “execution units,” useful for estimating resource consumption and optimizing memory allocation",
          "query": "timeseries {execUnits=avg(cloud.azure.microsoft_web.sites.FunctionExecutionUnits)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(execUnits) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Execution Units",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x",
                  "execUnits"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Seconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1736424704279,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "execUnits",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "19": {
          "content": "### Azure Function Apps\n\nMonitor the health and performance of your Function Apps. Check number and percentage of errors, considering the amount of requests that ended up in actual executions. Regarding usage, look for increases or pattern anomalies to identify potential problems.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"webAppHosting\",\"dt.smartscape.azure_microsoft_web_sites\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {errors5xx=sum(cloud.azure.microsoft_web.sites.Http5xx)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(errors5xx) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "errors5xx"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Count"
              },
              "pointsDisplay": "never",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
            "legend": {
              "ratio": 24
            }
          }
        },
        "3": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Considering 4xx and 5xx errors for all requests",
          "query": "timeseries {errors5xxCount=sum(cloud.azure.microsoft_web.sites.Http5xx),\n            errors4xxCount=sum(cloud.azure.microsoft_web.sites.Http4xx),\n            requests=sum(cloud.azure.microsoft_web.sites.Requests)},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalErrorPercentage = (arraySum(errors5xxCount) + arraySum(errors4xxCount)) / arraySum(requests) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors %",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "totalErrorPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "totalErrorPercentage",
                  "value": 15
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "totalErrorPercentage",
                  "value": 5
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "totalErrorPercentage",
              "sparklineSettings": {
                "isVisible": false,
                "record": "errorPercentage"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1736507560282,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalErrorPercentage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Considering 4xx and 5xx errors for all requests",
          "query": "timeseries {errors5xx=sum(cloud.azure.microsoft_web.sites.Http5xx),\n            errors4xx=sum(cloud.azure.microsoft_web.sites.Http4xx)},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd errorsCount = arraySum(errors5xx) + arraySum(errors4xx)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "errorsCount",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total error count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorsCount",
              "sparklineSettings": {
                "isVisible": false,
                "record": "errors"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737042539397,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorsCount",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "6": {
          "content": "##### Usage and performance",
          "type": "markdown"
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {bytesReceived=sum(cloud.azure.microsoft_web.sites.BytesReceived),\n            bytesSent=sum(cloud.azure.microsoft_web.sites.BytesSent)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd BytesReceived = arraySum(bytesReceived)\n| fieldsAdd BytesSent = arraySum(bytesSent)\n| sort (BytesReceived+BytesSent) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes received vs bytes sent",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "azure.resource.name"
                ],
                "categoryAxisLabel": "Function",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxisLabel": "BytesReceived, BytesSent"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1755767530066,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "BytesReceived",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1755767539702,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "BytesSent",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Amount of memory used by the Function App process",
          "query": "timeseries {memoryWorkingSet=avg(cloud.azure.microsoft_web.sites.MemoryWorkingSet)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(memoryWorkingSet) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Working Set",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Memory"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1755767739905,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "memoryWorkingSet",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "71": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries responseTime=avg(cloud.azure.microsoft_web.sites.HttpResponseTime),\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd AvgResponseTime = arrayAvg(responseTime)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average response time",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgResponseTime",
              "sparklineSettings": {
                "isVisible": false,
                "record": "responseTime"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgResponseTime",
                "suffix": "",
                "unitCategory": "angle"
              }
            ]
          }
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| filter in(toString(id), array($SmartscapeId))\n| filter startsWith(azure.resource.kind, \"function\")\n| filterOut contains(azure.resource.kind, \"workflow\")\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Functions",
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
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "count()",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "instanceCount"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "InstanceCount",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "74": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {responseTime=avg(cloud.azure.microsoft_web.sites.HttpResponseTime)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(responseTime) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Response time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "label": "Seconds"
              },
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1755169899235,
                "baseUnit": "second",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": "second",
                "identifier": "responseTime",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "75": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {errors4xx=sum(cloud.azure.microsoft_web.sites.Http4xx)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(errors4xx) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "errors4xx"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Count"
              },
              "pointsDisplay": "never",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
            "legend": {
              "ratio": 24
            }
          }
        },
        "76": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Requests which ended in any function execution vs all of these requests (considering correct executions, failures and rejections)",
          "query": "timeseries {exec=sum(cloud.azure.microsoft_web.sites.FunctionExecutionCount),\n            req=sum(cloud.azure.microsoft_web.sites.Requests)},\n      by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Executions = arraySum(exec)\n| fieldsAdd Requests = arraySum(req)\n| sort (Executions+Requests) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Executions vs Requests",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "azure.resource.name"
                ],
                "categoryAxisLabel": "Function",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Executions",
                  "Requests"
                ],
                "valueAxisLabel": "Executions, Requests"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1755766525883,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Executions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1755766537822,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Requests",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries errors=sum(cloud.azure.microsoft_web.sites.Http5xx),\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd errorsSum = arraySum(errors)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx errors",
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
                  "field": "errorsSum",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "errorsSum",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorsSum",
              "sparklineSettings": {
                "isVisible": false,
                "record": "executions"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "78": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "All requests (considering correct executions, failures and rejections)",
          "query": "timeseries requests=sum(cloud.azure.microsoft_web.sites.Requests),\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd requestsSum = arraySum(requests)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "requestsSum",
              "sparklineSettings": {
                "isVisible": false,
                "record": "executions"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "requestsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "79": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Out of all the incoming requests, the count of those which ended in any function execution",
          "query": "timeseries executions=sum(cloud.azure.microsoft_web.sites.FunctionExecutionCount),\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd executionsSum = arraySum(executions)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Executions",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "executionsSum",
              "sparklineSettings": {
                "isVisible": false,
                "record": "executions"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "executionsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "80": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries errors=sum(cloud.azure.microsoft_web.sites.Http4xx),\n      filter:{startsWith(azure.resource.kind, \"function\") AND\n              NOT contains(azure.resource.kind, \"workflow\") AND\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd errorsSum = arraySum(errors)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx errors",
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
                  "field": "errorsSum",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "errorsSum",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorsSum",
              "sparklineSettings": {
                "isVisible": false,
                "record": "executions"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "81": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| filter startsWith(azure.resource.kind, \"function\")\n| filterOut contains(azure.resource.kind, \"workflow\")\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-function-apps"
  # private = false
}
