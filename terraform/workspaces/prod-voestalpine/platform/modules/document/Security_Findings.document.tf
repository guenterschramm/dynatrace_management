resource "dynatrace_document" "Security_Findings" {
  name    = "Security Findings"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 0
        },
        "1": {
          "h": 4,
          "w": 10,
          "x": 0,
          "y": 4
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
          "query": "fetch security.events\n| filter matchesValue(event.status, \"OPEN\") AND matchesValue(vulnerability.parent.davis_assessment.level, \"CRITICAL\")\n| summarize count = count(), by: { vulnerability.parent.davis_assessment.level }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "security.events",
                "filter": "event.status = OPEN vulnerability.parent.davis_assessment.level = CRITICAL ",
                "id": "A",
                "isEnabled": true,
                "summarize": {
                  "aggregator": "count",
                  "fields": [
                    "vulnerability.parent.davis_assessment.level"
                  ]
                }
              }
            ],
            "version": "19.2.2"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-security-events",
          "title": "",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoryOverrides": {
                "CRITICAL": {
                  "added": 1119754.8999999985,
                  "color": {
                    "Default": "var(--dt-colors-charts-security-risk-level-critical-default, #8a0012)"
                  }
                }
              },
              "colorPalette": "apdex"
            },
            "unitsOverrides": []
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter matchesValue(vulnerability.risk.level, { \"CRITICAL\", \"HIGH\", \"MEDIUM\", \"LOW\" })\n| summarize count = count(), by: { vulnerability.risk.level }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "security.events",
                "filter": "vulnerability.risk.level in (CRITICAL,HIGH,MEDIUM,LOW) ",
                "id": "A",
                "isEnabled": true,
                "summarize": {
                  "aggregator": "count",
                  "fields": [
                    "vulnerability.risk.level"
                  ]
                }
              }
            ],
            "version": "19.2.2"
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-security-events",
          "title": "",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "layout": "vertical"
              },
              "categoryOverrides": {
                "CRITICAL": {
                  "added": 1656756.1999999993,
                  "color": {
                    "Default": "var(--dt-colors-charts-security-risk-level-critical-default, #8a0012)"
                  }
                },
                "HIGH": {
                  "added": 1663602.3000000007,
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  }
                },
                "LOW": {
                  "added": 1678878.6999999993,
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)"
                  }
                },
                "MEDIUM": {
                  "added": 1669858.1999999993,
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                  }
                }
              },
              "legend": {
                "hidden": true
              }
            }
          }
        }
      },
      "variables": [],
      "version": 20
    })
  private = true
}
