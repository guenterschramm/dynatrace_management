resource "dynatrace_document" "Azure_Cache_for_Redis" {
  name      = "Azure Cache for Redis"
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
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 7
        },
        "10": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 13
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 18
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 13
        },
        "18": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 34
        },
        "19": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 34
        },
        "2": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "20": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 23
        },
        "21": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 34
        },
        "22": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "23": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "27": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "28": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "29": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "3": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "31": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "5": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "7": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 23
        },
        "8": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 7
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Cache for Redis\n\nGet an overview of the usage (connections and errors) of your instances. Consider the 99th-percentile of the latency to spot low performance, comparing to server and memory load. Monitoring the evicted and expired keys can also point to possible optimizations.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"databases\",\"dt.smartscape.azure_microsoft_cache_redis\":\"$SmartscapeId\"}\u003e).\n\n---",
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
          "query": "timeseries clients = max(cloud.azure.microsoft_cache.redis.connectedclients),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayMax(clients) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connected clients",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": []
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries read = avg(cloud.azure.microsoft_cache.redis.cacheRead),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(read) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache read",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1761659437997,
                "baseUnit": "MBps",
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries latency = avg(cloud.azure.microsoft_cache.redis.LatencyP99),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latency P99",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1761722840284,
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
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries latency = avg(cloud.azure.microsoft_cache.redis.cacheLatency),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Server latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true
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
                "added": 1761659982358,
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
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries write = avg(cloud.azure.microsoft_cache.redis.cacheWrite),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(write) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache write",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel-inverted",
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
                "added": 1761659525336,
                "baseUnit": "MBps",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "write",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_cache.redis.expiredkeys),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Expired keys",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_cache.redis.evictedkeys),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Evicted keys",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
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
          "query": "timeseries x=sum(cloud.azure.microsoft_cache.redis.totalcommandsprocessed),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalSum = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "singleValue": {
            "alignment": "center",
            "autoscale": true,
            "colorThresholdTarget": "background",
            "label": "totalcommandsprocessed",
            "recordField": "x",
            "showLabel": false,
            "trend": {
              "isVisible": true,
              "trendType": "auto"
            }
          },
          "title": "Total commands processed",
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
            }
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries mem = avg(cloud.azure.microsoft_cache.redis.usedmemorypercentage),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(mem) desc\n| limit toLong($Limit)",
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
                "added": 1761723160920,
                "baseUnit": "megabyte",
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_cache.redis.totalkeys),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total keys",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "22": {
          "content": "##### Keys",
          "type": "markdown"
        },
        "23": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries hits = sum(cloud.azure.microsoft_cache.redis.cachehits),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(hits) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache hits",
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
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDIS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "singleValue": {
            "alignment": "center",
            "autoscale": true,
            "colorThresholdTarget": "background",
            "label": "totalcommandsprocessed",
            "recordField": "x",
            "showLabel": false,
            "trend": {
              "isVisible": true,
              "trendType": "auto"
            }
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
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "prefixIcon": "QueryTreeIcon"
            },
            "unitsOverrides": []
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.azure.microsoft_cache.redis.cachemisses),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalSum = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "singleValue": {
            "alignment": "center",
            "autoscale": true,
            "colorThresholdTarget": "background",
            "label": "cachehits",
            "recordField": "x",
            "showLabel": false,
            "trend": {
              "isVisible": true,
              "trendType": "auto"
            }
          },
          "title": "Total cache misses",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
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
                "added": 1761658558280,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1761658790936,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.azure.microsoft_cache.redis.cachehits),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalSum = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "singleValue": {
            "alignment": "center",
            "autoscale": true,
            "colorThresholdTarget": "background",
            "label": "cachehits",
            "recordField": "x",
            "showLabel": false,
            "trend": {
              "isVisible": true,
              "trendType": "auto"
            }
          },
          "title": "Total cache hits",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
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
                "added": 1761658558280,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1761658790936,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalSum",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries misses = sum(cloud.azure.microsoft_cache.redis.cachemisses),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(misses) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache misses",
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
        "31": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
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
          "query": "timeseries x=avg(cloud.azure.microsoft_cache.redis.cacheLatency),\n            filter:{in(azure.subscription, array($Subscription)) AND\n                    in(azure.location, array($Location)) AND\n                    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalAvg = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average latency",
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
                "added": 1761659025221,
                "baseUnit": "microsecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalAvg",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "The percentage of cycles in which the Redis server is busy processing and not waiting idle for messages",
          "query": "timeseries load = avg(cloud.azure.microsoft_cache.redis.serverLoad),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(load) desc\n| limit toLong($Limit)",
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
                "added": 1761659904024,
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
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The CPU utilization of the Azure Redis Cache server as a percentage",
          "query": "timeseries processorTime = avg(cloud.azure.microsoft_cache.redis.percentProcessorTime),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(processorTime) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Processor Time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries errors = max(cloud.azure.microsoft_cache.redis.errors),\n                     by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n                     filter:{in(azure.subscription, array($Subscription)) AND\n                             in(azure.location, array($Location)) AND\n                             in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(errors) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1761660386730,
                "baseUnit": "count",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errors",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDIS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDIS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDIS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_CACHE_REDIS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-redis"
  # private = false
}
