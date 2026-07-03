resource "dynatrace_document" "SNMP_Traps" {
  name      = "SNMP Traps"
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
        "13": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 5
        },
        "14": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 8
        },
        "15": {
          "h": 6,
          "w": 4,
          "x": 0,
          "y": 5
        },
        "16": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 5
        },
        "17": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "2": {
          "h": 4,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "4": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 5
        },
        "7": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
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
          "content": "## SNMP Traps\n\nThis dashboard provides an overview of data ingested by the SNMP Traps extension.\n\n-----\n#### [⚙️ Configure Extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-traps-generic/configs)\n#### [📖 Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-traps-generic/details)",
          "type": "markdown"
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.network:device`\n| fields entity.name, status = if(isNotNull(same_as[`dt.entity.snmptraps:com_dynatrace_ext_snmp-traps`]), \"enabled\", else: \"not enabled\")\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Traps integration status by network device",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "comparator": "=",
                  "id": 186764.20000004768,
                  "value": "enabled"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-severe-default, #d56b1a)"
                  },
                  "comparator": "=",
                  "id": 257555.80000001192,
                  "value": "not enabled"
                }
              ],
              "dataMappings": {
                "value": "status"
              },
              "displayedFields": [
                "entity.name"
              ],
              "labels": {
                "showLabels": true
              },
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "shape": "hexagon"
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
          "query": "timeseries value=sum(`com.dynatrace.extension.snmp-traps-generic.traps.count`, scalar: true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Traps ingested",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "value",
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
                "field": "value",
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
                "displayUnit": null,
                "id": "host_info.single_value",
                "identifier": "value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "15": {
          "content": "#### 🔗 Navigate to entities:\n* [SNMP Traps Device](/ui/apps/dynatrace.classic.technologies/ui/entity/list/snmptraps:com_dynatrace_ext_snmp-traps)\n* [Network Devices](/ui/apps/dynatrace.infraops/explorer/Network%20Devices)",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries value=sum(`com.dynatrace.extension.snmp-traps-generic.traps.count`)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Traps over time",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "hidden": true
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
          "query": "fetch logs\n| filter log.source == \"snmptraps\"\n| limit 200\n| fieldsAdd url = \"/ui/apps/dynatrace.infraops/explorerNetwork%20devices?fullPageId=\"\n| fieldsAdd\n  `Network device` = if(isNotNull(`dt.entity.network:device`), concat(\"[\", device.name, \"](\",url, `dt.entity.network:device`, \")\"), else: null),\n  `Traps Device` = if(isNotNull(`dt.entity.network:device`), concat(\"[\", device.name, \"](\", url, `dt.entity.network:device`, \"\u0026pageBrowser=relatedEntity\u0026browserRelatedEntity=\", `dt.entity.snmptraps:com_dynatrace_ext_snmp-traps`, \")\"), else: null)\n| fields timestamp, status, content, device.address, dt.source_entity, event.type, log.source, loglevel, snmp.trap_oid, `SNMPv2-MIB::snmpTrapOID`, device.name, `dt.entity.snmptraps:com_dynatrace_ext_snmp-traps`, snmp.version, `Network device`, `Traps Device`",
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
              "columnOrder": [
                "[\"timestamp\"]",
                "[\"status\"]",
                "[\"content\"]",
                "[\"device.address\"]",
                "[\"dt.source_entity\"]",
                "[\"event.type\"]",
                "[\"log.source\"]",
                "[\"loglevel\"]",
                "[\"snmp.trap_oid\"]",
                "[\"SNMPv2-MIB::snmpTrapOID\"]",
                "[\"device.name\"]",
                "[\"dt.entity.snmptraps:com_dynatrace_ext_snmp-traps\"]",
                "[\"snmp.version\"]",
                "[\"Network device\"]",
                "[\"Traps Device\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1756202161718,
                  "value": "log-content"
                },
                {
                  "fields": [
                    "Network device",
                    "Traps Device"
                  ],
                  "id": 2406288.200000018,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false
            },
            "thresholds": []
          }
        },
        "2": {
          "content": "![](https://dt-cdn.net/hub/logos/snmp-traps-statistics.png)",
          "type": "markdown"
        },
        "3": {
          "content": "### Overview and trap sources\n",
          "title": "",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.snmptraps:com_dynatrace_ext_snmp-traps`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "SNMP Traps Devices",
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
          "content": "\n",
          "type": "markdown"
        },
        "8": {
          "content": "## Details\n",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 19
    })
  custom_id = "com-dynatrace-extension-snmp-traps-generic-snmp-traps-overview"
  # private = false
}
