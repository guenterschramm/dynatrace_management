resource "dynatrace_document" "Untitled_dashboard" {
  name    = "Untitled dashboard"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 22,
          "x": 0,
          "y": 0
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
          "query": "timeseries avg(xecm_steel.loglevels.counter) ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        }
      },
      "variables": [],
      "version": 20
    })
  private = true
}
