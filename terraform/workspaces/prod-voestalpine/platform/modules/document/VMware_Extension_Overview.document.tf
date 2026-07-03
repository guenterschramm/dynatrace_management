resource "dynatrace_document" "VMware_Extension_Overview" {
  name      = "VMware Extension Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 3,
          "w": 16,
          "x": 10,
          "y": 11
        },
        "11": {
          "h": 3,
          "w": 5,
          "x": 5,
          "y": 7
        },
        "13": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 14
        },
        "14": {
          "h": 5,
          "w": 40,
          "x": 0,
          "y": 15
        },
        "15": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 20
        },
        "16": {
          "h": 6,
          "w": 20,
          "x": 0,
          "y": 21
        },
        "17": {
          "h": 6,
          "w": 20,
          "x": 20,
          "y": 21
        },
        "18": {
          "h": 6,
          "w": 20,
          "x": 20,
          "y": 27
        },
        "19": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 33
        },
        "20": {
          "h": 6,
          "w": 20,
          "x": 0,
          "y": 34
        },
        "21": {
          "h": 6,
          "w": 20,
          "x": 20,
          "y": 34
        },
        "22": {
          "h": 6,
          "w": 20,
          "x": 20,
          "y": 40
        },
        "23": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 46
        },
        "24": {
          "h": 7,
          "w": 20,
          "x": 0,
          "y": 47
        },
        "25": {
          "h": 7,
          "w": 20,
          "x": 20,
          "y": 47
        },
        "27": {
          "h": 6,
          "w": 40,
          "x": 0,
          "y": 55
        },
        "28": {
          "h": 3,
          "w": 35,
          "x": 0,
          "y": 0
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 3
        },
        "31": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 54
        },
        "38": {
          "h": 3,
          "w": 40,
          "x": 0,
          "y": 61
        },
        "39": {
          "h": 6,
          "w": 20,
          "x": 0,
          "y": 27
        },
        "4": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 4
        },
        "40": {
          "h": 6,
          "w": 20,
          "x": 0,
          "y": 40
        },
        "41": {
          "h": 5,
          "w": 6,
          "x": 20,
          "y": 4
        },
        "42": {
          "h": 3,
          "w": 5,
          "x": 10,
          "y": 7
        },
        "43": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 7
        },
        "44": {
          "h": 1,
          "w": 15,
          "x": 0,
          "y": 10
        },
        "5": {
          "h": 3,
          "w": 5,
          "x": 10,
          "y": 4
        },
        "6": {
          "h": 3,
          "w": 5,
          "x": 5,
          "y": 4
        },
        "7": {
          "h": 3,
          "w": 5,
          "x": 15,
          "y": 4
        },
        "8": {
          "h": 3,
          "w": 5,
          "x": 5,
          "y": 11
        },
        "9": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 11
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
          "query": "fetch `dt.entity.vmware:host`\n| fields entity.name, host_connected_state\n| sort host_connected_state desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connected/Disconnected Hosts",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#2F6863",
                  "field": "host_connected_state",
                  "value": "connected"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#C4233B",
                  "field": "host_connected_state",
                  "value": "disconnected"
                }
              ]
            },
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": "#2F6863",
                  "comparator": "=",
                  "id": 0,
                  "value": "connected"
                },
                {
                  "color": "#C4233B",
                  "comparator": "=",
                  "id": 7544882.1,
                  "value": "disconnected"
                }
              ],
              "dataMappings": {
                "value": "host_connected_state"
              },
              "displayedFields": [
                "entity.name",
                "host_connected_state"
              ]
            },
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
          "query": "fetch `dt.entity.vmware:datastore`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Datastores",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:datastore`)",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "datastore_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "datastore_info.single_value",
                "identifier": "datastore_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "13": {
          "content": "### vSphere Clusters",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by: {`dt.entity.vmware:cluster` }, filter: { cluster.name != \"No Cluster\" },  {\n  cpu_capacity = avg(vmware.cluster.cpu.capacity),\n  cpu_used= avg(vmware.cluster.cpu.used),\n  mem_capacity = avg(vmware.cluster.mem.capacity),\n  mem_used= avg(vmware.cluster.mem.used),\n  storage_capacity = avg(vmware.cluster.storage.capacity),\n  storage_used= avg(vmware.cluster.storage.used)\n}\n| lookup [\n    fetch `dt.entity.vmware:cluster`\n    | fields id, entity.name, cluster = record(entityId=id, displayName=entity.name, dim=\"dt.entity.vmware:cluster\")\n],\n sourceField: `dt.entity.vmware:cluster`,\n lookupField: id,\n fields: cluster\n| fieldsAdd \n  name = entityName(`dt.entity.vmware:cluster`),\n  cpu_cap      = arrayLast(cpu_capacity),\n  cpu_used     = arrayLast(cpu_used),\n  mem_cap      = arrayLast(mem_capacity),\n  mem_used     = arrayLast(mem_used),\n  storage_cap  = arrayLast(storage_capacity),\n  storage_used = arrayLast(storage_used)\n| fields name, cpu_used, cpu_cap, mem_used, mem_cap, storage_used, storage_cap\n| fieldsRename `Cluster`=name, \n               `CPU Used`=cpu_used,\n               `CPU Capacity`=cpu_cap,\n               `Memory Used`=mem_used,\n               `Memory Capacity`=mem_cap,\n               `Storage Used`=storage_used,\n               `Storage Capacity`=storage_cap\n| sort `CPU Used` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware Cluster Resource Details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"CPU Capacity\"]": 183.765625,
                "[\"CPU Used\"]": 136.421875,
                "[\"Cluster Name\"]": 186.328125,
                "[\"Cluster\"]": 210.69,
                "[\"Memory Capacity\"]": 223.609375,
                "[\"Memory Used\"]": 171.265625,
                "[\"Storage Used\"]": 231.1875
              },
              "hiddenColumns": [
                [
                  "A:dt.entity.vmware:cluster.name"
                ],
                [
                  "B:dt.entity.vmware:cluster.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "megahertz",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "CPU Used",
                "suffix": "",
                "unitCategory": "frequency"
              },
              {
                "added": 1722542519264,
                "baseUnit": "megahertz",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Capacity",
                "suffix": "",
                "unitCategory": "frequency"
              },
              {
                "added": 1722542599196,
                "baseUnit": "mebibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Used",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722542625895,
                "baseUnit": "mebibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Capacity",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722542641423,
                "baseUnit": "mebibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Storage Capacity",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722542722559,
                "baseUnit": "mebibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Storage Used",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "15": {
          "content": "### ESXi Hosts",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by: {`dt.entity.vmware:host`}, {\n  average_cpu = avg(vmware.host.cpu.usage.average)\n}\n| fieldsAdd average_cpu = arrayAvg(average_cpu), {entityName(`dt.entity.vmware:host`), alias: Name}\n| sort average_cpu desc\n| fields Name, average_cpu, `dt.entity.vmware:host`\n| fieldsRename `Host Name`=Name, `Average CPU %`=average_cpu\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware Host Avg CPU %",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Host Name"
                ],
                "categoryAxisLabel": "Host Name",
                "valueAxis": [
                  "Average CPU %"
                ],
                "valueAxisLabel": "Average CPU %"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "max": 75,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#f5d30f",
                  "colorMode": "single-color",
                  "max": 90,
                  "min": 75,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 90,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "%",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(vmware.host.cpu.usage.average), by: { `dt.entity.vmware:host` }\n| sort arrayAvg(average) desc\n| fieldsAdd entityName(`dt.entity.vmware:host`), `dt.entity.vmware:host`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.vmware:host.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(vmware.host.mem.usage.average), by: { `dt.entity.vmware:host` }\n| sort arrayAvg(average) desc\n| fieldsAdd entityName(`dt.entity.vmware:host`), `dt.entity.vmware:host`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.vmware:host.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "19": {
          "content": "### vSphere VMs",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by: {`dt.entity.vmware:virtualmachine`}, {\n  average_cpu = avg(vmware.vm.cpu.usage.average)\n}\n| fieldsAdd average_cpu = arrayAvg(average_cpu), {entityName(`dt.entity.vmware:virtualmachine`), alias: Name}\n| sort average_cpu desc\n| fields Name, average_cpu, `dt.entity.vmware:virtualmachine`\n| fieldsRename `Host Name`=Name, `Average CPU %`=average_cpu\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware VM Avg CPU %",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Host Name"
                ],
                "categoryAxisLabel": "Host Name",
                "valueAxis": [
                  "Average CPU %"
                ],
                "valueAxisLabel": "Average CPU %"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "max": 75,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#f5d30f",
                  "colorMode": "single-color",
                  "max": 90,
                  "min": 75,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 90,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries average = avg(vmware.vm.cpu.usage.average), by: { `dt.entity.vmware:virtualmachine` }\n| sort arrayAvg(average) desc\n| fieldsAdd entityName(`dt.entity.vmware:virtualmachine`), `dt.entity.vmware:virtualmachine`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.vmware:virtualmachine.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(vmware.vm.mem.usage.average), by: { `dt.entity.vmware:virtualmachine` }\n| sort arrayAvg(average) desc\n| fieldsAdd entityName(`dt.entity.vmware:virtualmachine`), `dt.entity.vmware:virtualmachine`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.vmware:virtualmachine.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "23": {
          "content": "### vSphere Datastores",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { freeSpace = avg(vmware.datastore.freeSpace), capacity = avg(vmware.datastore.capacity) }, by: { `dt.entity.vmware:datastore`}\n| fieldsAdd used = 100 - (100 * (freeSpace[] / capacity[] ))\n| fieldsAdd used = arrayLast(used)\n| sort used desc\n| join [ timeseries freeSpace = avg(vmware.datastore.freeSpace), by: { `dt.entity.vmware:datastore` }\n       | fieldsAdd freeSpace = arrayLast(freeSpace) ], on: { `dt.entity.vmware:datastore` }, fields: {freeSpace, `dt.entity.vmware:datastore`, interval, timeframe}, kind: outer\n| join [ timeseries capacity = avg(vmware.datastore.capacity), by: { `dt.entity.vmware:datastore` }\n       | fieldsAdd capacity = arrayLast(capacity) ], on: { `dt.entity.vmware:datastore` }, fields: {capacity, `dt.entity.vmware:datastore`, interval, timeframe}, kind: outer\n| fieldsAdd entityName(`dt.entity.vmware:datastore`), alias: Name\n| fields Name, freeSpace, capacity, used\n| fieldsRename `Datastore Name`=Name, `Free Space`=freeSpace, `Capacity`=capacity, `Used %`=used\n| sort `Used %` desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware Datastores",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "Used %",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Used %"
                    ]
                  },
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#f5d30f",
                  "field": "Used %",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Used %"
                    ]
                  },
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "Used %",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Used %"
                    ]
                  },
                  "value": 90
                }
              ]
            },
            "table": {
              "columnWidths": {
                "[\"Capacity\"]": 201.890625,
                "[\"Datastore Name\"]": 236,
                "[\"Free Space\"]": 157.3125,
                "[\"Used %\"]": 86,
                "[\"dt.entity.vmware:datastore\"]": 310.78125
              },
              "hiddenColumns": [
                [
                  "A:dt.entity.vmware:datastore.name"
                ],
                [
                  "B:dt.entity.vmware:datastore.name"
                ],
                [
                  "C:dt.entity.vmware:datastore.name"
                ],
                [
                  "timeframe"
                ],
                [
                  "interval"
                ]
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "used",
                "identifier": "Free Space",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722541161317,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Capacity",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722541171408,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Used %",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { freeSpace = avg(vmware.datastore.freeSpace), capacity = avg(vmware.datastore.capacity) }, by: { device.address, dt.metrics.source, datastore.id, `dt.entity.vmware:datastore`, `dt.entity.vmware:vcenter`, datastore.name }\n| fieldsAdd used = 100 - (100 * (freeSpace[] / capacity[] ))\n| summarize { used = avg(used[] ) }, by: { `dt.entity.vmware:datastore`, interval, timeframe }\n| sort arrayAvg(used) desc\n| fieldsAdd entityName(`dt.entity.vmware:datastore`), `dt.entity.vmware:datastore`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top Datastore Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "used"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.entity.vmware:datastore.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "used",
                "identifier": "used",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch logs\n| filter(isNotNUll(vcenter.address))\n| fields timestamp, `vcenter.address`, `host.name`, content \n| fieldsRename Time=timestamp, vCenter=vcenter.address, Host=host.name, Message=content \n| sort Time desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "vCenter Triggered Alarms \u0026 Events",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {}
        },
        "28": {
          "content": "### Overview of VMware extension data\n\nStart here to navigate to the extension configuration and/or entity pages to view charts displaying data collected for vSphere Clusters, ESXi Hosts, VMs, and more. \n\nIf you don't see data: ⚙️ [Configure extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.vmware-integration/configs)\n",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "type": "markdown"
        },
        "31": {
          "content": "### vCenter Alarms \u0026 Events",
          "type": "markdown"
        },
        "38": {
          "content": "### Additional Resources:\n#### [VMware Extension Documentation](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.vmware-integration/details)",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by: {`dt.entity.vmware:host`}, {\n  average_mem = avg(vmware.host.mem.usage.average)\n}\n| fieldsAdd  average_mem = arrayAvg(average_mem), {entityName(`dt.entity.vmware:host`), alias: Name}\n| sort average_mem desc\n| fields Name, average_mem, `dt.entity.vmware:host`\n| fieldsRename `Host Name`=Name,`Average Memory %`=average_mem\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware Host Avg Memory %",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Host Name"
                ],
                "categoryAxisLabel": "Host Name",
                "valueAxis": [
                  "Average Memory %"
                ],
                "valueAxisLabel": "Average Memory %"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "max": 75,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#f5d30f",
                  "colorMode": "single-color",
                  "max": 90,
                  "min": 75,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 90,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "id": "average",
                "identifier": "average",
                "suffix": "%",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.vmware:vcenter`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "vCenters",
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "host_info",
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by: {`dt.entity.vmware:virtualmachine`}, {\n  average_mem = avg(vmware.vm.mem.usage.average)\n}\n| fieldsAdd average_mem = arrayAvg(average_mem), {entityName(`dt.entity.vmware:virtualmachine`), alias: Name}\n| sort average_mem desc\n| fields Name, average_mem, `dt.entity.vmware:virtualmachine`\n| fieldsRename `Host Name`=Name, `Average Memory %`=average_mem\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "VMware VM Avg Memory %",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Host Name"
                ],
                "categoryAxisLabel": "Host Name",
                "valueAxis": [
                  "Average Memory %"
                ],
                "valueAxisLabel": "Average Memory %"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "max": 75,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#f5d30f",
                  "colorMode": "single-color",
                  "max": 90,
                  "min": 75,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 90,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "",
                "id": "average",
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "41": {
          "content": "**🔗 Navigate to the Infrastructure \u0026 Operations App to view the entities:**\n* [vCenters](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:vcenter)\n* [Datacenters](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:datacenter)\n* [Clusters](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:cluster)\n* [ESXi Hosts](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:host)\n* [Virtual Machines](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:virtualmachine)\n* [Datastores](/ui/apps/dynatrace.infraops/technology/virtualization/com.dynatrace.vmware-integration/vmware:datastore)\n",
          "type": "markdown"
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.vmware:disk`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disks",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:virtualmachine`)",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "vm_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "vm_info.single_value",
                "identifier": "countDistinct(`dt.entity.vmware:virtualmachine`)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.vmware:host`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total ESXi Hosts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:virtualmachine`)",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "vm_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "vm_info.single_value",
                "identifier": "countDistinct(`dt.entity.vmware:virtualmachine`)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "44": {
          "content": "### ESXi Host Overview",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.vmware:cluster`\n| filterOut cluster_name == \"No Cluster\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Clusters",
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:cluster`)",
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.vmware:datacenter`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Data Centers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "host_info",
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
          "query": "fetch `dt.entity.vmware:virtualmachine`\n| filter (vm_connection_state == \"connected\") AND (vm_power_state == \"poweredOn\")\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active VMs",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:virtualmachine`)",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "vm_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "id": "vm_info.single_value",
                "identifier": "countDistinct(`dt.entity.vmware:virtualmachine`)",
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
          "query": "fetch `dt.entity.vmware:host`\n| filter isNotNull(runs_on)\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hosts in a Cluster",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:host`)",
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
          "query": "fetch `dt.entity.vmware:host`\n| filter isNull(runs_on)\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Standalone Hosts",
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "countDistinct(`dt.entity.vmware:host`)",
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
      "version": 21
    })
  custom_id = "com-dynatrace-vmware-integration-overview"
  # private = false
}
