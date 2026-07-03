resource "dynatrace_document" "Azure_Application_Gateway" {
  name      = "Azure Application Gateway"
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
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "10": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 21
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 21
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 26
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 26
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 31
        },
        "16": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 31
        },
        "17": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "18": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 41
        },
        "2": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "3": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "5": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 6
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 6
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 11
        },
        "8": {
          "h": 5,
          "w": 6,
          "x": 12,
          "y": 11
        },
        "9": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 11
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Application Gateway\n\nThis dashboard provides a focused view of Azure Application Gateway traffic, reliability, and capacity. It highlights request volume and HTTP status distribution, failed requests and error rates, throughput, connection load, and backend health to help you quickly spot issues and trends.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_network_applicationgateways\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of requests processed in the selected timeframe and scope.",
          "query": "timeseries resp = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalSum = arraySum(resp)",
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
            "label": "requests",
            "recordField": "totalSum",
            "showLabel": false
          },
          "title": "Total requests",
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
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Responses grouped by HTTP status class (2xx/3xx/4xx/5xx) per gateway over time.",
          "query": "timeseries resp = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus),\n  by:{HttpStatusGroup, azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP status distribution",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "HttpStatusGroup",
                "azure.resource.name"
              ]
            }
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Percentage of healthy hosts out of all hosts per gateway.",
          "query": "timeseries {healthy = avg(cloud.azure.microsoft_network.applicationgateways.HealthyHostCount), unhealthy = avg(cloud.azure.microsoft_network.applicationgateways.UnhealthyHostCount)},\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd total = healthy[] + unhealthy[]\n| fieldsAdd healthy_pct = 100.0 * (healthy[] / total[])\n| sort ArrayAvg(healthy_pct) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy host ratio (%) by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Active client connections per gateway over time, ranked by total.",
          "query": "timeseries conn = avg(cloud.azure.microsoft_network.applicationgateways.CurrentConnections),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(conn) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current connections by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Client error responses (HTTP 4xx) per gateway over time.",
          "query": "timeseries r4 = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{matchesValue(HttpStatusGroup, \"4xx\") AND in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(r4) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP 4xx by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Server error responses (HTTP 5xx) per gateway over time.",
          "query": "timeseries r5 = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{matchesValue(HttpStatusGroup, \"5xx\") AND in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(r5) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP 5xx by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average data throughput per resource group over time.",
          "query": "timeseries thr = avg(cloud.azure.microsoft_network.applicationgateways.Throughput),\n  by:{azure.resource.group, azure.subscription, azure.location},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(thr) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throughput by resource group",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.group"
              ]
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Trend of failed requests across the selected scope and timeframe.",
          "query": "timeseries failed = sum(cloud.azure.microsoft_network.applicationgateways.FailedRequests),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failed requests (total)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            }
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Percentage of failed requests per gateway over time.",
          "query": "timeseries {failed = sum(cloud.azure.microsoft_network.applicationgateways.FailedRequests, default:0), total = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus, default:0)},\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd error_rate_pct = 100.0 * (failed[] / total[])\n| fieldsAdd period_error_rate = 100.0 * arraySum(failed) / arraySum(total)\n| sort period_error_rate desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error rate % by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "18": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of failed requests in the selected timeframe and scope.",
          "query": "timeseries failed = sum(cloud.azure.microsoft_network.applicationgateways.FailedRequests),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd totalFailed = arraySum(failed)",
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
            "label": "failed",
            "recordField": "totalFailed",
            "showLabel": false
          },
          "title": "Failed requests",
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
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Percentage of requests that failed (FailedRequests divided by total ResponseStatus).",
          "query": "timeseries failed = sum(cloud.azure.microsoft_network.applicationgateways.FailedRequests, default:0),\n          total  = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus,   default:0),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd error_rate_pct = 100.0 * arraySum(failed) / arraySum(total)",
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
            "label": "error rate",
            "recordField": "error_rate_pct",
            "showLabel": false
          },
          "title": "Error rate %",
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
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average number of active client connections across the selected timeframe and scope.",
          "query": "timeseries conn = avg(cloud.azure.microsoft_network.applicationgateways.CurrentConnections),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd avgConn = arrayAvg(conn)",
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
            "label": "connections",
            "recordField": "avgConn",
            "showLabel": false
          },
          "title": "Avg active connections",
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
            }
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average data throughput (bytes per second) per gateway over time.",
          "query": "timeseries thr = avg(cloud.azure.microsoft_network.applicationgateways.Throughput),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(thr) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throughput (bytes/s) by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
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
          "description": "Failed requests over time per gateway, ranked by total failures.",
          "query": "timeseries failed = sum(cloud.azure.microsoft_network.applicationgateways.FailedRequests),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(failed) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failed requests by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total requests over time per gateway, ranked by volume.",
          "query": "timeseries req = sum(cloud.azure.microsoft_network.applicationgateways.ResponseStatus),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(req) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total requests by gateway",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average count of healthy backend hosts per gateway over time.",
          "query": "timeseries healthy = avg(cloud.azure.microsoft_network.applicationgateways.HealthyHostCount),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(healthy) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy hosts",
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average count of unhealthy backend hosts per gateway over time.",
          "query": "timeseries unhealthy = avg(cloud.azure.microsoft_network.applicationgateways.UnhealthyHostCount),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(unhealthy) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unhealthy hosts",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1762258546214,
                "baseUnit": "count",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "unhealthy",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_APPLICATIONGATEWAYS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_APPLICATIONGATEWAYS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_APPLICATIONGATEWAYS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_APPLICATIONGATEWAYS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-appgateway"
  # private = false
}
