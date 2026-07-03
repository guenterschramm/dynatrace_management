resource "dynatrace_document" "Azure_Virtual_Machine_Scale_Set" {
  name      = "Azure Virtual Machine Scale Set"
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
          "w": 12,
          "x": 0,
          "y": 22
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "16": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 38
        },
        "17": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 38
        },
        "18": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 38
        },
        "19": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "2": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "21": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 43
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
          "w": 24,
          "x": 0,
          "y": 11
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 17
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Virtual Machine Scale Sets\n\nThis dashboard provides comprehensive monitoring of Azure Virtual Machine Scale Sets, focusing on critical performance metrics, resource utilization, and health indicators. Track CPU, disk I/O, and network performance across all VM instances to ensure optimal service delivery and quickly identify performance bottlenecks or resource constraints.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"vm\",\"dt.smartscape.azure_microsoft_compute_virtualmachinescalesets\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Scale Sets",
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
                  "field": "count",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries readBytes = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskReadBytes),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(readBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk Read (bytes)",
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries writeBytes = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskWriteBytes),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(writeBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk Write (bytes)",
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
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries netIn = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.NetworkInTotal),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(netIn) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network In (bytes)",
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries netOut = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.NetworkOutTotal),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(netOut) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Out (bytes)",
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
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries inFlows = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.InboundFlows),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(inFlows) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inbound Network Flows",
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
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries outFlows = sum(cloud.azure.microsoft_compute.virtualmachinescalesets.OutboundFlows),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(outFlows) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Outbound Network Flows",
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
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries latency = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.OSDiskLatency),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "OS Disk Latency (ms)",
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
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries iops = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.OSDiskIOPSConsumedPercentage),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(iops) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "OS Disk IOPS Consumed (%)",
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
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries bandwidth = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.OSDiskBandwidthConsumedPercentage),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(bandwidth) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "OS Disk Bandwidth Consumed (%)",
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
          "content": "##### Network",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries cpu = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.PercentageCPU),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd avgCpu = arrayAvg(cpu)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average CPU Utilization (%)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "20": {
          "content": "##### Disk I/O",
          "type": "markdown"
        },
        "21": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries readOps = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskReadOperations_Sec),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd avgReadOps = arrayAvg(readOps)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Disk Read Ops/Sec",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
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
          "query": "timeseries writeOps = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskWriteOperations_Sec),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd avgWriteOps = arrayAvg(writeOps)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Disk Write Ops/Sec",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
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
          "query": "timeseries cpu = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.PercentageCPU),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(cpu) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage (%) by VM",
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries mem = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.AvailableMemoryPercentage),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(mem) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Available Memory (%) by VM",
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries credits = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.CPUCreditsRemaining),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(credits) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Credits Remaining by VM",
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
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries readOps = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskReadOperations_Sec),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(readOps) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk Read Operations/Sec",
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries writeOps = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskWriteOperations_Sec),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(writeOps) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk Write Operations/Sec",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE*\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINESCALESETS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-vmss"
  # private = false
}
