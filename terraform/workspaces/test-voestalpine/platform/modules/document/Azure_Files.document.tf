resource "dynatrace_document" "Azure_Files" {
  name      = "Azure Files"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 4
        },
        "1": {
          "h": 5,
          "w": 6,
          "x": 12,
          "y": 4
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 3
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "15": {
          "h": 5,
          "w": 10,
          "x": 9,
          "y": 28
        },
        "16": {
          "h": 5,
          "w": 9,
          "x": 0,
          "y": 28
        },
        "17": {
          "h": 5,
          "w": 5,
          "x": 19,
          "y": 28
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "19": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 34
        },
        "2": {
          "h": 5,
          "w": 6,
          "x": 6,
          "y": 4
        },
        "20": {
          "h": 5,
          "w": 16,
          "x": 0,
          "y": 34
        },
        "21": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "22": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "3": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 4
        },
        "4": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "5": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 15
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 15
        },
        "7": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 18
        },
        "8": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 15
        },
        "9": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 10
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {avabil=avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Availability),\n            files=sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileShareCount)},\n      by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayLast(avabil), FilesCount = arrayLast(files)\n| fields azure.resource.name, Availability, FilesCount\n| sort FilesCount desc",
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
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "timeseries cnt = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileShareCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd cnt = arrayLast(cnt)",
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
        "10": {
          "content": "##### Availability",
          "type": "markdown"
        },
        "11": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.SuccessServerLatency), by:{azure.resource.group},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.SuccessE2ELatency), by:{azure.resource.group},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        },
        "14": {
          "content": "##### Throughput",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Egress), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries ingress = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Ingress), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {ing = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Ingress), eg = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Egress)}, by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Ingress = arrayLast(ing), Egress = arrayLast(eg)\n| fields azure.resource.name, Ingress, Egress\n| sort Ingress desc, Egress desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress \u0026 egress table",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "18": {
          "content": "##### Workload",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.Transactions), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd tx = arrayLast(tx)\n| fields azure.resource.name, tx\n| sort tx desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions table",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries totalBlobs = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCount), by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd blobsCount = arrayLast(totalBlobs)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Files count",
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
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = count(cloud.azure.microsoft_storage.storageaccounts.fileservices.Transactions), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions by resource",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "21": {
          "content": "### Azure File Service\n\nMonitor the health, capacity, and performance of your Azure File Storage.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.azure_microsoft_storage_storageaccounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "22": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayAvg(avabil)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average availability",
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
        "4": {
          "content": "##### Capacity \u0026 Quotas",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cap = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCapacity), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cap = arrayLast(cap)\n| sort cap desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File capacity",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries quota = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileShareCapacityQuota), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File share capacity quota",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries files = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCount),\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd files = arrayLast(files)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cnt = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileShareCount),\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cnt = arrayLast(cnt)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File share count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries av = avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Availability), by:{azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability by resource",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE*\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_*\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-file-service"
  # private = false
}
