resource "dynatrace_document" "Azure_Virtual_Network_Gateway" {
  name      = "Azure Virtual Network Gateway"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 13
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 13
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 19
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 19
        },
        "16": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "18": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 30
        },
        "19": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 30
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "21": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "22": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "3": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "4": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "5": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "6": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "7": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Azure Virtual Network Gateways\n\nMonitor ExpressRoute gateway CPU saturation and active-flow counts, VPN tunnel throughput in both directions, average tunnel bandwidth, and traffic-selector mismatch packet drops across your Azure Virtual Network Gateways.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_network_virtualnetworkgateways\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of active flows through the ExpressRoute gateway per instance - a rapid increase can indicate sudden traffic spikes or a flow-table exhaustion risk",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayActiveFlows),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ER Active Flows by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "ExpressRoute gateway packet rate per instance - high pps with relatively flat CPU suggests large numbers of small packets; correlated with CPU tells you whether the gateway is packet-rate or byte-rate bound",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayPacketsPerSecond),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ER Packets/sec by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "ExpressRoute gateway received throughput in bits per second per instance - compare against the provisioned circuit bandwidth to gauge utilization and plan capacity upgrades",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayBitsPerSecond),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ER Bits/sec by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": " bit/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "13": {
          "content": "##### VPN Tunnel Throughput",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes received through VPN tunnels per gateway instance; highest-volume instances shown first - sudden drops can signal tunnel disconnection",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelIngressBytes),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tunnel Ingress Bytes by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes sent through VPN tunnels per gateway instance; highest-volume instances shown first - should be compared with ingress to detect asymmetric traffic or failures",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelEgressBytes),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tunnel Egress Bytes by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average VPN tunnel bandwidth in bytes per second per gateway - sustained usage near the Gateway SKU bandwidth limit indicates a need to scale up or add connections",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelAverageBandwidth),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tunnel Average Bandwidth by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "bytePerSecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data-rate"
              }
            ]
          }
        },
        "17": {
          "content": "##### Tunnel Packets and Drop Health",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Discrete packet count received through VPN tunnels per gateway; compare with egress to spot asymmetry or retransmission patterns",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelIngressPackets),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tunnel Ingress Packets by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Discrete packet count sent through VPN tunnels per gateway; compare with ingress packets to identify one-sided connectivity issues",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelEgressPackets),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tunnel Egress Packets by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of Virtual Network Gateways matching the current filters",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_VIRTUALNETWORKGATEWAYS\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Gateways",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Inbound packets dropped due to traffic-selector mismatch per gateway - any drops indicate the remote peer is sending traffic from a subnet not in the local IPsec policy, requiring IKE reconfiguration",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelIngressPacketDropTSMismatch),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress TS Mismatch Drops by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Outbound packets dropped due to traffic-selector mismatch per gateway - drops mean the Azure gateway is attempting to send to a destination not matching the remote peer policy; fix by aligning IPsec traffic selectors on both sides",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelEgressPacketDropTSMismatch),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Egress TS Mismatch Drops by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
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
        "22": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average ExpressRoute gateway CPU utilization - sustained values above 80% risk packet drops and latency spikes",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayCpuUtilization),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg ER CPU",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 60
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Avg ER CPU",
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
                "added": 1740489600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average ExpressRoute gateway throughput in bits per second - compare against circuit SKU limit to gauge saturation",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayBitsPerSecond),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg ER Bits/sec",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Avg ER Bits/sec",
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
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": " bit/s",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total bytes received across all VPN tunnels in the selected timeframe",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelIngressBytes),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd total = arraySum(val)\n| summarize Total = sum(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Tunnel Ingress",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Tunnel Ingress Bytes",
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
                "added": 1740489600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total bytes sent across all VPN tunnels in the selected timeframe",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelEgressBytes),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd total = arraySum(val)\n| summarize Total = sum(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Tunnel Egress",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Tunnel Egress Bytes",
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
                "added": 1740489600000,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total tunnel ingress packets dropped due to traffic-selector policy mismatch - any non-zero value indicates an IKE/IPsec policy misconfiguration",
          "query": "timeseries val = sum(cloud.azure.microsoft_network.virtualnetworkgateways.TunnelIngressPacketDropTSMismatch),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| fieldsAdd total = arraySum(val)\n| summarize Total = sum(total)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "TS Mismatch Drops",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Ingress TS Drops",
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
                "added": 1740489600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "8": {
          "content": "##### ExpressRoute Gateway",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "ExpressRoute gateway CPU utilization per instance - sorted by highest average to surface overloaded gateways; sustained values above 80% risk circuit instability",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.virtualnetworkgateways.ExpressRouteGatewayCpuUtilization),\n  by:{azure.resource.name, azure.subscription, azure.location, azure.resource.group, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ER CPU Utilization by Instance",
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
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1740489600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_VIRTUALNETWORKGATEWAYS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_VIRTUALNETWORKGATEWAYS\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_VIRTUALNETWORKGATEWAYS\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_VIRTUALNETWORKGATEWAYS\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-vnet-gateway"
  # private = false
}
