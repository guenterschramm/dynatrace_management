resource "dynatrace_document" "VMWare_Analyse" {
  name    = "VMWare Analyse"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "2": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "3": {
          "h": 14,
          "w": 24,
          "x": 0,
          "y": 0
        }
      },
      "settings": {},
      "tiles": {
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "davisCopilot": {
            "feedbackProvided": false,
            "prompt": "vmware machines cpu usage including hostname",
            "response": {
              "data": {
                "dql": "timeseries by:{dt.entity.virtualmachine}, avg_cpu_usage = avg(dt.cloud.vmware.vm.cpu.usage_perc)\n| lookup [fetch dt.entity.virtualmachine], sourceField:dt.entity.virtualmachine, lookupField:id, fields:{entity.name}",
                "messageToken": "b2cc7b69-31dc-4e7a-b83b-11682e13df78",
                "metadata": {
                  "notifications": []
                },
                "prompt": "vmware machines cpu usage including hostname",
                "status": "SUCCESSFUL"
              },
              "status": "success"
            },
            "showDqlSnippet": true
          },
          "query": "timeseries by:{dt.entity.virtualmachine}, avg_cpu_usage = avg(dt.cloud.vmware.vm.cpu.usage_perc)\n| lookup [fetch dt.entity.virtualmachine], sourceField:dt.entity.virtualmachine, lookupField:id, fields:{entity.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "davis-copilot",
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {},
              "fieldMapping": {
                "leftAxisValues": [
                  "avg_cpu_usage"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "vmware.hypervisor",
                "interval",
                "avg_cpu_usage"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Host CPU usage %"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "table": {
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"dt.entity.virtualmachine\"]",
                "[\"avg_cpu_usage\"]",
                "[\"entity.name\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "avg_cpu_usage"
                  ],
                  "id": 1750942991960,
                  "value": "sparkline"
                }
              ]
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{dt.entity.virtualmachine}, {cpuUsage = avg(dt.cloud.vmware.vm.cpu.usage_perc), memUsage = avg(dt.cloud.vmware.vm.mem.consumed), memActive = avg(dt.cloud.vmware.vm.mem.active)}\n| fieldsAdd avgCPU = arrayAvg(cpuUsage), avgMem = arrayAvg(memUsage) / arrayAvg(memActive)\n| filter avgCPU \u003c 5 AND avgMem \u003c 5\n| lookup [fetch dt.entity.virtualmachine], sourceField:dt.entity.virtualmachine, lookupField:id, fields:{entity.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 10,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Poorly utilized hosts",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "bandChartSettings": {
                "lower": "cpuUsage",
                "upper": "memUsage"
              },
              "categoricalBarChartSettings": {
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "cpuUsage",
                  "memUsage",
                  "memActive"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "avgCPU",
                "avgMem"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "VM CPU usage % • VM memory consumed"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "isLabelVisible": true,
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "labels": {
                "showLabels": false
              },
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "singleValue": {
              "alignment": "center",
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "value",
              "columnOrder": [
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"entity.name\"]",
                "[\"avgCPU\"]",
                "[\"avgMem\"]",
                "[\"cpuUsage\"]",
                "[\"memUsage\"]",
                "[\"memActive\"]",
                "[\"dt.entity.virtualmachine\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "cpuUsage",
                    "memUsage",
                    "memActive"
                  ],
                  "id": 1750943842171,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [
                [
                  "cpuUsage"
                ],
                [
                  "memUsage"
                ],
                [
                  "memActive"
                ]
              ],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1750943376855,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avgCPU",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1750943406596,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avgMem",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1750943421596,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "interval",
                "suffix": "",
                "unitCategory": "time"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [],
      "version": 19
    })
  private = true
}
