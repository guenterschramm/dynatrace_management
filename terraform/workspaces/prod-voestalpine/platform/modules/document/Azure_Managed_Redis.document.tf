resource "dynatrace_document" "Azure_Managed_Redis" {
  name      = "Azure Managed Redis"
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
        "1": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "14": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 22
        },
        "15": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 22
        },
        "16": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 19
        },
        "18": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 22
        },
        "19": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 22
        },
        "2": {
          "h": 4,
          "w": 20,
          "x": 4,
          "y": 3
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 24
        },
        "21": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "22": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 24
        },
        "23": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "24": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "4": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "5": {
          "h": 3,
          "w": 20,
          "x": 4,
          "y": 19
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "8": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 13
        },
        "9": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 13
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Managed Redis\n\nGet an overview of the performance and efficiency of your Azure Managed Redis Enterprise instances. Start with **client connections** and **operations throughput** to spot availability or connectivity issues. Use **latency** and **CPU / memory usage** to detect saturation and performance bottlenecks. Track **cache hits vs misses** and **key churn** (expired/evicted keys) to validate sizing and data model efficiency.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"databases\",\"dt.smartscape.azure_microsoft_cache_redisenterprise\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count()",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Instances",
              "labelMode": "none",
              "recordField": "count()",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "10": {
          "content": "##### Usage \u0026 Effectiveness",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries misses = sum(cloud.azure.microsoft_cache.redisenterprise.cachemisses),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalMisses = arraySum(misses)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total cache misses",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Cache misses",
              "labelMode": "none",
              "recordField": "totalMisses",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1770386476122,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalMisses",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries hits = sum(cloud.azure.microsoft_cache.redisenterprise.cachehits),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalHits = arraySum(hits)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total cache hits",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Cache hits",
              "labelMode": "none",
              "recordField": "totalHits",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalHits",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ops = max(cloud.azure.microsoft_cache.redisenterprise.totalcommandsprocessed),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalOps = arraySum(ops)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total operations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Ops/s (sum of max per instance)",
              "labelMode": "none",
              "recordField": "totalOps",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalOps",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries keys = sum(cloud.azure.microsoft_cache.redisenterprise.evictedkeys),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalKeys = arraySum(keys)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total evicted keys",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Cache hits",
              "labelMode": "none",
              "recordField": "totalKeys",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalKeys",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries keys = sum(cloud.azure.microsoft_cache.redisenterprise.expiredkeys),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalKeys = arraySum(keys)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total expired keys",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Cache hits",
              "labelMode": "none",
              "recordField": "totalKeys",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalKeys",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries clients = max(cloud.azure.microsoft_cache.redisenterprise.connectedclients),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayMax(clients) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connected clients per instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "label": "Clients"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1762000000000,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "clients",
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
          "query": "timeseries {read = max(cloud.azure.microsoft_cache.redisenterprise.cacheRead)},\n            by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(read) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read throughput",
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
                "added": 1770388751274,
                "baseUnit": "Bps",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "read",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries mem = max(cloud.azure.microsoft_cache.redisenterprise.usedmemorypercentage),\n            by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(mem) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Used memory percentage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries {write = max(cloud.azure.microsoft_cache.redisenterprise.cacheWrite)},\n            by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(write) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write throughput",
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
                "added": 1770372535665,
                "baseUnit": "Bps",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "write",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1770372535665,
                "baseUnit": "MBps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "write",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries mem = max(cloud.azure.microsoft_cache.redisenterprise.usedmemory),\n            by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(mem) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Used memory",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1770372535665,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "24": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "4": {
          "content": "##### Performance \u0026 Latency",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries ops = max(cloud.azure.microsoft_cache.redisenterprise.operationsPerSecond),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayMax(ops) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Operations per second per instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "label": "Ops / s"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The percentage of cycles in which the Redis server is busy processing and not waiting idle for messages.",
          "query": "timeseries load = max(cloud.azure.microsoft_cache.redisenterprise.serverLoad),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(load) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Server load",
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
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1762000000003,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "load",
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
          "description": "The CPU utilization of the Azure Redis Cache server as a percentage.",
          "query": "timeseries cpu = max(cloud.azure.microsoft_cache.redisenterprise.percentProcessorTime),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(cpu) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization (percentProcessorTime)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "label": "CPU %"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1762000000004,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.azure.microsoft_cache.redisenterprise.cacheLatency),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalAvg = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average cache latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1762000000005,
                "baseUnit": "microsecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalAvg",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries latency = avg(cloud.azure.microsoft_cache.redisenterprise.cacheLatency),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n                             in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache latency per instance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "label": "Latency (µs)"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 14
            },
            "unitsOverrides": [
              {
                "added": 1762000000006,
                "baseUnit": "microsecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "latency",
                "suffix": "",
                "unitCategory": "time"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDISENTERPRISE\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-managed-redis"
  # private = false
}
