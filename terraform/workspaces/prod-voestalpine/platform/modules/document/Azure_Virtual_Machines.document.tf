resource "dynatrace_document" "Azure_Virtual_Machines" {
  name      = "Azure Virtual Machines"
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
          "x": 0,
          "y": 26
        },
        "11": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "12": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "13": {
          "h": 5,
          "w": 5,
          "x": 13,
          "y": 3
        },
        "14": {
          "h": 5,
          "w": 5,
          "x": 8,
          "y": 3
        },
        "15": {
          "h": 5,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "16": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "18": {
          "h": 6,
          "w": 9,
          "x": 9,
          "y": 9
        },
        "19": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 9
        },
        "2": {
          "h": 6,
          "w": 9,
          "x": 0,
          "y": 9
        },
        "20": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 12
        },
        "22": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "23": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "24": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 42
        },
        "26": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "27": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 45
        },
        "28": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 45
        },
        "29": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 45
        },
        "3": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 21
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 50
        },
        "31": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 50
        },
        "32": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 50
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "35": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 32
        },
        "36": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 55
        },
        "4": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 21
        },
        "5": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 21
        },
        "6": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 26
        },
        "7": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 26
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 37
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 37
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Virtual Machines\n\nThis dashboard provides comprehensive monitoring of Azure Virtual Machines, focusing on critical performance metrics, resource utilization, and health indicators. Track CPU, disk I/O, and network performance across all VM instances to ensure optimal service delivery and quickly identify performance bottlenecks or resource constraints.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"vm\",\"dt.smartscape.azure_microsoft_compute_virtualmachines\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries osLatency = avg(cloud.azure.microsoft_compute.virtualmachines.OSDiskLatency),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(osLatency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "OS disk latency (ms)",
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
          "query": "timeseries {inFlows = avg(cloud.azure.microsoft_compute.virtualmachines.InboundFlows), outFlows = avg(cloud.azure.microsoft_compute.virtualmachines.OutboundFlows)},\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd inFlowsLast = arrayLast(inFlows)\n| fieldsAdd outFlowsLast = arrayLast(outFlows)\n| sort inFlowsLast + outFlowsLast desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inbound vs outbound flows",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "azure.resource.name"
                ]
              }
            },
            "legend": {
              "ratio": 10
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The most recent percentage of physical CPU time that Azure Virtual Machines uses to run the VM instance, which includes time spent to run both the user code and the Azure code.",
          "query": "timeseries max = max(cloud.azure.microsoft_compute.virtualmachines.PercentageCPU),\n  filter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id}\n| fieldsadd lastMaxCPU=toLong(arrayLast(max))\n| fields azure.resource.name, lastMaxCPU\n| sort lastMaxCPU desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization rate for 10 instances with highest usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1745392639266,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "lastMaxCPU",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| filter in(toString(id), array($SmartscapeId))\n| parse azure.object, \"JSON:json\"\n| fields vmSize = json[configuration][properties][hardwareProfile][vmSize]\n| filter isNotNull(vmSize)\n| summarize  count=count(), by: {vmSize}\n| sort count desc\n| limit toLong($Limit)",
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
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=count(), by: {azure.location}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Virtual machine instances per region",
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
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| filter in(toString(id), array($SmartscapeId))\n| parse azure.object, \"JSON:json\"\n| fields osType = json[configuration][properties][storageProfile][osDisk][osType]\n| summarize  count=count(), by: {osType}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Virtual Machines instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "prefixIcon": "DesktopIcon"
            }
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries NetworkOutput = avg(cloud.azure.microsoft_compute.virtualmachines.NetworkOutTotal),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(NetworkOutput) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network out (bytes)",
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
              "ratio": 20
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries NetworkInput = sum(cloud.azure.microsoft_compute.virtualmachines.NetworkInTotal),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd groupSum = arraySum(NetworkInput)\n| summarize TotalNetworkInput = sum(groupSum)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Network in (bytes)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries NetworkInput = avg(cloud.azure.microsoft_compute.virtualmachines.NetworkInTotal),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(NetworkInput) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network in (bytes)",
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
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries NetworkOutput = sum(cloud.azure.microsoft_compute.virtualmachines.NetworkOutTotal),\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd groupSum = arraySum(NetworkOutput)\n| summarize TotalNetworkOutput = sum(groupSum)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Network out (bytes)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "22": {
          "content": "##### Network",
          "type": "markdown"
        },
        "23": {
          "content": "##### Storage",
          "type": "markdown"
        },
        "24": {
          "content": "",
          "type": "markdown"
        },
        "26": {
          "content": "### Scale sets\n\nOverview of the health, performance, and scaling behavior of your scale sets.\n\n---",
          "type": "markdown"
        },
        "27": {
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
          "title": "CPU utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 17
            }
          }
        },
        "28": {
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
          "title": "CPU credits remaining",
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries m1=max(cloud.azure.microsoft_compute.virtualmachinescalesets.VmAvailabilityMetric, rollup:sum),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd intervalToMinutes = toLong(interval)/60000000000\n| fieldsAdd m1 = if(m1[]\u003eintervalToMinutes, intervalToMinutes, else: m1[])\n| fieldsAdd m1=(m1[]/intervalToMinutes)*100\n| fieldsAdd metricName = \"%\"\n| sort m1 desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VM availability",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "apdex",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries readBytes = sum(cloud.azure.microsoft_compute.virtualmachines.DiskReadBytes),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(readBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk read (bytes)",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            }
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries {freeBytes = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.AvailableMemoryBytes)},\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(freeBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Available memory",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries {read = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskReadBytes),\n          write = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskWriteBytes)},\n          by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n          filter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(read) + arrayAvg(write) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk throughput (bytes/sec)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "read",
                "write"
              ]
            }
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries {readOps  = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskReadOperations_Sec),\n          writeOps = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.DiskWriteOperations_Sec)},\n          by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(readOps) + arrayAvg(writeOps) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk IOPS",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "readOps",
                "writeOps"
              ]
            }
          }
        },
        "33": {
          "content": "##### Performance and usage",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries util = avg(cloud.azure.microsoft_compute.virtualmachines.PercentageCPU),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(util) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg CPU Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries util = avg(cloud.azure.microsoft_compute.virtualmachines.PercentageCPU),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd newUtils = arrayLast(util)\n| sort newUtils desc\n| fields azure.resource.name, newUtils\n| sort newUtils desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Utilization (Top $Limit highest usage)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "36": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries {readOps = avg(cloud.azure.microsoft_compute.virtualmachines.DiskReadOperations_Sec),\n            writeOps = avg(cloud.azure.microsoft_compute.virtualmachines.DiskWriteOperations_Sec)},\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(readOps) + arrayAvg(writeOps) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk I/O operations/sec",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name",
                "readOps",
                "writeOps"
              ]
            }
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries writeBytes = sum(cloud.azure.microsoft_compute.virtualmachines.DiskWriteBytes),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(writeBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk write (bytes)",
          "type": "data",
          "visualization": "barChart",
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
          "query": "timeseries availMemB = avg(cloud.azure.microsoft_compute.virtualmachinescalesets.AvailableMemoryBytes),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(availMemB) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Available memory (bytes)",
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
          "query": "timeseries availMemP = avg(cloud.azure.microsoft_compute.virtualmachines.AvailableMemoryPercentage),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(availMemP) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Available memory (%)",
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
          "query": "timeseries creditsUsed = avg(cloud.azure.microsoft_compute.virtualmachines.CPUCreditsConsumed),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(creditsUsed) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU credits consumed",
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries creditsLeft = avg(cloud.azure.microsoft_compute.virtualmachines.CPUCreditsRemaining),\nby:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\nfilter:{\n\tin(azure.subscription, array($Subscription)) AND\n\tin(azure.location, array($Location)) AND\n\tin(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(creditsLeft) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU credits remaining",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_COMPUTE_VIRTUALMACHINES\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-virtual-machines"
  # private = false
}
