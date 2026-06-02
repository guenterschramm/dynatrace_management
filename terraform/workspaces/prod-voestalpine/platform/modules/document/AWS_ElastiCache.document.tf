resource "dynatrace_document" "AWS_ElastiCache" {
  name      = "AWS ElastiCache"
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
        "11": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "12": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 46
        },
        "15": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 37
        },
        "16": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 37
        },
        "17": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 19
        },
        "18": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 19
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "21": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "22": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "24": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "25": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "26": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "27": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "28": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 19
        },
        "29": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 22
        },
        "30": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 37
        },
        "31": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 40
        },
        "32": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 56
        },
        "33": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 56
        },
        "34": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 56
        },
        "35": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 59
        },
        "36": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 51
        },
        "37": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "38": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 51
        },
        "39": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "4": {
          "h": 5,
          "w": 8,
          "x": 4,
          "y": 3
        },
        "40": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 46
        },
        "41": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 62
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "9": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS Elasticache\n\nInformative overview of the usage and status of your cache clusters. Quickly identify unavailable caches and spot anomalies from the usage-related metrics (including both host-level and cache engine software-level metrics).\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"databases\",\"dt.smartscape.aws_elasticache_cachecluster\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "11": {
          "content": "### Redis/Valkey\nCache node-level metrics for Redis and Valkey engines, for keeping track of CPU, memory and latency. Also, consider that a balanced instance should maintain a high cache hit rate. \n\n---\n",
          "type": "markdown"
        },
        "12": {
          "content": " ",
          "type": "markdown"
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of keys that have been evicted due to max memory limit.",
          "query": "timeseries evictions = sum(cloud.aws.elasticache.Evictions.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd evictionsSum = arraySum(evictions)\n| fieldsRemove aws.account.id, aws.region\n| sort evictionsSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Evictions by cache",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "CacheClusterId"
                ],
                "categoryAxisLabel": "Cache IDs",
                "valueAxis": [
                  "evictionsSum"
                ],
                "valueAxisLabel": "Evictions"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745913051330,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "evictionsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of successful and unsuccessful key lookups in the cache.",
          "query": "timeseries {HitsValues = sum(cloud.aws.elasticache.GetHits.By.CacheClusterId),\n            MissesValues = sum(cloud.aws.elasticache.GetMisses.By.CacheClusterId)},\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Hits = arraySum(HitsValues)\n| fieldsAdd Misses = arraySum(MissesValues)\n| sort (Hits + Misses) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hits and misses by cache",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "CacheClusterId"
                ],
                "categoryAxisLabel": "Cache IDs",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Hits",
                  "Misses"
                ],
                "valueAxisLabel": "Hits,Misses"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922072707,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Hits",
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
          "description": "",
          "query": "timeseries readLatency = avg(cloud.aws.elasticache.SuccessfulReadRequestLatency.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd readLatencyAvg = arrayAvg(readLatency)\n| sort readLatencyAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful read request latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "readLatency"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "interval",
                "sumBytes",
                "hitsSum",
                "missesSum",
                "readLatencySum",
                "readLatencyAvg"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Microseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "clusterid"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1746617163700,
                "baseUnit": "microsecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "readLatency",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "",
          "query": "timeseries readLatency = avg(cloud.aws.elasticache.SuccessfulWriteRequestLatency.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd readLatencyAvg = arrayAvg(readLatency)\n| sort readLatencyAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful write request latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "readLatency"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "interval",
                "sumBytes",
                "hitsSum",
                "missesSum",
                "readLatencySum",
                "readLatencyAvg"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Microseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "clusterid"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1746617581169,
                "baseUnit": "microsecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "readLatency",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.NetworkBytesIn.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)\n| sort bytesSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network bytes in (host)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytes"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.NetworkBytesOut.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)\n| sort bytesSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network bytes out (host)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytes"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922322147,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The percentage of CPU utilization for the entire host.",
          "query": "timeseries cpu = avg(cloud.aws.elasticache.CPUUtilization.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cpuAvg = arrayAvg(cpu)\n| sort cpuAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization (host)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745913190430,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "The amount of free memory available on the host.",
          "query": "timeseries mem = avg(cloud.aws.elasticache.FreeableMemory.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd memAvg = arrayAvg(mem)\n| sort memAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Freeable memory (host)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "mem"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745913152129,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries cpu = avg(cloud.aws.elasticache.EngineCPUUtilization.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cpuAvg = arrayAvg(cpu)\n| sort cpuAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Engine CPU utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922123529,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "24": {
          "content": "### Memcached\nCache node-level metrics derived from the Memcached stats command, for keeping track of memory and network throughput. Also, consider that a balanced instance should maintain a high cache hit rate. \n\n---\n",
          "type": "markdown"
        },
        "25": {
          "content": " ",
          "type": "markdown"
        },
        "26": {
          "content": "##### Host-level metrics",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries bytes=avg(cloud.aws.elasticache.BytesUsedForCache.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsadd lastBytes=arrayLast(bytes)\n| sort lastBytes desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes used",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytes"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745913099301,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
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
          "query": "timeseries bytes = avg(cloud.aws.elasticache.NetworkBytesIn.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network bytes in (host)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "bytesSum",
              "sparklineSettings": {
                "record": "bytes"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesSum",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.NetworkBytesOut.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network bytes out (host)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "bytesSum",
              "sparklineSettings": {
                "record": "bytes"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesSum",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries readLatency = avg(cloud.aws.elasticache.SuccessfulReadRequestLatency.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd readLatencyAvg = arrayAvg(readLatency)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average successful read request latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "readLatencyAvg",
              "sparklineSettings": {
                "isVisible": false,
                "record": "readLatency"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1746617084932,
                "baseUnit": "microsecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "readLatencyAvg",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries readLatency = avg(cloud.aws.elasticache.SuccessfulWriteRequestLatency.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd readLatencyAvg = arrayAvg(readLatency)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average successful write request latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "readLatencyAvg",
              "sparklineSettings": {
                "isVisible": false,
                "record": "readLatency"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1746617084932,
                "baseUnit": "microsecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "readLatencyAvg",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.BytesWrittenOutFromMemcached.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)\n| sort bytesSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network bytes out",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytes"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id",
                "bytesSum"
              ],
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "clusterid"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922322147,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.BytesReadIntoMemcached.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)\n| sort bytesSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network bytes in",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "bytes"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id",
                "bytesSum"
              ],
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "clusterid"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.BytesReadIntoMemcached.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network bytes in",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "bytesSum",
              "sparklineSettings": {
                "record": "bytes"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesSum",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries bytes = avg(cloud.aws.elasticache.BytesWrittenOutFromMemcached.By.CacheClusterId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd bytesSum = arraySum(bytes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network bytes out",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "bytesSum",
              "sparklineSettings": {
                "record": "bytes"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745922283384,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytesSum",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries mem = avg(cloud.aws.elasticache.UnusedMemory.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd memAvg = arrayAvg(mem)\n| sort memAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unused memory",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "mem"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id",
                "cpuAvg"
              ],
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1745922123529,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries mem = avg(cloud.aws.elasticache.DatabaseMemoryUsagePercentage.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd memAvg = arrayAvg(mem)\n| sort memAvg desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Engine memory usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "mem"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId",
                "memAvg"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745922123529,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "",
          "query": "timeseries bytes=avg(cloud.aws.elasticache.BytesUsedForCacheItems.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsadd lastBytes=arrayLast(bytes)\n| sort lastBytes desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes used",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1745913099301,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "Efficiency of the cache instance. If the cache ratio is lower than about 0.8, it means that a significant number of keys are evicted, expired, or don't exist.",
          "query": "timeseries HitsValues = avg(cloud.aws.elasticache.CacheHitRate.By.CacheClusterId),\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(HitsValues) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache hit rate",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "HitsValues"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 70,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 80,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-13-default, #1c520a)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745921937649,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "HitsValues",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_ELASTICACHE_CACHECLUSTER\"\n| fieldsAdd aws.object\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| parse aws.object, \"JSON:json\"\n| summarize count(), by:{json[configuration][engine]}\n| sort `count()` desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache clusters by engine",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "json[configuration][engine]"
                ],
                "categoryAxisLabel": "Engine",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 15
            }
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Efficiency of the cache instance. If the cache ratio is lower than about 0.8, it means that a significant number of keys are evicted, expired, or don't exist.",
          "query": "timeseries {HitsValues = sum(cloud.aws.elasticache.GetHits.By.CacheClusterId),\n            MissesValues = sum(cloud.aws.elasticache.GetMisses.By.CacheClusterId)},\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd rate = HitsValues[] / (HitsValues[] + HitsValues[])\n| fieldsRemove HitsValues, MissesValues\n| sort rate desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache hit rate",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "rate"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 70,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 80,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-13-default, #1c520a)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "clusterid",
                "missesSum"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745921937649,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "HitsValues",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "41": {
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
          "description": "",
          "query": "timeseries currConnections=sum(cloud.aws.elasticache.CurrConnections.By.CacheClusterId),\n           by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(currConnections) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current connections",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "currConnections"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Connections"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "CacheClusterId"
              ]
            },
            "unitsOverrides": []
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of successful and unsuccessful key lookups in the cache.",
          "query": "timeseries {HitsValues = sum(cloud.aws.elasticache.CacheHits.By.CacheClusterId),\n            MissesValues = sum(cloud.aws.elasticache.CacheMisses.By.CacheClusterId)},\n            by:{CacheClusterId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Hits = arraySum(HitsValues)\n| fieldsAdd Misses = arraySum(MissesValues)\n| fieldsRemove aws.account.id, aws.region\n| sort (Hits + Misses) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hits and misses by cache",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "CacheClusterId"
                ],
                "categoryAxisLabel": "Cache IDs",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Hits",
                  "Misses"
                ],
                "valueAxisLabel": "Hits,Misses"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745921937649,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Hits",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "description": "",
          "query": "smartscapeNodes \"AWS_ELASTICACHE_CACHECLUSTER\"\n| fieldsAdd aws.object\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| parse aws.object, \"JSON:json\"\n| summarize count(), by:{json[configuration][cacheClusterStatus]}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Available cache clusters",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "json[configuration][cacheClusterStatus]"
                ],
                "categoryAxisLabel": "json[configuration][cacheClusterStatus]",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "vulnerability-status",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "available"
                }
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
          "input": "smartscapeNodes \"AWS_ELASTICACHE_CACHECLUSTER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_ELASTICACHE*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
          "key": "AccountId",
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
          "input": "smartscapeNodes \"AWS_ELASTICACHE*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
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
  custom_id = "dynatrace.clouds.aws-elasticache"
  # private = false
}
