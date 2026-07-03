resource "dynatrace_document" "Network_performance" {
  name      = "Network performance"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 2,
          "w": 3,
          "x": 21,
          "y": 2
        },
        "11": {
          "h": 2,
          "w": 3,
          "x": 6,
          "y": 2
        },
        "17": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 2
        },
        "18": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 2
        },
        "19": {
          "h": 2,
          "w": 3,
          "x": 9,
          "y": 2
        },
        "21": {
          "h": 2,
          "w": 3,
          "x": 12,
          "y": 2
        },
        "25": {
          "h": 2,
          "w": 3,
          "x": 15,
          "y": 2
        },
        "26": {
          "h": 2,
          "w": 3,
          "x": 18,
          "y": 2
        },
        "30": {
          "h": 1,
          "w": 12,
          "x": 0,
          "y": 4
        },
        "32": {
          "h": 1,
          "w": 12,
          "x": 12,
          "y": 4
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "34": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "35": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "36": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 13
        },
        "37": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 13
        },
        "38": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "39": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 19
        }
      },
      "settings": {},
      "tiles": {
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The number of network device interfaces is in an administratively up and operationally down state.",
          "query": "// Count network interfaces with admin status \"up\" but operational status \"down\" (possible down interfaces).\ntimeseries {\n status = avg(com.dynatrace.extension.network_device.if.status)\n}, \nby: {\n `dt.entity.network:interface`, `dt.entity.network:device`, oper.status, admin.status,\n device.name, if.name // display fields\n}\n\n// Put all necessary fields in a record for later use with array methods. \n// When calling array method (takeMax) on a record, array method takes first field from every record (latestStatusIndex) for its comparator.\n| fieldsAdd record = record(\n  // Metric value (com.dynatrace.extension.network_device.if.status) is split across statuses (admin.status, oper.status). \n  // Values array for every pair combination (Up/Up, Up/Down, Down/Down, Down/Up) may look something like that:\n  // Up/Up     [1,    null, null, 1,    1,    null]\n  // Up/Down   [null, 1,    null, null, null, null]\n  // Down/Down [null, null, 1,    null, null, null]\n  // Down/Up   [null, null, null, null, null, null]\n  // Please notice two important things: \n  //   1. Value (1) can exist only in single split. It is not possible that interface is both in Up/Down and Up/Up state.\n  //   2. To get latest state of an interface, we need to select pair that had latest reported value. In example above it is (Up/Up).\n  // \"latestStatusIndex\" field would indicate when latest reported value occurred for specific status pair. There is a record for every status pair, so 4 records for every interface.\n latestStatusIndex = arrayLastIndexOf(status, arrayLast(status)),\n adminStatus = admin.status,\n operStatus = oper.status,\n device=`dt.entity.network:device`,\n interface = `dt.entity.network:interface`\n)\n\n// Summarizing by interface leaves us with 4 records per status pair. Record with biggest \"latestStatusIndex\" has latest status of an interface.\n// By applying `takeMax` on 4 records, only one with latest reported status pair would be left.\n// That last record has fields \"operStatus\" and \"adminStatus\" indicating status of an interface.\n| summarize record = takeMax(record), by: { `dt.entity.network:interface` }\n\n// Filter and count only interfaces with \"Up/Down\" statuses.\n| filter startsWith(record[adminStatus], \"up\", caseSensitive: false) \n         and startsWith(record[operStatus], \"down\", caseSensitive: false)\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Node interfaces up/down",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Up/Down",
              "labelMode": "none",
              "prefixIcon": "WarningFailedIcon",
              "recordField": "count()",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-12-default, #d50b34)"
                },
                "isVisible": false,
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 10
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1755592937991,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum_down",
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
            }
          },
          "description": "The inbound discard rate for all interfaces of all devices in the environment.",
          "query": "// Calculate average inbound interface discard rate (discards per second) across network devices.\ntimeseries count = sum(com.dynatrace.extension.network_device.if.in.discards.count),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Inbound discards",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Inbound Discards",
              "labelMode": "none",
              "prefixIcon": "CloseIcon",
              "recordField": "countPerSecond",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "sum_indiscards",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 3,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1700675701787,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The sum of the input and output traffic for all interfaces of all devices in the environment.",
          "query": "// Compute total network throughput (sum of bits/sec) across network devices over the last 10 minutes using interface byte counters.\ntimeseries {\n ifcBytesIn = sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0),\n ifcBytesOut = sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\nunion: true, \nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n| fieldsAdd bitsInOutPerSecond = (arrayAvg(ifcBytesIn)+arrayAvg(ifcBytesOut)) * 8 / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total traffic",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "Total",
              "labelMode": "none",
              "prefixIcon": "LineChartIcon",
              "recordField": "bitsInOutPerSecond",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false
              },
              "trend": {
                "isRelative": false,
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1758117052256,
                "baseUnit": "bitps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bitsInOutPerSecond",
                "suffix": "",
                "unitCategory": "datarate"
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
          "description": "The outbound discard rate for all interfaces of all devices in the environment.",
          "query": "// Calculate average outbound interface discard rate (discards per second) across network devices.\ntimeseries count = sum(com.dynatrace.extension.network_device.if.out.discards.count),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Outbound discards",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Outbound Discards",
              "labelMode": "none",
              "prefixIcon": "CloseIcon",
              "recordField": "countPerSecond",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "sum_outdiscards",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 3,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1700675368557,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
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
            }
          },
          "description": "The outbound error rate for all interfaces of all devices in the environment.",
          "query": "// Calculate the average outbound interface error rate (errors per second) across network devices.\ntimeseries count = sum(com.dynatrace.extension.network_device.if.out.errors.count),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Outbound errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Outbound Errors",
              "labelMode": "none",
              "prefixIcon": "ErrorIcon",
              "recordField": "countPerSecond",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "sum_errors",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1700675794041,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
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
            }
          },
          "description": "The inbound discard rate for all interfaces of all devices in the environment.",
          "query": "// Calculate average inbound interface error rate (errors per second) across network devices.\ntimeseries count = sum(com.dynatrace.extension.network_device.if.in.errors.count),\nfrom: toTimestamp($dt_timeframe_to) - 10m,\nto: toTimestamp($dt_timeframe_to)\n| fields countPerSecond = arrayAvg(count) / (toDouble(interval) / 1000000000)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Inbound errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Inbound Errors",
              "labelMode": "none",
              "prefixIcon": "ErrorIcon",
              "recordField": "countPerSecond",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "sum_errors",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 10000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1700675910054,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "countPerSecond",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The number of network devices monitored in the environment.",
          "query": "// Count the total number of network devices\nfetch `dt.entity.network:device` \n| summarize count() ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Monitored devices",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "Monitored devices",
              "labelMode": "none",
              "prefixIcon": "NetworkDevicesIcon",
              "recordField": "count()",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                },
                "isVisible": false,
                "showTicks": true
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1707726485752,
                "baseUnit": "count",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "t_out",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1707726485752,
                "baseUnit": "count",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "t_in",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The number of open Problems affecting network devices.",
          "query": "// Count active problems that affect network devices.\nfetch dt.davis.problems\n| filter in(affected_entity_types, \"dt.entity.network:device\")\n| filter event.status == \"ACTIVE\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Open device problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Open device problems",
              "labelMode": "none",
              "prefixIcon": "CriticalIcon",
              "recordField": "count()",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-12-default, #d50b34)"
                },
                "isVisible": false,
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 1
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1755592887858,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "countdown",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1758016233298,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(problemCount)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "30": {
          "content": "### Network-level health indicators",
          "type": "markdown"
        },
        "32": {
          "content": "### Interfaces by discards and errors",
          "type": "markdown"
        },
        "33": {
          "content": "### Top 10 interfaces by load",
          "type": "markdown"
        },
        "34": {
          "content": "### Network performance\n\nGet a network-level view of the devices in your environment.\nIf data is missing, [deploy network device extensions](/ui/apps/dynatrace.extensions.manager/).\nFor more details please visit\n[Infrastructure \u0026 Operations: Network devices](/ui/apps/dynatrace.infraops/explorer/Network%20devices).",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The list of network device interfaces in administratively up and operationally down state.",
          "query": "// List network interfaces whose admin status is \"up\" and operational status is \"down\", showing device and interface names sorted by device and interface.\ntimeseries {\n  status = avg(com.dynatrace.extension.network_device.if.status)\n}, \nby: {\n  `dt.entity.network:interface`, `dt.entity.network:device`, oper.status, admin.status\n}\n// Put all necessary fields in a record for later use with array methods. \n// When calling array method (takeMax) on a record, array method takes first field from every record (latestStatusIndex) for its comparator.\n| fieldsAdd record = record(\n  // Metric value (com.dynatrace.extension.network_device.if.status) is split across statuses (admin.status, oper.status). \n  // Values array for every pair combination (Up/Up, Up/Down, Down/Down, Down/Up) may look something like that:\n  // Up/Up     [1,    null, null, 1,    1,    null]\n  // Up/Down   [null, 1,    null, null, null, null]\n  // Down/Down [null, null, 1,    null, null, null]\n  // Down/Up   [null, null, null, null, null, null]\n  // Please notice two important things: \n  //   1. Value (1) can exist only in single split. It is not possible that interface is both in Up/Down and Up/Up state.\n  //   2. To get latest state of an interface, we need to select pair that had latest reported value. In example above it is (Up/Up).\n  // \"latestStatusIndex\" field would indicate when latest reported value occurred for specific status pair. There is a record for every status pair, so 4 records for every interface.\n  // Use explicit search for last occurrence of 1 (the split that was active last).\n  latestStatusIndex = arrayLastIndexOf(status, 1),\n  adminStatus = admin.status,\n  operStatus = oper.status,\n  device = `dt.entity.network:device`,\n  interface = `dt.entity.network:interface`,\n  // extract human-readable names using entityName()\n  deviceName = entityName(`dt.entity.network:device`),\n  interfaceName = entityName(`dt.entity.network:interface`)\n)\n// Summarizing by interface leaves us with 4 records per status pair. Record with biggest \"latestStatusIndex\" has latest status of an interface.\n// By applying `takeMax` on 4 records, only one with latest reported status pair would be left.\n// That last record has fields \"operStatus\" and \"adminStatus\" indicating status of an interface.\n| summarize record = takeMax(record), by: { `dt.entity.network:interface` }\n| filter startsWith(record[adminStatus], \"up\", caseSensitive: false) \n  and startsWith(record[operStatus], \"down\", caseSensitive: false)\n| fields Device = record[deviceName], Interface = record[interfaceName], `dt.entity.network:device` = record[device], `dt.entity.network:interface` = record[interface]\n| sort Device ASC, Interface ASC",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Interfaces in Up/Down state",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "hiddenColumns": [
                [
                  "dt.entity.network:device"
                ],
                [
                  "dt.entity.network:interface"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Interface\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": []
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic per second divided by interface maximum speed.",
          "query": "// Calculate inbound load (%) per interface by dividing interface current speed by interface maximum speed and list the top 10 interfaces by load.\ntimeseries {\n  bytesIn = sum(com.dynatrace.extension.network_device.if.bytes_in.count, default: 0)\n},\nby: { `dt.entity.network:interface`, if.speed },\nunion: true\n| filterOut isNull(if.speed) or if.speed == \"0\"\n| fieldsAdd bitsInPerSec = bytesIn[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */,\n  interfaceSpeedBitsPerSec = toDouble(if.speed) * power(10, 6),\n  interfaceName = entityName(`dt.entity.network:interface`)\n| fieldsAdd load = bitsInPerSec[] / interfaceSpeedBitsPerSec * 100\n| sort load desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Inbound",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "load"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "InterfaceName",
                "interfaceName"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1705060132996,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "load",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Load is calculated as current interface traffic per second divided by interface maximum speed.",
          "query": "// Calculate outbound load (%) per interface by dividing interface current speed by interface maximum speed and list the top 10 interfaces by load.\ntimeseries {\n bytesOut = sum(com.dynatrace.extension.network_device.if.bytes_out.count, default: 0)\n},\nby: { `dt.entity.network:interface`, if.speed },\nunion: true\n| filterOut isNull(if.speed) or if.speed == \"0\"\n| fieldsAdd bitsOutPerSec = bytesOut[] * 8 /* to bits */ / (toLong(interval) / 1000000000) /* seconds in interval */,\n  interfaceSpeedBitsPerSec = toDouble(if.speed) * power(10, 6),\n  interfaceName = entityName(`dt.entity.network:interface`)\n| fieldsAdd load = bitsOutPerSec[] / interfaceSpeedBitsPerSec * 100\n| sort load desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Outbound",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "load"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "dataMapping": {
              "displayedFields": [
                "if.name",
                "interfaceName"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1705060184157,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "load",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "The sorted list of the network interfaces with the top most inbound and outbound errors rates, inbound and outbound discards rates.",
          "query": "// Compute combined errors+discards per interface (average per second) and list the top 50 interfaces with device/interface names by that rate.\ntimeseries {\n errorsIn = sum(com.dynatrace.extension.network_device.if.in.errors.count),\n errorsOut = sum(com.dynatrace.extension.network_device.if.out.errors.count),\n discardsIn = sum(com.dynatrace.extension.network_device.if.in.discards.count),\n discardsOut = sum(com.dynatrace.extension.network_device.if.out.discards.count)\n}, \nby: {`dt.entity.network:interface`, if.name, `dt.entity.network:device`}, \nunion: true\n| fieldsAdd sum = coalesce(errorsIn[], 0) + coalesce(errorsOut[], 0) + \n coalesce(discardsIn[], 0) + coalesce(discardsOut[], 0)\n| fieldsAdd sumAvgPerSecond = arrayAvg(sum) / (toDouble(interval) / 1000000000)\n| sort sumAvgPerSecond DESC\n| limit 50\n| fields `dt.entity.network:interface`, `dt.entity.network:device`, Device = entityName(`dt.entity.network:device`), Interface = entityName(`dt.entity.network:interface`), `Discards and errors` = sumAvgPerSecond",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 50 interfaces by discards and errors",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"DNS name\"]": 231
              },
              "hiddenColumns": [
                [
                  "dt.entity.network:interface"
                ],
                [
                  "dt.entity.network:device"
                ]
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1758192180972,
                "baseUnit": "count_per_second",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Discards and errors",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "39": {
          "content": "**Please follow the links below to complete your data onboarding:**\n\n* [Explore this dashboard in our Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/dynatrace.infraops.Network-performance)\n* [Check supported network device extensions](https://docs.dynatrace.com/docs/observe/infrastructure-observability/infrastructure-and-operations#min-ext-versions)",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.infraops.Network-performance"
  # private = false
}
