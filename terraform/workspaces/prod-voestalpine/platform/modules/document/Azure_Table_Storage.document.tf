resource "dynatrace_document" "Azure_Table_Storage" {
  name      = "Azure Table Storage"
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
          "y": 22
        },
        "17": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "19": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 16
        },
        "20": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 10
        },
        "21": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 4
        },
        "22": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 4
        },
        "23": {
          "h": 5,
          "w": 10,
          "x": 6,
          "y": 4
        },
        "24": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "25": {
          "h": 5,
          "w": 6,
          "x": 12,
          "y": 28
        },
        "26": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 28
        },
        "29": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "3": {
          "h": 5,
          "w": 16,
          "x": 0,
          "y": 10
        },
        "40": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "41": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 3
        },
        "42": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "5": {
          "h": 5,
          "w": 9,
          "x": 0,
          "y": 16
        },
        "6": {
          "h": 5,
          "w": 9,
          "x": 9,
          "y": 16
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Table Storage\n\nMonitor the health, capacity, and performance of your Azure Table Storage accounts. The dashboard highlights availability, throughput, latency, and space-consumption so you can detect issues early and keep costs under control.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.azure_microsoft_storage_storageaccounts\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.SuccessServerLatency), by:{azure.resource.group},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cap = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCapacity), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cap = arrayLast(cap)\n| sort cap desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table capacity",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "18": {
          "content": "##### Throughput",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {ing = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Ingress), eg = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Egress)}, by:{azure.resource.name}\n,\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd Ingress = arrayLast(ing), Egress = arrayLast(eg)\n| fields azure.resource.name, Ingress, Egress\n| sort Ingress desc, Egress desc",
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
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = sum(cloud.azure.microsoft_storage.storageaccounts.tableservices.Transactions), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd tx = arrayLast(tx)\n| fields azure.resource.name, tx\n| sort tx desc\n| limit toLong($Limit)",
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries av = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Availability),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)\n| fieldsAdd Availability = arrayAvg(av)",
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
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {av = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Availability), tc = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCount)}, by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Availability = arrayLast(av), TableCount = arrayLast(tc)\n| fields azure.resource.name, Availability, TableCount\n| sort TableCount desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Availability \u0026 table count table",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries av = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Availability), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        },
        "24": {
          "content": "##### Capacity \u0026 Quotas",
          "type": "markdown"
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cnt = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableCount),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd cnt = arrayLast(cnt)\n| limit toLong($Limit)",
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
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries ent = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.TableEntityCount),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd ent = arrayLast(ent)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Table entity count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "29": {
          "content": "##### Performance",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries tx = count(cloud.azure.microsoft_storage.storageaccounts.tableservices.Transactions), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
        "40": {
          "content": "##### Workload",
          "type": "markdown"
        },
        "41": {
          "content": "##### Availability",
          "type": "markdown"
        },
        "42": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries egress = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Egress), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
          "query": "timeseries ingress = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.Ingress), by:{azure.resource.name},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
          "query": "timeseries lat = avg(cloud.azure.microsoft_storage.storageaccounts.tableservices.SuccessE2ELatency), by:{azure.resource.group},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| limit toLong($Limit)",
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
  custom_id = "dynatrace.clouds.azure-table-storage"
  # private = false
}
