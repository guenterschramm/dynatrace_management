resource "dynatrace_document" "Azure_Blob_Storage" {
  name      = "Azure Blob Storage"
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
          "w": 12,
          "x": 12,
          "y": 15
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 21
        },
        "15": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "21": {
          "h": 5,
          "w": 5,
          "x": 19,
          "y": 27
        },
        "22": {
          "h": 5,
          "w": 5,
          "x": 19,
          "y": 32
        },
        "26": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "28": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 21
        },
        "3": {
          "h": 5,
          "w": 19,
          "x": 0,
          "y": 32
        },
        "30": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "31": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "32": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "33": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "34": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "35": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "5": {
          "h": 5,
          "w": 10,
          "x": 9,
          "y": 27
        },
        "6": {
          "h": 5,
          "w": 9,
          "x": 0,
          "y": 27
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 15
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Blob Storage\n\nMonitor the health, capacity, and performance of your Azure Blob Storage accounts and containers.  The dashboard highlights availability, throughput, latency, and space-consumption to help you detect issues early and keep costs under control.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.azure_microsoft_storage_storageaccounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.SuccessServerLatency), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries containerCount = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.ContainerCount), by: {azure.resource.name} ,\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd containerCount = arrayLast(containerCount)\n| sort containerCount desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container count by resource",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of containers across all selected storage accounts.",
          "query": "timeseries cnt = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.ContainerCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd cnt = arrayLast(cnt)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1756291608793,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cnt",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "20": {
          "content": "##### Throughput and Workloads",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {ingress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Ingress), egress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Egress)}, by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd ingress = arrayLast(ingress), egress = arrayLast(egress)\n| fields azure.resource.name, ingress,egress\n| sort ingress desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress / Egress by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"azure.resource.name\"]": 168
              }
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Transactions), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd txSum = arrayLast(tx)\n| fields azure.resource.name, txSum\n| sort txSum desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions (blob service)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"azure.resource.name\"]": 191
              }
            }
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total number of blobs per storage account across the selected scope.",
          "query": "timeseries totalBlobs = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCount), by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd blobsCount = arrayLast(totalBlobs)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob count",
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
            }
          }
        },
        "28": {
          "content": "##### Blob availability",
          "type": "markdown"
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cap = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCapacity), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cap = arrayLast(cap)\n| sort cap desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob capacity",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Transactions), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions (blob service)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {}
        },
        "30": {
          "content": "##### Usage",
          "type": "markdown"
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayAvg(avabil)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Blob availability",
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
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {avabil=avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.Availability),\n            blobs=sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCount)},\n      by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayLast(avabil), BlobCount = arrayLast(blobs)\n| fields azure.resource.name, Availability, BlobCount\n| sort BlobCount desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob availability and count by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"BlobCount\"]": 101.84,
                "[\"azure.resource.name\"]": 171.97
              },
              "hiddenColumns": [
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ],
                [
                  "avabil"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"BlobCount\"]",
                  "direction": "descending"
                }
              ]
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
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x=avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.Availability), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "34": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "35": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries egress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Egress), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
          "visualizationSettings": {
            "legend": {
              "ratio": 10
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries ingress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Ingress), by: {azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
          "visualizationSettings": {
            "legend": {
              "ratio": 10
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.SuccessE2ELatency), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
  custom_id = "dynatrace.clouds.azure-blob-storage"
  # private = false
}
