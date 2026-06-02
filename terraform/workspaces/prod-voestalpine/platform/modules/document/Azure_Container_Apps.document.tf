resource "dynatrace_document" "Azure_Container_Apps" {
  name      = "Azure Container Apps"
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
        "13": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 44
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 7
        },
        "19": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "21": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 53
        },
        "22": {
          "h": 5,
          "w": 13,
          "x": 11,
          "y": 54
        },
        "28": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "30": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "32": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "33": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "34": {
          "h": 4,
          "w": 21,
          "x": 3,
          "y": 40
        },
        "35": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "36": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "38": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 7
        },
        "50": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 48
        },
        "52": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "54": {
          "h": 4,
          "w": 21,
          "x": 3,
          "y": 44
        },
        "55": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "56": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 40
        },
        "57": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 12
        },
        "58": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 12
        },
        "59": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "60": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 59
        },
        "7": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "8": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "9": {
          "h": 5,
          "w": 11,
          "x": 0,
          "y": 54
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Azure Container Apps\n\nGet an overview of the utilization of your containers. Look out for spikes in CPU and memory utilization and keep track of network traffic.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"container\",\"dt.smartscape.azure_microsoft_app_containerapps\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_app.containerapps.TxBytes,\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n)\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tx Total",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1755591202456,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x=max(cloud.azure.microsoft_app.containerapps.Requests),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}\n| sort arrayMax(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Max Requests by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "data-max"
                },
                "min": {
                  "mode": "data-min"
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": []
          }
        },
        "19": {
          "content": "#### Memory Performance",
          "type": "markdown"
        },
        "21": {
          "content": "#### Infrastructure Health",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries y = max(cloud.azure.microsoft_app.containerapps.RestartCount),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayMax(y) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Replica Restarts by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.azure.microsoft_app.containerapps.CpuPercentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Utilization [%]",
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
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.azure.microsoft_app.containerapps.MemoryPercentage),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Utilization [%]",
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
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x=sum(cloud.azure.microsoft_app.containerapps.Requests),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: { (statuscodecategory == \"5xx\" OR statuscodecategory == \"4xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          (in(azure.resource.group, array($ResourceGroup))) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total HTTP Errors",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "field": "y",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "recordField": "y"
            },
            "unitsOverrides": []
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries requests=sum(cloud.azure.microsoft_app.containerapps.Requests,\n    filter: {\n    in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          (in(azure.resource.group, array($ResourceGroup)))}),\n  errors=sum(cloud.azure.microsoft_app.containerapps.Requests, filter: {\n    (statuscodecategory == \"4xx\" OR statuscodecategory == \"5xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))})\n  | fieldsAdd y = if(arraySum(requests) == 0, 0, else: arraySum(errors)/arraySum(requests) * 100)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP Error Rate",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "y",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1754914661646,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
            },
            "enabled": false
          },
          "query": "timeseries received = avg(cloud.azure.microsoft_app.containerapps.RxBytes),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(received) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Received Bytes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1755696798953,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "35": {
          "content": "#### HTTP Insights",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x=sum(cloud.azure.microsoft_app.containerapps.Requests, filter: { statuscodecategory == \"5xx\" AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          (in(azure.resource.group, array($ResourceGroup)))}\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP 5xx Errors",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "y",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "recordField": "y"
            },
            "unitsOverrides": [
              {
                "added": 1757075442380,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x=sum(cloud.azure.microsoft_app.containerapps.Requests, filter: { statuscodecategory == \"4xx\" AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          (in(azure.resource.group, array($ResourceGroup)))}\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP 4xx Errors",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "y",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "recordField": "y"
            },
            "unitsOverrides": []
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { errors = max(cloud.azure.microsoft_app.containerapps.Requests),\n  filter: {\n    (statuscodecategory == \"5xx\" OR statuscodecategory == \"4xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}}\n| sort arrayMax(errors) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "HTTP Errors by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "scale": "log"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            }
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_app.containerapps.ResiliencyRequestsPendingConnectionPool),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          (in(azure.resource.group, array($ResourceGroup))) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pending Connection Pool Requests",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.azure.microsoft_app.containerapps.ResponseTime),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n  | fieldsAdd y = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Average Latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "recordField": "y"
            },
            "unitsOverrides": [
              {
                "added": 1755608627203,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries transmitted = avg(cloud.azure.microsoft_app.containerapps.TxBytes),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(transmitted) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transmitted Bytes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.azure.microsoft_app.containerapps.ResiliencyRequestRetries),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Request Retries",
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
                "added": 1755608627203,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_app.containerapps.RxBytes,\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n)\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Rx Total",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1755591202456,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { errors = max(cloud.azure.microsoft_app.containerapps.Requests),\n  filter: {\n    (statuscodecategory == \"4xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}}\n| sort arrayMax(errors) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "HTTP 4xx Errors by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "scale": "log"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { errors = max(cloud.azure.microsoft_app.containerapps.Requests),\n  filter: {\n    (statuscodecategory == \"5xx\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}}\n| sort arrayMax(errors) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "HTTP 5xx Errors by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "scale": "log"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 22
            }
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries responseTime = avg(cloud.azure.microsoft_app.containerapps.ResponseTime),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}\n| sort arrayAvg(responseTime) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Latency by Resource",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "scale": "log"
              }
            },
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
                "added": 1757418028770,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errors",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1757418090300,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "responseTime",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "6": {
          "content": "#### CPU Performance",
          "type": "markdown"
        },
        "60": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "7": {
          "content": "#### Network Health",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_app.containerapps.Requests),\n  filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n  | fieldsAdd y = arraySum(x)\n  | summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Requests count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "recordField": "y",
              "sparklineSettings": {
                "record": "x"
              },
              "trend": {
                "isRelative": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1755178904729,
                "baseUnit": "one",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "amount"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries y=max(cloud.azure.microsoft_app.containerapps.Replicas),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayMax(y) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Active Replicas by Resource",
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
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS*\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS*\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APP_CONTAINERAPPS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-containerapps"
  # private = false
}
