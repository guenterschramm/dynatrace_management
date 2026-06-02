resource "dynatrace_document" "Citrix_Analysis" {
  name    = "Citrix Analysis"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 7,
          "w": 11,
          "x": 10,
          "y": 0
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avg(dt.host.cpu.user), by:{dt.entity.host}, filter:host.name ==$CitrixHosts | fieldsAdd metricName = \"CPU user\"\n| append[timeseries avg(dt.host.cpu.system), by:{dt.entity.host}, filter:host.name ==$CitrixHosts | fieldsAdd metricName = \"CPU system\"]\n| append[timeseries avg(dt.host.cpu.other), by:{dt.entity.host}, filter:host.name ==$CitrixHosts]\n| append[timeseries avg(dt.host.cpu.iowait), by:{dt.entity.host}, filter:host.name ==$CitrixHosts]\n| append[timeseries avg(dt.host.cpu.steal), by:{dt.entity.host}, filter:host.name ==$CitrixHosts]\n| append[timeseries avg(dt.host.cpu.idle), by:{dt.entity.host}, filter:host.name ==$CitrixHosts | fieldsAdd metricName = \"CPU idle\"]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(dt.host.cpu.user)",
                  "avg(dt.host.cpu.idle)",
                  "avg(dt.host.cpu.system)"
                ]
              },
              "hiddenLegendFields": [
                "avg(dt.host.cpu.idle)",
                "avg(dt.host.cpu.system)",
                "avg(dt.host.cpu.user)",
                "dt.entity.host"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "rightYAxisSettings": {},
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
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
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "avg(dt.host.cpu.user)",
                    "avg(dt.host.cpu.system)",
                    "avg(dt.host.cpu.idle)"
                  ],
                  "id": 1754462344929,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
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
          "query": "timeseries avg(dt.host.memory.used), by:{dt.entity.host}, filter:host.name ==$CitrixHosts\n | fieldsAdd metricName = \"Memory used\"\n| append[timeseries avg(dt.host.memory.recl), by:{dt.entity.host}, filter:host.name ==$CitrixHosts | fieldsAdd metricName = \"Memory reclaimable\"]\n| append[//queryId=HostMemoryKernel\n timeseries m1=avg(dt.host.memory.kernel),by:{dt.entity.host}, filter:host.name ==$CitrixHosts | fieldsAdd metricName = \"Kernel memory\"]\n| append[//queryId=HostMemoryTotal\n          timeseries {\n            available = avg(dt.host.memory.avail.bytes),\n            used = avg(dt.host.memory.used)\n          }, by:{dt.entity.host}, filter:dt.entity.host==\"HOST-C085023E79309474\"\n          | fields `Capacity` = used[] + available[], interval, timeframe | fieldsAdd metricName = \"Memory available\"]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {},
              "hiddenLegendFields": [
                "avg(dt.host.memory.recl)",
                "avg(dt.host.memory.used)",
                "Capacity",
                "dt.entity.host",
                "m1"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "rightYAxisSettings": {},
              "tooltip": {},
              "truncationMode": "end",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "legend": {
                "position": "auto"
              },
              "truncationMode": "end",
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
              "truncationMode": "end"
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "avg(dt.host.memory.used)",
                    "avg(dt.host.memory.recl)",
                    "m1",
                    "Capacity"
                  ],
                  "id": 1754462844937,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| fields entity.name\n| filter entity.hostgroupname == \"Citrix\"",
          "key": "Hosts",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": false
        },
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| filter hostGroupName == \"Citrix\"\n| fields entity.name",
          "key": "CitrixHosts",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 19
    })
  private = true
}
