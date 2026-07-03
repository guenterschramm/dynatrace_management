resource "dynatrace_document" "Generic_network_overview" {
  name      = "Generic network overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 11
        },
        "11": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 11
        },
        "12": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "14": {
          "h": 12,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "15": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "17": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 6
        },
        "2": {
          "h": 6,
          "w": 10,
          "x": 4,
          "y": 3
        },
        "4": {
          "h": 6,
          "w": 10,
          "x": 14,
          "y": 3
        },
        "6": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "7": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "9": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 11
        }
      },
      "settings": {},
      "tiles": {
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    m1=avg(com.dynatrace.extension.network_device.memory_used),\n    m2=avg(com.dynatrace.extension.network_device.memory_free)\n  },\n  by: { dt.smartscape.ext_network_device },\n  filter: { isNotNull(dt.smartscape.ext_network_device) and in(getNodeName(dt.smartscape.ext_network_device), $Devices) }\n| fields Used=arrayLast(m1), Free=arrayLast(m2), name=getNodeName(dt.smartscape.ext_network_device)\n| sort Used desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Used",
                  "Free"
                ],
                "valueAxisLabel": "Used,Free"
              },
              "categoryOverrides": {},
              "colorPalette": "blue-steel",
              "legend": {
                "position": "bottom"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1749482439761,
                "baseUnit": "kilobyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Used",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1749482445700,
                "baseUnit": "kilobyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Free",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries {\n    `Traffic in`=avg(com.dynatrace.extension.network_device.if.bytes_in.count, scalar: true),\n    `Traffic out`=avg(com.dynatrace.extension.network_device.if.bytes_out.count, scalar: true)\n  },\n  by: { dt.smartscape.ext_network_interface, dt.smartscape.ext_network_device },\n  filter: { isNotNull(dt.smartscape.ext_network_interface) and in(getNodeName(dt.smartscape.ext_network_device), $Devices) }\n| fieldsAdd name=getNodeName(dt.smartscape.ext_network_interface)\n| sort `Traffic in` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Busiest interfaces",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "dt.entity.network:device,dt.entity.network:interface,name",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Traffic in",
                  "Traffic out"
                ],
                "valueAxisLabel": "Traffic in,Traffic out"
              },
              "categoryOverrides": {},
              "colorPalette": "purple-rain",
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "purple-rain",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "12": {
          "content": " ",
          "type": "markdown"
        },
        "13": {
          "content": "### Network neighbors",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| traverse { belongs_to }, { EXT_NETWORK_INTERFACE }, direction:\"backward\", fieldsKeep: { id, name, description}\n| traverse { calls }, { EXT_NETWORK_INTERFACE }, direction:\"forward\", fieldsKeep: { id, name }\n| traverse { belongs_to}, { EXT_NETWORK_DEVICE }, direction:\"forward\", fieldsKeep: { id, name }\n| fields\n    base.device=record(id=id, name=name),\n    base.interface=record(id=dt.traverse.history[2][id], name=dt.traverse.history[2][name]),\n    connection=\"   ⬅️   \",\n    neighbor.interface=record(id=dt.traverse.history[1][id], name=dt.traverse.history[1][name]),\n    neighbor.device=record(id=dt.traverse.history[0][id], name=dt.traverse.history[0][name])\n| filter in(base.device[name], $Devices) or in(neighbor.device[name], $Devices)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Device",
                    "Port",
                    "Interface",
                    "Neighbor Interface",
                    "Neighbor Port",
                    "Neighbor Device",
                    "Neighbor Address"
                  ],
                  "id": 5491585.700000018,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Neighbor Address\"]": 239,
                "[\"Neighbor desc\"]": 943
              }
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| filter in(name, $Devices)\n| summarize count=count(), by: {monitoring_mode}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Devices by monitoring mode",
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
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "count",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count",
              "labelMode": "data",
              "recordField": "count",
              "recordLabel": "monitoring_mode",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_INTERFACE\n| traverse { belongs_to }, { EXT_NETWORK_DEVICE }, direction:\"forward\"\n| filter in(name, $Devices)  \n| fieldsAdd source=if(monitoring_mode == \"Neighbor\", \"Neighbor\", else: \"Direct query\")\n| summarize count=count(), by:{source}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Interfaces by source of data",
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
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "count",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count",
              "labelMode": "data",
              "recordField": "count",
              "recordLabel": "source",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| filter in(name, $Devices)\n| fields name, monitoring_mode",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network Devices by monitoring mode",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-03-default, #627cfe)"
                  },
                  "field": "monitoring_mode",
                  "type": "string",
                  "value": "Neighbor"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "field": "monitoring_mode",
                  "type": "string",
                  "value": "Discovery"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "monitoring_mode"
              },
              "displayedFields": [
                "name"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_INTERFACE\n| traverse { belongs_to }, { EXT_NETWORK_DEVICE }, direction:\"forward\", fieldsKeep:{name}\n| filter in(name, $Devices)\n| fieldsAdd source=if(monitoring_mode == \"Neighbor\", \"Neighbor\", else: \"Direct query\")\n| fields name=dt.traverse.history[0][name], source",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "field": "source",
                  "type": "string",
                  "value": "Direct query"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-03-default, #627cfe)"
                  },
                  "field": "source",
                  "type": "string",
                  "value": "Neighbor"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "source"
              },
              "displayedFields": [
                "name"
              ],
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle"
            }
          }
        },
        "6": {
          "content": "### Generic network overview\n\nA simple entry point to generic network data which brings together findings from the [SNMP Autodiscovery](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-auto-discovery/details) extension along with any metrics collected by specialized extensions.\n\n-----\n##### [⚙️ Autodiscovery configuration](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-auto-discovery/configs) |  [Network Devices](/ui/apps/dynatrace.infraops/explorer/Network%20devices)",
          "type": "markdown"
        },
        "7": {
          "content": " ",
          "type": "markdown"
        },
        "8": {
          "content": "### Monitored devices",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries cpu=avg(com.dynatrace.extension.network_device.cpu_usage), \n  by: { dt.smartscape.ext_network_device },\n  filter: { isNotNull(dt.smartscape.ext_network_device) and in(getNodeName(dt.smartscape.ext_network_device), $Devices) }\n| fieldsAdd device.name=getNodeName(dt.smartscape.ext_network_device)\n| sort arrayAvg(cpu) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes EXT_NETWORK_DEVICE\n| fields value=name",
          "key": "Devices",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "com-dynatrace-extension-snmp-auto-discovery-generic-network-overview"
  # private = false
}
