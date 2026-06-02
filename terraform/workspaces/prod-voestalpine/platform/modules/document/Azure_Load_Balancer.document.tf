resource "dynatrace_document" "Azure_Load_Balancer" {
  name      = "Azure Load Balancer"
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
          "w": 24,
          "x": 0,
          "y": 21
        },
        "11": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "2": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 3
        },
        "3": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 6
        },
        "5": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 6
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 11
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 11
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 16
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 16
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Azure Load Balancer\n\nFocus on VIP/DIP data path availability and packet volume. Quickly identify degraded endpoints and trends across Standard and Gateway SKUs.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_network_loadbalancers\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total packets processed across the selected scope (Gateway SKU).",
          "query": "timeseries packets = sum(cloud.azure.microsoft_network.loadbalancers.PacketCount), by: {azure.resource.name, azure.location, azure.resource.group},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Packet count (overall trend)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            }
          }
        },
        "11": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average data path availability to the front-end (VIP) across the selected timeframe.",
          "query": "timeseries vip = avg(cloud.azure.microsoft_network.loadbalancers.VipAvailability),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd VipAvailability = arrayAvg(vip)",
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
            "label": "VIP availability",
            "recordField": "VipAvailability",
            "showLabel": false
          },
          "title": "Average VIP availability",
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
          "description": "Average backend endpoint (DIP) health across the selected timeframe.",
          "query": "timeseries dip = avg(cloud.azure.microsoft_network.loadbalancers.DipAvailability),\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd DipAvailability = arrayAvg(dip)",
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
            "label": "DIP availability",
            "recordField": "DipAvailability",
            "showLabel": false
          },
          "title": "Average DIP availability",
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
          "description": "Front-end data path availability (VIP) per load balancer over time.",
          "query": "timeseries vip = avg(cloud.azure.microsoft_network.loadbalancers.VipAvailability),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n  in(azure.location, array($Location)) AND\n  in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(vip) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VIP availability by load balancer",
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
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Backend endpoint health (DIP) per load balancer over time.",
          "query": "timeseries dip = avg(cloud.azure.microsoft_network.loadbalancers.DipAvailability),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArrayAvg(dip) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DIP availability by load balancer",
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
          "description": "Total packets processed per load balancer over time (Gateway SKU).",
          "query": "timeseries packets = sum(cloud.azure.microsoft_network.loadbalancers.PacketCount),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort ArraySum(packets) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Packet count by load balancer",
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
            },
            "enabled": false
          },
          "description": "Side-by-side view of average VIP and DIP availability per load balancer.",
          "query": "timeseries {vip = avg(cloud.azure.microsoft_network.loadbalancers.VipAvailability), dip = avg(cloud.azure.microsoft_network.loadbalancers.DipAvailability)},\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd VIP = arrayAvg(vip), DIP = arrayAvg(dip)\n| fields azure.resource.name, VIP, DIP\n| sort DIP asc, VIP asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VIP vs DIP (by resource)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Overall VIP availability trend across the selected scope.",
          "query": "timeseries vip = avg(cloud.azure.microsoft_network.loadbalancers.VipAvailability), by: {azure.resource.name, azure.location, azure.resource.group},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VIP availability (overall trend)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Overall DIP availability trend across the selected scope.",
          "query": "timeseries dip = avg(cloud.azure.microsoft_network.loadbalancers.DipAvailability), by: {azure.resource.name, azure.location, azure.resource.group},\n  filter:{in(azure.subscription, array($Subscription)) AND in(azure.location, array($Location)) AND in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DIP availability (overall trend)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "gapPolicy": "connect"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_LOADBALANCERS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_LOADBALANCERS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_LOADBALANCERS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_LOADBALANCERS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-loadbalancers"
  # private = false
}
