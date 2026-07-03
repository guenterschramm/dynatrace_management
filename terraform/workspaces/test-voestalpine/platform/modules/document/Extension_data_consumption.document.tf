resource "dynatrace_document" "Extension_data_consumption" {
  name      = "Extension data consumption"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "2": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "3": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "4": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "8": {
          "h": 2,
          "w": 24,
          "x": 0,
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
          "query": "timeseries datapoints=sum(dt.sfm.server.metrics.ingest.external_datapoints),\n  by:{source}\n| filter in(source, array($Extension)) \n\n| sort arraySum(datapoints) desc\n| fields source, datapoints=arraySum(datapoints)\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 20",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "source",
                "categoryAxisLabel": "source",
                "colorPaletteMode": "single-color",
                "valueAxis": "datapoints",
                "valueAxisLabel": "datapoints"
              },
              "categoryOverrides": {},
              "colorPalette": "log-level"
            },
            "thresholds": []
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries datapoints=sum(dt.sfm.server.metrics.ingest.external_datapoints),\n  by:{source}, interval: 1h\n| filter in(source, array($Extension))\n  \n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Datapoints by extension",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "datapoints"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": []
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries datapoints=sum(dt.sfm.server.metrics.ingest.external_datapoints),\n  by: {source, dt.ingest.channel}, interval: 1h\n| filter in(source, array($Extension))\n| fieldsAdd channel=if(dt.ingest.channel == \"api\", \"ActiveGate\", else: \"OneAgent\")\n| summarize {sum(datapoints[]), takeLast(timeframe), takeAny(interval)}, by: {channel}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Datapoints by source",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(datapoints[])"
                ],
                "timestamp": "takeLast(timeframe)"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": []
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries datapoints=sum(dt.sfm.server.metrics.ingest.external_datapoints_by_source_address),\n  by: {source.address, source}\n| filter in(source, array($Extension))\n| sort arraySum(datapoints) desc\n| fields source.address, datapoints=arraySum(datapoints)\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 20 IP addresses",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "source.address",
                "categoryAxisLabel": "source.address",
                "valueAxis": "datapoints",
                "valueAxisLabel": "datapoints"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              }
            },
            "thresholds": []
          }
        },
        "8": {
          "content": "# Extension data consumption\nExtension App",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [],
          "input": "timeseries datapoints=sum(dt.sfm.server.metrics.ingest.external_datapoints),\n  by:{source}\n| fields source\n| filterOut in(source,{\"unknown\", \"dynatrace_osagent\"})",
          "key": "Extension",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.extensions.manager.extension-data-consumption"
  # private = false
}
