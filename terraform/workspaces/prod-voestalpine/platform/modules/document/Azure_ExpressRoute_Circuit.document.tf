resource "dynatrace_document" "Azure_ExpressRoute_Circuit" {
  name      = "Azure ExpressRoute Circuit"
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
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 20
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 20
        },
        "16": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "17": {
          "h": 4,
          "w": 5,
          "x": 0,
          "y": 29
        },
        "18": {
          "h": 4,
          "w": 5,
          "x": 5,
          "y": 29
        },
        "19": {
          "h": 4,
          "w": 5,
          "x": 10,
          "y": 29
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "20": {
          "h": 4,
          "w": 5,
          "x": 15,
          "y": 29
        },
        "21": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 29
        },
        "22": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "23": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 34
        },
        "24": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 34
        },
        "25": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "26": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "27": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "28": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 45
        },
        "29": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "3": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "4": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "5": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "6": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "7": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### ExpressRoute Circuits\n\nMonitor throughput, BGP and ARP availability, and QoS drop rates across your Azure ExpressRoute Circuits.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_network_expressroutecircuits\":\"$CircuitSmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of ExpressRoute Circuits matching filters",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTECIRCUITS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| filter in(toString(id), array($CircuitSmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Circuits",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Circuits",
              "labelMode": "none",
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
                "added": 1773133709417,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "10": {
          "content": "##### Peering Availability",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "BGP session availability - dips indicate session flaps",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BgpAvailability),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "BGP Availability by Circuit",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "ratio"
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
          "description": "ARP availability - failures precede BGP drops",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.ArpAvailability),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ARP Availability by Circuit",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "ratio"
              }
            ]
          }
        },
        "13": {
          "content": "##### QoS Drops",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Inbound bits dropped by QoS per circuit",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.QosDropBitsInPerSecond),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "QoS Drop Bits In/s by Circuit",
          "type": "data",
          "visualization": "lineChart",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data-rate"
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
          "description": "Outbound bits dropped by QoS per circuit",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.QosDropBitsOutPerSecond),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "QoS Drop Bits Out/s by Circuit",
          "type": "data",
          "visualization": "lineChart",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data-rate"
              }
            ]
          }
        },
        "16": {
          "content": "### ExpressRoute Ports\n\nMonitor optical receive and transmit light levels across your Azure ExpressRoute Ports. Declining Rx levels indicate fiber degradation or connector issues.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_network_expressrouteports\":\"$PortSmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of ExpressRoute Ports matching filters",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTEPORTS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| filter in(toString(id), array($PortSmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ports",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Ports",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average optical receive power - healthy range is -10 to -20 dBm",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.RxLightLevel),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Rx Light Level",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Avg Rx Light Level",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Worst-case receive power - a sudden drop signals imminent link failure",
          "query": "timeseries val = min(cloud.azure.microsoft_network.expressrouteports.RxLightLevel),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| fieldsAdd m = arrayMin(val)\n| summarize Total = min(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Min Rx Light Level",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Min Rx Light Level",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": " dBm",
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
          "description": "Fleet-wide average inbound throughput",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BitsInPerSecond),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Bits In/s",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Avg Bits In/s",
              "labelMode": "none",
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
                "added": 1773133709417,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data-rate"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average optical transmit power - drops indicate failing transceiver",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.TxLightLevel),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Tx Light Level",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Avg Tx Light Level",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Worst-case transmit power - deviation indicates degrading transceiver",
          "query": "timeseries val = min(cloud.azure.microsoft_network.expressrouteports.TxLightLevel),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| fieldsAdd m = arrayMin(val)\n| summarize Total = min(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Min Tx Light Level",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Min Tx Light Level",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "22": {
          "content": "##### Rx Light Level",
          "type": "markdown"
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Receive optical power per port - sorted lowest first",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.RxLightLevel),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Rx Light Level by Port",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Lane-level Rx power to pinpoint degraded fiber paths",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.RxLightLevel),\n  by: {azure.link, azure.lane, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Rx Light Level by Link and Lane",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.link",
                "azure.lane"
              ]
            },
            "legend": {
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "25": {
          "content": "##### Tx Light Level",
          "type": "markdown"
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Transmit optical power per port",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.TxLightLevel),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tx Light Level by Port",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Lane-level Tx power to isolate failing transceiver lanes",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressrouteports.TxLightLevel),\n  by: {azure.link, azure.lane, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($PortSmartscapeId)[])))}\n| sort arrayAvg(val) asc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tx Light Level by Link and Lane",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "azure.link",
                "azure.lane"
              ]
            },
            "legend": {
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": false,
                "identifier": "val",
                "suffix": " dBm",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "28": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "29": {
          "content": "",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Fleet-wide average outbound throughput",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BitsOutPerSecond),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Bits Out/s",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Avg Bits Out/s",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data-rate"
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
          "description": "Average BGP session availability - below 99% signals routing instability",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BgpAvailability),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "BGP Availability",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 90
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "BGP Availability",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "ratio"
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
          "description": "Average ARP table availability - failures block L2 resolution",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.ArpAvailability),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ARP Availability",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 90
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "ARP Availability",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "ratio"
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
          "description": "Inbound bits dropped by QoS - any non-zero means throttling",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.QosDropBitsInPerSecond),\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| fieldsAdd m = arrayAvg(val)\n| summarize Total = avg(m)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "QoS Drop In/s",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "Total",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "QoS Drop In/s",
              "labelMode": "none",
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
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "data-rate"
              }
            ]
          }
        },
        "7": {
          "content": "##### Throughput",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Inbound throughput per circuit - compare against provisioned bandwidth",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BitsInPerSecond),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bits In/s by Circuit",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data-rate"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Outbound throughput per circuit - asymmetric indicates unbalanced routing",
          "query": "timeseries val = avg(cloud.azure.microsoft_network.expressroutecircuits.BitsOutPerSecond),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter:{in(azure.subscription, array($Subscription)) AND\n          in(azure.location, array($Location)) AND\n          in(azure.resource.group, array($ResourceGroup)) AND\n          in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CircuitSmartscapeId)[])))}\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bits Out/s by Circuit",
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
              "ratio": 30
            },
            "unitsOverrides": [
              {
                "added": 1773133709418,
                "baseUnit": "bitPerSecond",
                "decimals": 0,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data-rate"
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTECIRCUITS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
          "key": "CircuitSmartscapeId",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTEPORTS\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
          "key": "PortSmartscapeId",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTE*\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTE*\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
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
          "input": "smartscapeNodes \"AZURE_MICROSOFT_NETWORK_EXPRESSROUTE*\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
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
  custom_id = "dynatrace.clouds.azure-expressroute"
  # private = false
}
