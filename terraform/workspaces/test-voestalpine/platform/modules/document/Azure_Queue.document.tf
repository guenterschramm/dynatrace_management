resource "dynatrace_document" "Azure_Queue" {
  name      = "Azure Queue"
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
        "10": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 7
        },
        "15": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "21": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 19
        },
        "22": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 24
        },
        "26": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "27": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "28": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "29": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "3": {
          "h": 5,
          "w": 16,
          "x": 0,
          "y": 24
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 7
        },
        "31": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "32": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 13
        },
        "33": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 13
        },
        "34": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 13
        },
        "35": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 29
        },
        "36": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 29
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 29
        },
        "38": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "5": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 19
        },
        "6": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 19
        },
        "9": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 7
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Queue Storage\n\nMonitor the health, capacity, and performance of your Azure Queue Storage accounts and queues. The dashboard highlights availability, throughput, latency, and space-consumption to help you detect issues early and keep costs under control.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.azure_microsoft_storage_storageaccounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.SuccessServerLatency), by: {azure.resource.group},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful server latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {}
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cnt = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cnt = arrayLast(cnt)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "20": {
          "content": "##### I/O",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {ingress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Ingress),\n  egress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Egress)\n}, by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Ingress = arrayLast(ingress), Egress=arrayLast(egress)\n| fields azure.resource.name, Ingress, Egress\n| sort Ingress desc, Egress desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress and Egress by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.Transactions), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd tx = arrayLast(tx)\n| fields azure.resource.name, tx\n| sort tx desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries msgs = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueMessageCount),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd msgs = arrayLast(msgs)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue message count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayAvg(avabil)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Queue availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Availability",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "!=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "Availability",
                  "value": 100
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
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
                "added": 1756193894871,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries {avabil=avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability),\n            blobs=avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount)},\n      by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayLast(avabil), BlobCount = arrayLast(blobs)\n| fields azure.resource.name, Availability, BlobCount\n| sort BlobCount desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "29": {
          "content": "##### Availability and Latency",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = count(cloud.azure.microsoft_storage.storageaccounts.queueservices.Transactions), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions requests by resource",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "31": {
          "content": "##### Capacity",
          "type": "markdown"
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cnt = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries {cnt = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount), cap = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCapacity)}, by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fields azure.resource.name, arrayLast(cnt), arrayLast(cap)\n| sort `arrayLast(cnt)` desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue count and capacity",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCapacity), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue capacity",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect"
            }
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries msgs = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.Transactions)\n, by: {azure.resource.name},\nfilter:{\n    Lower(responsetype) != \"success\" AND\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions (Success)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "legend": {
              "ratio": 18
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.Transactions),\n  by: {azure.resource.name, responsetype},\n  filter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd value = arrayLast(x)\n| fields { responsetype, alias: Response }, azure.resource.name, value, { value, alias: Resource }\n| summarize { Success = sum(if(Lower(Response) == \"success\", value, else: 0.00)), Errors = sum(if(Lower(Response) != \"success\", value, else: 0.00))}, by: {azure.resource.name}\n| sort (Errors + Success) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "groupMode": "grouped"
              }
            }
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries msgs = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.Transactions)\n, by: {azure.resource.name},\nfilter:{\n    Lower(responsetype) != \"success\" AND\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions (Errors)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "legend": {
              "ratio": 18
            }
          }
        },
        "38": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Egress), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Egress",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {}
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries ingress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Ingress), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {}
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.SuccessE2ELatency), by: {azure.resource.group},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful E2E latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {}
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_STORAGEACCOUNTS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE*\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_*\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE*\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-queue"
  # private = false
}
