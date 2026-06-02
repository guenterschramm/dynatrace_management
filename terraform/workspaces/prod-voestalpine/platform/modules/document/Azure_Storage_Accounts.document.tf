resource "dynatrace_document" "Azure_Storage_Accounts" {
  name      = "Azure Storage Accounts"
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
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "100": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 72
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 42
        },
        "30": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "40": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 57
        },
        "45": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "46": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "47": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "48": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "49": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "50": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "51": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 13
        },
        "52": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 15
        },
        "53": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 13
        },
        "54": {
          "h": 9,
          "w": 6,
          "x": 12,
          "y": 13
        },
        "55": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "56": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "57": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "63": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 28
        },
        "66": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 28
        },
        "67": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "68": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 32
        },
        "69": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "72": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 43
        },
        "73": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 43
        },
        "74": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 43
        },
        "75": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 30
        },
        "76": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 52
        },
        "77": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 52
        },
        "81": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 37
        },
        "82": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 37
        },
        "85": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 45
        },
        "86": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 47
        },
        "87": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 47
        },
        "88": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 58
        },
        "89": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 58
        },
        "90": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 58
        },
        "91": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 60
        },
        "92": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 58
        },
        "93": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 62
        },
        "94": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 62
        },
        "95": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 67
        },
        "96": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 67
        },
        "97": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 7
        },
        "98": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 7
        },
        "99": {
          "h": 9,
          "w": 6,
          "x": 18,
          "y": 13
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Storage Overview\n\nObserve performance and capacity of your Azure Storage Accounts in real time. Spot traffic surges, latency outliers and capacity trends early to keep your data durable and highly-available.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.azure_microsoft_storage_storageaccounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "content": "##### Blob Storage",
          "type": "markdown"
        },
        "100": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "20": {
          "content": "##### File Storage",
          "type": "markdown"
        },
        "30": {
          "content": "##### Queue Storage",
          "type": "markdown"
        },
        "40": {
          "content": "##### Table Service",
          "type": "markdown"
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries E2E = avg(cloud.azure.microsoft_storage.storageaccounts.SuccessE2ELatency)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd E2ELatency = arrayAvg(E2E)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "E2E latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "recordField": "E2ELatency",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries Server = avg(cloud.azure.microsoft_storage.storageaccounts.SuccessServerLatency)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd ServerLatency = arrayAvg(Server)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Server latency",
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
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egre = sum(cloud.azure.microsoft_storage.storageaccounts.Egress),\n  by: {azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  },\n  interval: 1m\n| fieldsAdd Egress = arraySum(egre)\n| sort Egress desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Egress",
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
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries ingr = sum(cloud.azure.microsoft_storage.storageaccounts.Ingress)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Ingress = arrayLast(ingr)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress",
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
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries TPS = sum(cloud.azure.microsoft_storage.storageaccounts.Transactions)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Transactions = arrayLast(TPS)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions",
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
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayAvg(avabil)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability",
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
        "51": {
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
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries containers = sum(cloud.azure.microsoft_storage.storageaccounts.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd cont = arrayAvg(containers)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Containers count",
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
        "53": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries blob = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd blobs = arraySum(blob)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob Count",
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
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {avabil = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.Availability),\nblob = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCount)}, by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayAvg(avabil), BlobsCount = arraySum(blob)\n| fields azure.resource.name, Availability, BlobsCount\n| sort Availability desc, BlobsCount desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob availability and count by resource (Top $Limit)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"BlobCount\"]": 101.84,
                "[\"azure.resource.name\"]": 204.98
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
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Transactions), by: { responsetype},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd transaction = arrayLast(x)\n| sort transaction desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transactions by reponse",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 22
            }
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Egress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Ingress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayAvg(avabil)",
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
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries TableCount = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Table = arraySum(TableCount)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queue Count",
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
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {avabil=avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability),\n            blobs=sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount)},\n      by: {azure.resource.name},\n                  filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayAvg(avabil), BlobCount = arraySum(blobs)\n| fields azure.resource.name, Availability, BlobCount",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability by Resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
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
                  "columnId": "[\"azure.resource.name\"]",
                  "direction": "ascending"
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
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Egress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Ingress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {avabil=avg(cloud.azure.microsoft_storage.storageaccounts.fileservices.Availability),\n            files=sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCount)},\n      by: {azure.resource.name},\n                  filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayAvg(avabil), FileCount = arraySum(files)\n| fields azure.resource.name, Availability, FileCount\n| sort Availability desc, FileCount desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability by Resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
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
                  "columnId": "[\"FileCount\"]",
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
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries TableCount = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Table = arrayAvg(TableCount)",
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
        "74": {
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
          "title": "File Storage availability",
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
        "75": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueMessageCount), by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Message count",
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
        "76": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.Egress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingress = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.Ingress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "81": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.SuccessServerLatency), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Success Server Latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "82": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.SuccessE2ELatency), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful E2E Latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "85": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries TableCount = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileShareCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Table = arrayAvg(TableCount)",
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
        "86": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.Transactions), by: {azure.resource.name, ResponseType},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
        "87": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries blob = sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.Transactions), by: {ResponseType},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd blobs = arraySum(blob)\n| sort blob desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File service transaction by response",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries entities = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableEntityCount), by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd entities = arrayAvg(entities)\n| sort entities desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Entities by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
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
                  "columnId": "[\"Availability\"]",
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
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries TableCount = sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Table = arraySum(TableCount)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table count",
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
        "90": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avabil = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Availability)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Availability = arrayAvg(avabil)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File Storage availability",
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
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries TableCount = sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableEntityCount)\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Table = arrayAvg(TableCount)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table Entity Count",
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
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries count = sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCapacity), by: {azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd x = arrayAvg(count)\n| fieldsKeep azure.resource.name, x\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table Capacity by resource",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "93": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.queueservices.Egress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries egress = sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.Ingress), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
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
            "autoSelectVisualization": true
          }
        },
        "95": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries resp = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Transactions), by: {responsetype},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd response = arrayAvg(resp)\n| sort response desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table service transaction by response",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
        "96": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {bytesReceived=sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.Transactions),\n            bytesSent=sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.Transactions), by: {azure.resource.name, responsetype}},\n                        filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd BytesReceived = arraySum(bytesReceived)\n| fieldsAdd BytesSent = arraySum(bytesSent)\n| sort (BytesReceived+BytesSent) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
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
        "97": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {TableCount=sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCount),\n            BlobCount=sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCount),\n            QueueCount=sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCount),\n            FileCount=sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCount)\n            },\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage count by type",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "98": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {TableCapacity=sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCapacity),\n            BlobCapacity=sum(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCapacity),\n            QueueCapacity=sum(cloud.azure.microsoft_storage.storageaccounts.queueservices.QueueCapacity),\n            FileCapacity=sum(cloud.azure.microsoft_storage.storageaccounts.fileservices.FileCapacity)\n            },\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage capacity by type",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect"
            }
          }
        },
        "99": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.azure.microsoft_storage.storageaccounts.blobservices.BlobCapacity), by: {azure.resource.name},\n            filter:{\n              in(azure.subscription, array($Subscription)) AND\n              in(azure.location, array($Location)) AND\n              in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fields azure.resource.name, arrayLast(x)\n| sort `arrayLast(x)` desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Blob capacity (Top $Limit)",
          "type": "data",
          "visualization": "table",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_STORAGEACCOUNTS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_STORAGEACCOUNTS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_STORAGE_STORAGEACCOUNTS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-storage-accounts"
  # private = false
}
