resource "dynatrace_document" "Azure_Web_App" {
  name      = "Azure Web App"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "chart-4xx": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 14
        },
        "chart-5xx": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 14
        },
        "chart-bytes": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "chart-connections": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "chart-http-breakdown": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 14
        },
        "chart-http-response-time": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 20
        },
        "chart-io": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 26
        },
        "chart-memory": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 26
        },
        "chart-requests": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "chart-response-time": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 20
        },
        "chart-threads": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 32
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
        "kpi-5xx": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
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
        "kpi-memory": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "kpi-requests": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "kpi-response-time": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "sec-connections": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "sec-http-status": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "sec-performance": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "sec-resources": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "sec-traffic": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        }
      },
      "settings": {},
      "tiles": {
        "chart-4xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "4xx client error count per individual Web App. Common causes include missing routes (404), expired tokens, and rate limiting.",
          "query": "timeseries val = sum(cloud.azure.microsoft_web.sites.Http4xx),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx Errors by App",
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
        "chart-5xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "5xx error count per individual Web App. Identify which apps have the most server-side failures.",
          "query": "timeseries val = sum(cloud.azure.microsoft_web.sites.Http5xx),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Errors by App",
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
        "chart-bytes": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Bytes received and sent per Web App. High outbound traffic on specific apps may indicate large response payloads or data exfiltration risk.",
          "query": "timeseries {bytesIn = sum(cloud.azure.microsoft_web.sites.BytesReceived), bytesOut = sum(cloud.azure.microsoft_web.sites.BytesSent)},\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort (arraySum(bytesIn) + arraySum(bytesOut)) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Bytes by App",
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
          "description": "Socket connection count per Web App. Connection pool exhaustion from connection leaks causes request queuing and timeout errors.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AppConnections),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "App Connections by App",
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
        "chart-http-breakdown": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "HTTP response code breakdown per Web App showing 2xx, 4xx, and 5xx counts as a stacked area chart.",
          "query": "timeseries {http2xx = sum(cloud.azure.microsoft_web.sites.Http2xx), http4xx = sum(cloud.azure.microsoft_web.sites.Http4xx), http5xx = sum(cloud.azure.microsoft_web.sites.Http5xx)},\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(http2xx) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP Status Breakdown by App",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "http2xx",
                  "http4xx",
                  "http5xx"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "http2xx",
                "http4xx",
                "http5xx"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "http2xx",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "http4xx",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "http5xx",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-http-response-time": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "HTTP response time metric (time-to-first-byte + body transfer) per Web App. Complements AverageResponseTime for end-to-end latency analysis.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.HttpResponseTime),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP Response Time by App",
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
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "chart-io": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Disk read and write bytes per second per Web App. Heavy write I/O on shared storage may indicate disk-bound workloads that benefit from SSD-backed plans.",
          "query": "timeseries {ioRead = avg(cloud.azure.microsoft_web.sites.IoReadBytesPerSecond), ioWrite = avg(cloud.azure.microsoft_web.sites.IoWriteBytesPerSecond)},\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(ioWrite) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk I/O Rate by App",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "ioRead",
                  "ioWrite"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "ioRead",
                "ioWrite"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "bytepersecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ioRead",
                "suffix": "",
                "unitCategory": "data rate"
              },
              {
                "added": 1741737600000,
                "baseUnit": "bytepersecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ioWrite",
                "suffix": "",
                "unitCategory": "data rate"
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
          "description": "Memory working set per Web App. Monotonically increasing memory is a sign of memory leaks requiring a restart or code fix.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AverageMemoryWorkingSet),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Working Set by App",
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
        "chart-requests": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "HTTP request rate per Web App. Compare against response time and error charts to identify apps under load-induced stress.",
          "query": "timeseries val = sum(cloud.azure.microsoft_web.sites.Requests),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests by App",
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
        "chart-response-time": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average HTTP response time per Web App. Spot slowest apps and correlate latency spikes with traffic, memory and connection trends.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AverageResponseTime),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Response Time by App",
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
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "chart-threads": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Thread count per Web App. Unbounded thread growth indicates thread-leak bugs or excessive parallelism that can exhaust the process queue.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.Threads),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Thread Count by App",
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
        "footer": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "header": {
          "content": "### Azure Web App\n\nMonitor request throughput, HTTP error rates, response times, memory, I/O and connection counts for Azure Web Apps. Key signals: **Http5xx** for reliability, **AverageResponseTime** for latency, **AverageMemoryWorkingSet** for capacity, **AppConnections** for connection pool saturation.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"webAppHosting\",\"dt.smartscape.azure_microsoft_web_sites\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "kpi-5xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total HTTP 5xx server errors. Any 5xx response signals an application or infrastructure fault requiring investigation.",
          "query": "timeseries val = sum(cloud.azure.microsoft_web.sites.Http5xx),\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
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
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-connections": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average socket connections per Web App. Connection pool exhaustion causes request queuing and elevated response times.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AppConnections),\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgConn = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Connections",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Connections",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgConn",
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
                "identifier": "AvgConn",
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
          "description": "Total number of Azure Web Apps (kind=app*) matching the current filter selection.",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| filter startsWith(azure.resource.kind, \"app\")\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Apps",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Apps",
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
        "kpi-memory": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average memory working set across all selected Web Apps. Values approaching the App Service plan memory limit indicate a need to scale up or out.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AverageMemoryWorkingSet),\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgMem = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Memory Working Set",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Memory",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgMem",
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
                "identifier": "AvgMem",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "kpi-requests": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total HTTP requests handled by selected Web Apps during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_web.sites.Requests),\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Requests",
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
        "kpi-response-time": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average HTTP response time across selected Web Apps. Rising response times are leading indicators of performance degradation or capacity issues.",
          "query": "timeseries val = avg(cloud.azure.microsoft_web.sites.AverageResponseTime),\n  filter: {\n    startsWith(azure.resource.kind, \"app\") AND\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgRT = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Response Time",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg Response Time",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgRT",
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
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgRT",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "sec-connections": {
          "content": "##### Connections \u0026 Threads",
          "type": "markdown"
        },
        "sec-http-status": {
          "content": "##### HTTP Status",
          "type": "markdown"
        },
        "sec-performance": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "sec-resources": {
          "content": "##### Resources",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_WEB_SITES\"\n| filter startsWith(azure.resource.kind, \"app\")\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
  custom_id = "dynatrace.clouds.azure-web-apps"
  # private = false
}
