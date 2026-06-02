resource "dynatrace_document" "Cisco_Device_Overview" {
  name      = "Cisco Device Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": true,
      "layouts": {
        "10": {
          "h": 9,
          "w": 40,
          "x": 0,
          "y": 24
        },
        "12": {
          "h": 8,
          "w": 16,
          "x": 24,
          "y": 7
        },
        "13": {
          "h": 8,
          "w": 21,
          "x": 0,
          "y": 33
        },
        "14": {
          "h": 8,
          "w": 19,
          "x": 21,
          "y": 33
        },
        "15": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "16": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "17": {
          "h": 2,
          "w": 38,
          "x": 2,
          "y": 0
        },
        "18": {
          "h": 2,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "23": {
          "h": 4,
          "w": 40,
          "x": 0,
          "y": 41
        },
        "25": {
          "h": 3,
          "w": 28,
          "x": 12,
          "y": 3
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 2
        },
        "5": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 6
        },
        "6": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "7": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 15
        },
        "8": {
          "h": 7,
          "w": 40,
          "x": 0,
          "y": 16
        },
        "9": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 23
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 40,
          "mode": "responsive"
        }
      },
      "tiles": {
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { established_time = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cbgp.established_time`), updates_received_count = sum(`com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_received_count`), updates_sent_count = sum(`com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_sent_count`) }, by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`, cbgp.local.identifier, cbgp.remote.identifier }\n| fieldsAdd established_time = arrayLast(established_time)\n| sort established_time asc\n| fieldsAdd updates_received_count = arraySum(updates_received_count)\n| fieldsAdd updates_sent_count = arraySum(updates_sent_count)\n| fieldsAdd name = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`)\n| fields `Name`=name, `Local identifier`=cbgp.local.identifier, `Remote identifier`=cbgp.remote.identifier, `Established time`=established_time, `Updates received`=updates_received_count, `Updates sent`=updates_sent_count, id=`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic SNMP Cisco Device",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "hiddenColumns": [
                [
                  "A:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "B:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "C:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "D:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "E:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "F:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "A:cbgp.local.identifier.name"
                ],
                [
                  "A:cbgp.remote.identifier.name"
                ],
                [
                  "B:cbgp.local.identifier.name"
                ],
                [
                  "B:cbgp.remote.identifier.name"
                ],
                [
                  "C:cbgp.local.identifier.name"
                ],
                [
                  "C:cbgp.remote.identifier.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "id"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "established_time",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "second",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "established_time",
                "identifier": "Established time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "updates_received_count",
                "identifier": "Updates received",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 2,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "updates_sent_count",
                "identifier": "Updates sent",
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
            }
          },
          "query": "timeseries cpu = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.total.1min.rev`), by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device` }\n| sort arrayAvg(cpu) desc\n| fieldsAdd name = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`)\n| fieldsRemove `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top CPU",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "CPU busy"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "name"
              ]
            },
            "thresholds": []
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries updates_sent_count = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_sent_count`), by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device` }\n| sort arrayAvg(updates_sent_count) desc\n| fieldsAdd name = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`)\n| fieldsRemove `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Updates Sent",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "updates_sent_count"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries updates_received_count = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cbgp.updates_received_count`), by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device` }\n| sort arrayAvg(updates_received_count) desc\n| fieldsAdd name = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`)\n| fieldsRemove `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Updates Received",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "updates_received_count"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              },
              "truncationMode": "middle"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1723737847751,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "second",
                "identifier": "interval",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`\n| summarize entities = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Cisco Devices",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Devices",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "entities",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "entities",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
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
          "query": "fetch `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface`\n| summarize entities = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic Cisco Interfaces",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Devices",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "entities",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "entities",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "17": {
          "content": "### Overview of Generic Cisco Device extension data\n\nStart here to navigate to the extension configuration and/or entity pages and view charts displaying data collected for Cisco devices and interfaces. If you don't see data: ⚙️ [Configure extension]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-cisco-device/configs)\n\n-----",
          "type": "markdown"
        },
        "18": {
          "content": "![](https://dt-cdn.net/hub/logos/generic-cisco-router-snmp-extension.png)",
          "type": "markdown"
        },
        "23": {
          "content": "### Additional Resources:\n#### [Generic Cisco Device Extension Documentation]($TenantUrl/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.snmp-generic-cisco-device/details)\n#### [SNMP Extensions](https://docs.dynatrace.com/docs/ingest-from/extensions20/data-sources/snmp-extensions)",
          "type": "markdown"
        },
        "25": {
          "content": "**🔗 Navigate to entities:**\n* [Generic SNMP Cisco Device Instances]($TenantUrl/ui/apps/dynatrace.infraops/explorer/Network%20devices?perspective=Health#filtering=\"Discovered+type\"+%3D+cisco)",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "type": "markdown"
        },
        "5": {
          "content": "### Cisco Devices",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  cpu = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.total.1min.rev`),\n  used = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.used`),\n  free = avg(`com.dynatrace.extension.snmp-generic-cisco-device.cpm.cpu.memory.free`)\n}, by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device` }\n| fieldsAdd used_percent = (arrayAvg(used) / (arrayAvg(used) +arrayAvg(free))) * 100\n| fields\nDevice = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`), \nid = `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device`,\n`CPU %` = arrayAvg(cpu),\n`Used memory` = arrayAvg(used),\n`Free memory` = arrayAvg(free),\n`Used memory %` = used_percent\n| sort `CPU %` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30m",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Resources by Device",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"Used memory\"]": 141.9499969482422,
                "[\"name\"]": 469.6166687011719
              },
              "enableSparklines": true,
              "hiddenColumns": [
                [
                  "A:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "B:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "C:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "D:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "E:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "F:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_device.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "id"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "Used memory %",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "≥",
                    "id": "0",
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#ECA440",
                    "comparator": "≥",
                    "id": "1",
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": "2",
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              },
              {
                "field": "CPU %",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#ECA440",
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 90
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "uptime",
                "identifier": "Free memory",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "rev",
                "identifier": "CPU %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 4,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "expression.4",
                "identifier": "Used memory",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1723662877544,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Used memory %",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "7": {
          "content": "### Network Interfaces",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries highspeed = avg(`com.dynatrace.extension.snmp-generic-cisco-device.if.highspeed`), by: { `dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface`, if.operstatus, if.adminstatus, if.type }\n| fieldsAdd highspeed = arrayLast(highspeed)\n| sort if.operstatus asc\n| fieldsAdd name = entityName(`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface`)\n| fields `Name` = name, `Speed` = highspeed, if.operstatus, if.adminstatus, if.type, id=`dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Generic SNMP Cisco Device Network Interface",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "hiddenColumns": [
                [
                  "A:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface.name"
                ],
                [
                  "B:dt.entity.snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface.name"
                ],
                [
                  "B:if.operstatus.name"
                ],
                [
                  "B:if.adminstatus.name"
                ],
                [
                  "B:if.type.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ],
                [
                  "id"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "if.operstatus",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "=",
                    "id": "0",
                    "label": "",
                    "value": "up(1)"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-logstatus-none-default, #2c2f3f)"
                    },
                    "comparator": "=",
                    "id": "1",
                    "label": "",
                    "value": "testing(3)"
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "=",
                    "id": "2",
                    "label": "",
                    "value": "down(2)"
                  }
                ],
                "title": ""
              },
              {
                "field": "if.adminstatus",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "up(1)"
                  },
                  {
                    "color": "#6F7285",
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "testing(3)"
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "down(2)"
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1723663800506,
                "baseUnit": "MBps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Speed",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "9": {
          "content": "### BGP",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "//Get tenant URL to generate dashboard links\nimport { getEnvironmentUrl } from \"@dynatrace-sdk/app-environment\"\n\nexport default function () {\n  return [getEnvironmentUrl()];\n}",
          "key": "TenantUrl",
          "multiple": false,
          "type": "code",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "com-dynatrace-extension-snmp-generic-cisco-device-overview-145687077"
  # private = false
}
