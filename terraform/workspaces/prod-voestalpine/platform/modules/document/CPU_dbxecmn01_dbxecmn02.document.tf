resource "dynatrace_document" "CPU_dbxecmn01_dbxecmn02" {
  name      = "CPU dbxecmn01 & dbxecmn02"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 12,
          "w": 15,
          "x": 0,
          "y": 0
        },
        "1": {
          "h": 12,
          "w": 15,
          "x": 0,
          "y": 12
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avg(dt.host.cpu.user), max(dt.host.cpu.user), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-5B144D92C902184E\" | fieldsAdd metricName = \"CPU user\"\n| append[timeseries avg(dt.host.cpu.system), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-5B144D92C902184E\" | fieldsAdd metricName = \"CPU system\"]\n| append[timeseries avg(dt.host.cpu.other), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-5B144D92C902184E\"]\n| append[timeseries avg(dt.host.cpu.iowait), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-5B144D92C902184E\"]\n| append[timeseries avg(dt.host.cpu.steal), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-5B144D92C902184E\"]",
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
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "CPU user • CPU system • CPU idle"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#b3007d"
                  },
                  "seriesId": [
                    "HOST-5B144D92C902184E",
                    "CPU user",
                    "max(dt.host.cpu.user)"
                  ]
                }
              ],
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": []
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries avg(dt.host.cpu.user), max(dt.host.cpu.user), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-E606C497EB1200CA\" | fieldsAdd metricName = \"CPU user\"\n| append[timeseries avg(dt.host.cpu.system), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-E606C497EB1200CA\" | fieldsAdd metricName = \"CPU system\"]\n| append[timeseries avg(dt.host.cpu.other), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-E606C497EB1200CA\"]\n| append[timeseries avg(dt.host.cpu.iowait), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-E606C497EB1200CA\"]\n| append[timeseries avg(dt.host.cpu.steal), by:{dt.entity.host}, filter:dt.entity.host==\"HOST-E606C497EB1200CA\"]",
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
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "CPU user • CPU system • CPU idle"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#b3007d"
                  },
                  "seriesId": [
                    "HOST-E606C497EB1200CA",
                    "CPU user",
                    "max(dt.host.cpu.user)"
                  ]
                }
              ],
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": []
          }
        }
      },
      "variables": [],
      "version": 19
    })
  # private = false
}
