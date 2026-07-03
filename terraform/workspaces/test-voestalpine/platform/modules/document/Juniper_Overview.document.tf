resource "dynatrace_document" "Juniper_Overview" {
  name      = "Juniper Overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 22,
          "x": 2,
          "y": 0
        },
        "10": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 8
        },
        "11": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 5
        },
        "12": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 5
        },
        "13": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 8
        },
        "14": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 8
        },
        "15": {
          "h": 6,
          "w": 4,
          "x": 20,
          "y": 5
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "19": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "2": {
          "h": 4,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "20": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 17
        },
        "21": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 17
        },
        "23": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 13
        },
        "24": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 13
        },
        "25": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 13
        },
        "26": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "27": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "28": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "6": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 5
        },
        "7": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 5
        },
        "8": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 5
        },
        "9": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 8
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 24,
          "mode": "responsive"
        }
      },
      "tiles": {
        "1": {
          "content": "## Overview of Juniper extension data\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-juniper/configs)\n#### [📖 Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-juniper/details)",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_disk`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Juniper SNMP Device Disk",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_fru`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Juniper Device FRU",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_vlan`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Juniper SNMP Device VLAN",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Juniper SNMP Device Installed App",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_running_app`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Juniper SNMP Device Running App",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "15": {
          "content": "#### 🔗 Navigate to entities:\n* [Generic Juniper SNMP Device](/ui/apps/dynatrace.infraops/explorer/Network%20devices?perspective=Default#filtering=%22Discovered+type%22+%3D+%22*juniper*%22)\n* [Generic Juniper SNMP Device Network Interface](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface)\n* [Generic Juniper SNMP Device Routing Engine](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine)\n* [Generic Juniper SNMP Device IP Address](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_ip_address)\n* [Juniper SNMP Device Disk](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_disk)\n* [Juniper Device FRU](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_fru)\n* [Juniper SNMP Device VLAN](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_vlan)\n* [Juniper SNMP Device Installed App](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app)\n* [Juniper SNMP Device Running App](/ui/apps/dynatrace.infraops/technology/network/com.dynatrace.extension.snmp-generic-juniper/snmp:com_dynatrace_extension_snmp_generic_juniper_running_app)",
          "type": "markdown"
        },
        "16": {
          "content": "\n",
          "type": "markdown"
        },
        "17": {
          "content": "## Physical device stats\n",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries state=avg(com.dynatrace.extension.juniper.generic.routingengine.state, scalar: true),\n  by: {\n    routingengine.descr,\n    `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`,\n    `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`,\n    `dt.entity.network:device`\n  }\n| summarize state=takeLast(state), \n    by: {routingengine.descr, `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`, `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`, `dt.entity.network:device`}\n| lookup [\n    timeseries {\n      cpu=avg(`com.dynatrace.extension.juniper.generic.routingengine.cpu.utilization`, scalar:true),\n      mem=avg(`com.dynatrace.extension.juniper.generic.routingengine.memory.utilization`, scalar:true),\n      temp=avg(`com.dynatrace.extension.juniper.generic.routingengine.temperature`, scalar:true)\n    }, by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine` }\n  ], \n  sourceField:`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`, \n  lookupField:`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`,\n  fields: { cpu, mem, temp }\n| fields \n  `Juniper device`=concat(\n    \"[\", entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`), \"](/ui/apps/dynatrace.infraops/explorer/Network%20Devices?fullPageId=\", `dt.entity.network:device`, \"\u0026pageBrowser=relatedEntity\u0026browserRelatedEntity=\", `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`, \")\" \n  ),\n  `Routing engine`=concat(\n    \"[\", routingengine.descr , \"](/ui/apps/dynatrace.classic.technologies/ui/entity/\", `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`, \")\"\n  ),\n  State=if(\n    state == 2, \"Running\", else: if(\n    state == 3, \"Ready\", else: if(\n    state == 4, \"Reset\", else : if(\n    state == 5, \"Running at full speed\", else: if(\n    state == 6, \"Down\", else: if(\n    state == 7, \"Standby\", else: \"Unknown\"\n  )))))),\n  `CPU usage (avg)`=cpu,\n  `Memory usage (avg)`=mem,\n  `Temperature (avg)`=temp",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Routing engines",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Routing engine",
                    "Juniper device"
                  ],
                  "id": 913702.4000000004,
                  "value": "markdown"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1755704692367,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU usage (avg)",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1755704701019,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory usage (avg)",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1755704708688,
                "baseUnit": "degree_celsius",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Temperature (avg)",
                "suffix": "",
                "unitCategory": "temperature"
              }
            ]
          }
        },
        "2": {
          "content": "![](https://dt-cdn.net/hub/logos/juniper-networks-snmp.png)",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`com.dynatrace.extension.juniper.generic.routingengine.cpu.utilization`),\n  by: { routingengine.descr, device.address }\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Routing Engine CPU Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Routing Engine CPU Utilization"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "name",
                "routingengine.descr",
                "device.address"
              ]
            },
            "thresholds": []
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`com.dynatrace.extension.juniper.generic.routingengine.memory.utilization`),\n  by: { routingengine.descr, device.address }\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Routing Engine Memory Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Routing Engine Memory Utilization"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "name",
                "device.address",
                "routingengine.descr"
              ]
            },
            "thresholds": []
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`\n| fieldsAdd netDevId = same_as[`dt.entity.network:device`][0], url=\"/ui/apps/dynatrace.infraops/explorer/Network%20devices\"\n| fieldsAdd\n  `Juniper device`=concat(\"[\", entity.name, \"](\", url, \"?fullPageId=\", netDevId, \"\u0026pageBrowser=relatedEntity\u0026browserRelatedEntity=\", id, \")\"),\n  `Network device`=concat(\"[\", entityName(netDevId, type: \"dt.entity.network:device\"), \"](\", url, \"?fullPageId=\", netDevId, \")\")\n| lookup [\n    timeseries Uptime=avg(com.dynatrace.extension.network_device.sysuptime, scalar: true),\n    by: { `dt.entity.network:device` }\n  ], sourceField:netDevId, lookupField:`dt.entity.network:device`, fields: { Uptime }\n| fieldsRemove entity.name, id, netDevId, url",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device uptime",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Juniper device",
                    "Network device"
                  ],
                  "id": 1868863.6000000238,
                  "value": "markdown"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1755701900462,
                "baseUnit": "centisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Uptime",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "timeseries {\n    out=avg(com.dynatrace.extension.juniper.generic.device.udp.out.datagrams.count),\n    in=avg(com.dynatrace.extension.juniper.generic.device.udp.in.datagrams.count)\n  },\n  by:{`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`}\n| fieldsAdd total=in[]+out[]\n| fieldsRemove in, out",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "UDP Datagrams",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    out=avg(com.dynatrace.extension.juniper.generic.if.out.packets),\n    in=avg(com.dynatrace.extension.juniper.generic.if.in.packets)\n  },\n  by:{`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`}\n| fieldsAdd total=in[]+out[]\n| fieldsRemove in, out",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "TCP Packets",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "26": {
          "content": "\n",
          "type": "markdown"
        },
        "27": {
          "content": "## Traffic errors\n",
          "type": "markdown"
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`\n| fields entity.name, id, netDevId=same_as[`dt.entity.network:device`][0], url=\"/ui/apps/dynatrace.infraops/explorer/Network%20devices?fullPageId=\"\n| lookup [\n    timeseries {\n      tcpErrIn=sum(com.dynatrace.extension.juniper.generic.device.tcp.in.errors.count, scalar: true),\n      udpErrIn=sum(com.dynatrace.extension.juniper.generic.device.udp.in.errors.count, scalar: true),\n      tcpConnErr=sum(com.dynatrace.extension.juniper.generic.device.tcp.conn.attempt_fails.count, scalar: true),\n      udpNoPorts=sum(com.dynatrace.extension.juniper.generic.device.udp.in.no_ports.count, scalar: true),\n      tcpErrOut=sum(com.dynatrace.extension.juniper.generic.device.tcp.out.errors.count, scalar: true),\n      udpErrOut=sum(com.dynatrace.extension.juniper.generic.device.udp.out.errors.count, scalar: true)\n    },\n    by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device` }\n  ], \n  sourceField: id, \n  lookupField:`dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`,\n  fields: { tcpErrIn, tcpErrOut, udpErrIn, udpErrOut, tcpConnErr, udpNoPorts }\n| fields\n  `Juniper device`=if(\n    isNotNull(netDevId),\n    concat(\"[\", entity.name, \"](\",url,netDevId,\"\u0026pageBrowser=relatedEntity\u0026browserRelatedEntity=\", id, \")\"),\n    else: entity.name\n  ),\n  `TCP Errors In`=tcpErrIn,\n  `TCP Errors Out`=tcpErrOut,\n  `TCP Connection Errors`=tcpConnErr,\n  `UDP Errors In`=udpErrIn,\n  `UDP Errors Out`=udpErrOut,\n  `UDP NoPorts Packets`=udpNoPorts",
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
                    "Juniper device"
                  ],
                  "id": 261763.5,
                  "value": "markdown"
                },
                {
                  "fields": [
                    "tcpErrIn",
                    "tcpErrOut",
                    "udpErrIn",
                    "udpErrOut",
                    "tcpConnErr",
                    "udpNoPorts"
                  ],
                  "id": 268088.2000000179,
                  "value": "number"
                }
              ]
            }
          }
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "title": "",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_device`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Juniper SNMP Device",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Juniper SNMP Device Network Interface",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Juniper SNMP Device Routing Engine",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_ip_address`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Juniper SNMP Device IP Address",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 3,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-snmp-generic-juniper-juniper-overview"
  # private = false
}
