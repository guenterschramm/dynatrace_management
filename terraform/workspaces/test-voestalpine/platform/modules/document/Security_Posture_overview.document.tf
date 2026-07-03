resource "dynatrace_document" "Security_Posture_overview" {
  name      = "Security Posture overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "1": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "11": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 5
        },
        "12": {
          "h": 2,
          "w": 3,
          "x": 9,
          "y": 5
        },
        "13": {
          "h": 2,
          "w": 3,
          "x": 6,
          "y": 5
        },
        "15": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 5
        },
        "16": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 5
        },
        "17": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 3
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "19": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "2": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "20": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "21": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "23": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 8
        },
        "24": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 8
        },
        "25": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "26": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "27": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 53
        },
        "4": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "6": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 8
        },
        "8": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 5
        },
        "9": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 8
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
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n// filter for the latest assessments in the timeframe\n| join [\n  fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.name = takeLast(object.name),\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.rule.title = takeFirst(compliance.rule.title),\n        compliance.standard.url = takeFirst(compliance.standard.url),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\"),\n        compliance.rule.metadata_json = takeFirst(compliance.rule.metadata_json),\n        compliance.rule.severity.score = takeFirst(compliance.rule.severity.score)\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\n| fieldsAdd compliance.result.status.score =\n      if(compliance.result.status.level == \"FAILED\", 10,\n      else: if(compliance.result.status.level == \"MANUAL\", 7,\n      else: if(compliance.result.status.level == \"PASSED\", 4,\n      else: 1\n   )))\n| sort compliance.result.status.score desc,\n  compliance.rule.severity.score desc,\n  compliance.result.count.failed desc,    \n  compliance.result.count.manual desc,\n  compliance.result.count.passed desc\n| fields \n  Result = compliance.result.status.level, \n  Severity = compliance.rule.severity.level, \n  Rule = compliance.rule.title,\n  `Rule ID` = compliance.rule.id,\n  Standard = compliance.standard.short_name,\n  Failed = compliance.result.count.failed,\n  Manual = compliance.result.count.manual,\n  Passed = compliance.result.count.passed,\n  `Not relevant` = compliance.result.count.not_relevant,\n  `Rule details`= compliance.rule.metadata_json,\n  `Source URL` = compliance.standard.url",
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
            "autoSelectVisualization": false,
            "chartSettings": {
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
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "product",
                "compliance.result.object",
                "gcp.organization",
                "object",
                "k8s.cluster",
                "compliance.rule.severity.score",
                "compliance.result.status.score"
              ],
              "leftYAxisSettings": {},
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timestamp",
              "xAxisScaling": "auto"
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
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"Result\"]",
                "[\"Severity\"]",
                "[\"Rule\"]",
                "[\"Rule ID\"]",
                "[\"Standard\"]",
                "[\"Failed\"]",
                "[\"Manual\"]",
                "[\"Passed\"]",
                "[\"Not relevant\"]",
                "[\"Rule details\"]",
                "[\"Source URL\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Failed\"]": 62.546875,
                "[\"Not relevant\"]": 31,
                "[\"Result\"]": 80.02,
                "[\"Rule ID\"]": 120.98,
                "[\"Rule details\"]": 31,
                "[\"Rule\"]": 615.373291015625,
                "[\"Severity\"]": 84.89,
                "[\"Standard\"]": 89,
                "[\"System type\"]": 137.98,
                "[\"compliance.rule.metadata_json\"]": 528,
                "[\"compliance.rule.severity.score\"]": 69
              },
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "default",
              "selectedColumnForRowThreshold": "Result",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "Result",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "PASSED"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "MANUAL"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "FAILED"
                  }
                ],
                "title": "Result"
              },
              {
                "field": "Severity",
                "id": 2,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "LOW"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "HIGH"
                  },
                  {
                    "color": "#8A0012",
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "CRITICAL"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 3,
                    "label": "",
                    "value": "MEDIUM"
                  }
                ],
                "title": "Severity"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.name = takeLast(object.name),\n        object.type = takeLast(object.type),\n        scan.id = takeLast(scan.id),\n        timestamp = takeLast(timestamp)\n    }, by: {object.id}\n  ], on: {scan.id}\n| sort compliance.result.status.score desc,\n   compliance.rule.severity.score desc\n| fields \n  Result = compliance.result.status.level, \n  Severity = compliance.rule.severity.level, \n  `Resource name` = if(isNull(object.name), compliance.result.object.name, else:object.name),\n  `Resource ID` = object.id,\n  `Resource type` = if(isNull(object.type), compliance.result.object.type, else:object.type),\n  `Relevant configuration properties` = compliance.result.object.evidence_json,\n  Rule = compliance.rule.title,\n  `Rule ID` = compliance.rule.id,\n  Standard = compliance.standard.short_name\n| limit 50\n  ",
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
            "autoSelectVisualization": false,
            "chartSettings": {
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
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute"
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
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Not relevant\"]": 31,
                "[\"Relevant configuration properties\"]": 1329.99,
                "[\"Resource ID\"]": 140,
                "[\"Resource Type\"]": 124.73958587646484,
                "[\"Resource name\"]": 235,
                "[\"Result\"]": 80.02,
                "[\"Rule ID\"]": 120.98,
                "[\"Rule\"]": 615.373291015625,
                "[\"Severity\"]": 84.89,
                "[\"Standard\"]": 122.98,
                "[\"System type\"]": 90.98958587646484,
                "[\"compliance.rule.metadata_json\"]": 528,
                "[\"compliance.rule.severity.score\"]": 69
              },
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [
                [
                  "Relevant configuration properties"
                ]
              ],
              "linewrapEnabled": true,
              "monospacedFontColumns": [
                [
                  "Resource name"
                ],
                [
                  "Resource ID"
                ],
                [
                  "Resource Type"
                ],
                [
                  "Relevant configuration properties"
                ]
              ],
              "monospacedFontEnabled": true,
              "rowDensity": "default",
              "selectedColumnForRowThreshold": "Result",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "Result",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "PASSED"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "MANUAL"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "FAILED"
                  }
                ],
                "title": "Result"
              },
              {
                "field": "Severity",
                "id": 2,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "LOW"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "HIGH"
                  },
                  {
                    "color": "#8A0012",
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "CRITICAL"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 3,
                    "label": "",
                    "value": "MEDIUM"
                  }
                ],
                "title": "Severity"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND compliance.rule.severity.level == \"HIGH\"\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"FAILED\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": false,
              "label": "High",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#CD3741",
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND compliance.rule.severity.level == \"LOW\"\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"FAILED\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "Low",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#E2E3EC",
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND compliance.rule.severity.level == \"MEDIUM\"\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"FAILED\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "Medium",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#F4E8DE",
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n// aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"MANUAL\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "Manual",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#F5B356",
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n// aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"PASSED\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "label": "Passed",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "17": {
          "content": "## Latest assessment results\nThe number of rules – failed (by severity), manual and passed.",
          "type": "markdown"
        },
        "18": {
          "content": "## Assessed systems\n",
          "type": "markdown"
        },
        "19": {
          "content": "## Compliance standards\nCompliance rule assessment results per compliance standard.",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n// filter for the latest assessments in the timeframe\n| join [\n  fetch security.events\n | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.rule.title = takeFirst(compliance.rule.title),\n        compliance.standard.url = takeFirst(compliance.standard.url),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\"),\n        compliance.rule.metadata_json = takeFirst(compliance.rule.metadata_json),\n        compliance.rule.severity.score = takeFirst(compliance.rule.severity.score)\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\n| summarize {\n    Rules = count(), \n    Passed = countIf(compliance.result.status.level==\"PASSED\"), \n    Manual = countIf(compliance.result.status.level==\"MANUAL\"), \n    Failed = countIf(compliance.result.status.level==\"FAILED\")\n  },\n  by: {compliance.standard.short_name}\n| fields\n  `Compliance standard` = compliance.standard.short_name,\n  `Compliance posture` = floor(toDouble(Passed)/toDouble(Passed + Manual + Failed)*100),\n  Passed,\n  Manual,\n  Failed,\n  Rules\n| sort `Compliance standard` asc\n  \n\n  ",
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
            "autoSelectVisualization": false,
            "chartSettings": {
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
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute"
            },
            "dataMapping": {
              "value": "rules"
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
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "rules",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "value",
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Compliance posture"
                  ],
                  "id": 844814.1000000238,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {
                "[\"Compliance posture\"]": 331.9965515136719,
                "[\"Compliance standard\"]": 167.2569580078125,
                "[\"Not relevant\"]": 31,
                "[\"Result\"]": 80.02,
                "[\"Rule ID\"]": 120.98,
                "[\"Rule\"]": 615.373291015625,
                "[\"Severity\"]": 84.89,
                "[\"Standard\"]": 89,
                "[\"System type\"]": 137.98,
                "[\"compliance.rule.metadata_json\"]": 528,
                "[\"compliance.rule.severity.score\"]": 69,
                "[\"compliance.standard.short_name\"]": 238.98439025878906
              },
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": true,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "comfortable",
              "selectedColumnForRowThreshold": "Result",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "Compliance posture",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Adoption"
              },
              {
                "field": "Passed",
                "id": 2,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#48936F",
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Passed"
              },
              {
                "field": "Manual",
                "id": 3,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#CA8A2F",
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Manual"
              },
              {
                "field": "Failed",
                "id": 4,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Failed"
              }
            ],
            "unitsOverrides": [
              {
                "added": 1742986671505,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": null,
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "20": {
          "content": "## Compliance rules\nAggregation of all compliance findings related to a single compliance rule.",
          "type": "markdown"
        },
        "21": {
          "content": "## Top 50 compliance findings\nUnaggregated compliance finding events.",
          "type": "markdown"
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.type = takeLast(object.type),\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n  | fieldsAdd Type = if(right.object.type == \"AWS\", \"AWS\",\n      else: if(right.object.type == \"AZURE\", \"Azure\",\n      else: if(right.object.type == \"GCP\", \"GCP\",\n      else: if(right.object.type == \"KUBERNETES_CLUSTER\", \"Kubernetes\",\n      else: if(right.object.type == \"NSXT\", \"NSX-T\",\n      else: if(right.object.type == \"VCENTER\", \"vCenter\",\n      else: right.object.type\n    ))))))\n  | summarize countDistinct(right.object.id), by: {Type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "System types",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Type"
                ],
                "categoryAxisLabel": "Type",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "countDistinct(right.object.id)"
                ],
                "valueAxisLabel": "countDistinct(right.object.id)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "hideLabels": true,
                "showTotalValue": false,
                "valueType": "relative"
              },
              "colorPalette": "blue-steel",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timestamp",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "countDistinct(object.id)"
              },
              "displayedFields": [
                "Type"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "legend": {
              "position": "auto",
              "ratio": 38,
              "showLegend": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "Systems",
              "prefixIcon": "",
              "recordField": "countDistinct(object.id)",
              "showLabel": false,
              "sparklineSettings": {
                "record": "ingest_series"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": true,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "custom",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"object.type\"]",
                "[\"countDistinct(object.id)\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"count()\"]": 58,
                "[\"object.id\"]": 299.78125,
                "[\"object.type\"]": 200
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.name = takeLast(object.name),\n        object.type = takeLast(object.type),\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}, prefix: \"system.\"\n| fieldsAdd object.id = if(isNull(object.id), object.name, else:object.id)\n| summarize countDistinct(object.id)\n  ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Assessed resources",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,ingest_total",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "ingest_total"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timestamp",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "Assessments",
              "prefixIcon": "",
              "recordField": "countDistinct(object.id)",
              "showLabel": false,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"countDistinct(object.id)\"]"
              ],
              "columnTypeOverrides": [],
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
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "25": {
          "content": "#  Security Posture overview\nOverview of the compliance findings across your entire environment. To get started, use the [Security Posture Management app](https://dt-url.net/2503u3z) or start ingesting [Runecast Analyzer compliance findings](https://dt-url.net/yc030bh).",
          "type": "markdown"
        },
        "26": {
          "content": "## Top 50 common misconfigurations\nCompliance finding events aggregated by rule and specific misconfiguration.",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n    AND compliance.result.object.evidence_json != \"[]\"\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.type = takeLast(object.type),\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}, prefix: \"system.\"\n  | fieldsAdd object.id = if(isNull(object.id), object.name, else: object.id)\n  | fieldsAdd object.type = if(isNull(object.type), compliance.result.object.type, else: object.type)\n| summarize {\n    resources = countDistinct(object.id),\n    systems = countDistinct(system.object.id),\n    object.type = takeFirst(object.type),\n    compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n    compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n    compliance.rule.title = takeFirst(compliance.rule.title),\n    compliance.standard.url = takeFirst(compliance.standard.url),\n    compliance.result.status.level = takeFirst(compliance.result.status.level),\n    compliance.result.status.score = takeFirst(compliance.result.status.score),\n    compliance.rule.severity.score = takeFirst(compliance.rule.severity.score)\n}, by: {compliance.result.object.evidence_json, compliance.rule.id}\n| sort \n    resources desc,\n    compliance.result.status.score desc,\n    compliance.rule.severity.score desc\n| fields \n    `Affected resources` = resources,\n    `Affected systems` = systems,\n    `Configuration properties` = compliance.result.object.evidence_json,\n    `Affected resource type` = object.type,\n    Result = compliance.result.status.level,\n    Severity = compliance.rule.severity.level,\n    Rule = compliance.rule.title,\n    `Rule ID` = compliance.rule.id,\n    Standard = compliance.standard.short_name\n| limit 50",
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
            "autoSelectVisualization": false,
            "chartSettings": {
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
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute"
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
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"Affected resources\"]",
                "[\"Affected systems\"]",
                "[\"Configuration properties\"]",
                "[\"Affected resource type\"]",
                "[\"Result\"]",
                "[\"Severity\"]",
                "[\"Rule\"]",
                "[\"Rule ID\"]",
                "[\"Standard\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Affected resource type\"]": 168.9140625,
                "[\"Affected resources\"]": 144.515625,
                "[\"Affected systems\"]": 134.984375,
                "[\"Configuration properties\"]": 806.47,
                "[\"Not relevant\"]": 31,
                "[\"Relevant configuration properties\"]": 1329.99,
                "[\"Resource ID\"]": 140,
                "[\"Resource Type\"]": 124.73958587646484,
                "[\"Resource name\"]": 235,
                "[\"Result\"]": 80.02,
                "[\"Rule ID\"]": 120.98,
                "[\"Rule\"]": 615.373291015625,
                "[\"Severity\"]": 84.89,
                "[\"Standard\"]": 122.98,
                "[\"System type\"]": 90.98958587646484,
                "[\"compliance.result.object.evidence_json\"]": 6363.296875,
                "[\"compliance.result.status.level\"]": 215.65625,
                "[\"compliance.rule.metadata_json\"]": 528,
                "[\"compliance.rule.severity.score\"]": 69
              },
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": true,
              "monospacedFontColumns": [
                [
                  "Configuration properties"
                ],
                [
                  "Affected resource type"
                ]
              ],
              "monospacedFontEnabled": true,
              "rowDensity": "default",
              "selectedColumnForRowThreshold": "Result",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "Result",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "PASSED"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "MANUAL"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "FAILED"
                  }
                ],
                "title": "Result"
              },
              {
                "field": "Severity",
                "id": 2,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "LOW"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "HIGH"
                  },
                  {
                    "color": "#8A0012",
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "CRITICAL"
                  },
                  {
                    "color": "#E8C069",
                    "comparator": "=",
                    "id": 3,
                    "label": "",
                    "value": "MEDIUM"
                  }
                ],
                "title": "Severity"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        object.name = takeLast(object.name),\n        object.type = takeLast(object.type),\n        scan.id = takeLast(scan.id),\n        timestamp = takeLast(timestamp)\n    }, by: {object.id}\n  ], on: {scan.id}\n// aggregate compliance findings into rules\n| summarize {\n    compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n    compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n    compliance.rule.title = takeFirst(compliance.rule.title),\n    compliance.standard.url = takeFirst(compliance.standard.url),\n    compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\"),\n    compliance.rule.metadata_json = takeFirst(compliance.rule.metadata_json),\n    compliance.rule.severity.score = takeFirst(compliance.rule.severity.score),\n    compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n    compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n    compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n    right.object.type = takeFirst(right.object.type),\n    right.object.name = takeFirst(right.object.name),\n    right.timestamp = takeFirst(right.timestamp)\n  }, by: {compliance.rule.id, right.object.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\n// aggregate rules by systems\n| summarize { \n    Rules = count(), \n    Passed = countIf(compliance.result.status.level==\"PASSED\"), \n    Manual = countIf(compliance.result.status.level==\"MANUAL\"), \n    Failed = countIf(compliance.result.status.level==\"FAILED\"),\n    right.object.type = takeFirst(right.object.type),\n    right.object.name = takeFirst(right.object.name),\n    right.timestamp = takeFirst(right.timestamp)\n  }, by: {right.object.id}\n| fields \n  System = right.object.name,\n  Type =\n      if(right.object.type == \"AWS\", \"AWS\",\n      else: if(right.object.type == \"AZURE\", \"Azure\",\n      else: if(right.object.type == \"GCP\", \"GCP\",\n      else: if(right.object.type == \"KUBERNETES_CLUSTER\", \"Kubernetes\",\n      else: if(right.object.type == \"NSXT\", \"NSX-T\",\n      else: if(right.object.type == \"VCENTER\", \"vCenter\",\n      else: right.object.type\n    )))))),\n `System posture` = floor(toDouble(Passed)/toDouble(Passed + Manual + Failed)*100),\n  Passed,\n  Manual,\n  Failed,\n  Rules,\n  `Latest assessment` = right.timestamp\n| sort System asc",
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
            "autoSelectVisualization": false,
            "chartSettings": {
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
                  "System posture"
                ],
                "timestamp": "Latest assessment"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "System posture",
                "Passed",
                "Manual",
                "Failed",
                "Rules"
              ],
              "leftYAxisSettings": {},
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "Latest assessment",
              "xAxisScaling": "auto"
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
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "",
              "prefixIcon": "AnalyticsIcon",
              "showLabel": true
            },
            "table": {
              "columnOrder": [
                "[\"System\"]",
                "[\"Type\"]",
                "[\"System posture\"]",
                "[\"Passed\"]",
                "[\"Manual\"]",
                "[\"Failed\"]",
                "[\"Rules\"]",
                "[\"Latest assessment\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "System posture"
                  ],
                  "id": 5190844,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {
                "[\"Latest assessment\"]": 175.703125,
                "[\"Manual\"]": 80,
                "[\"Passed\"]": 69.34375,
                "[\"Rules\"]": 59.625,
                "[\"System posture\"]": 282,
                "[\"System\"]": 229.96875,
                "[\"Type\"]": 124.03125
              },
              "enableSparklines": false,
              "enableThresholdInRow": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "default",
              "selectedColumnForRowThreshold": "System posture",
              "sortBy": []
            },
            "thresholds": [
              {
                "field": "System posture",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#3E8E6A",
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "System posture"
              },
              {
                "field": "Passed",
                "id": 2,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#48936F",
                    "comparator": "\u003e",
                    "id": 0,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Passsed"
              },
              {
                "field": "Manual",
                "id": 3,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#CA8A2F",
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Manual"
              },
              {
                "field": "Failed",
                "id": 4,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": "Failed"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n  | summarize countDistinct(right.object.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Systems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,ingest_total",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "ingest_total"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timestamp",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "Systems",
              "prefixIcon": "",
              "recordField": "countDistinct(right.object.id)",
              "showLabel": false,
              "sparklineSettings": {
                "record": "ingest_series"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": true,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "custom",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnOrder": [
                "[\"countDistinct(object.id)\"]"
              ],
              "columnTypeOverrides": [],
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
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND compliance.rule.severity.level == \"CRITICAL\"\n// filter for the latest assessments in the timeframe\n| join [\n fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n//aggregate compliance findings into rules  \n| summarize {\n        compliance.rule.severity.level = takeFirst(compliance.rule.severity.level),\n        compliance.standard.short_name = takeFirst(compliance.standard.short_name),\n        compliance.result.count.passed = countIf(compliance.result.status.level == \"PASSED\"),\n        compliance.result.count.failed = countIf(compliance.result.status.level == \"FAILED\"),\n        compliance.result.count.manual = countIf(compliance.result.status.level == \"MANUAL\"),\n        compliance.result.count.not_relevant = countIf(compliance.result.status.level == \"NOT_RELEVANT\")\n      },\n      by: {compliance.rule.id}\n // add rule level status\n | fieldsAdd compliance.result.status.level =\n      if(compliance.result.count.failed \u003e 0, \"FAILED\",\n      else: if(compliance.result.count.manual \u003e 0, \"MANUAL\",\n      else: if(compliance.result.count.passed \u003e 0, \"PASSED\",\n      else: \"NOT_RELEVANT\"\n   )))\n| filter in(compliance.result.status.level, $Result)\nAND compliance.result.status.level == \"FAILED\"\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "count()",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Critical",
              "prefixIcon": "",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#8A0012",
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "tooltip": {
              "showCustomFields": false
            },
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch security.events\n| filter event.type == \"COMPLIANCE_FINDING\"\n    AND (contains(compliance.rule.title, $Rule) OR contains(compliance.rule.id, $Rule))\n    AND in(compliance.rule.severity.level, $Severity)\n    AND in(compliance.standard.short_name, $Standard)\n    AND in(compliance.result.status.level, $Result)\n// filter for the latest assessments in the timeframe\n| join [\n    fetch security.events\n    | filter (dt.system.bucket == \"default_securityevents_builtin\" OR dt.system.bucket == \"default_securityevents\")\n      AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n      AND in(object.name , $System)\n    | sort timestamp asc\n    | summarize {\n        scan.id = takeLast(scan.id)\n    }, by: {object.id}\n  ], on: {scan.id}\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Assessed configurations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "interval,ingest_total",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "ingest_total"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval",
                "value.A",
                "Log Records",
                "ingest_total"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Openpipeline - Ingest Sources In - Records"
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "dimension": "interval",
              "displayedFields": [
                "interval"
              ],
              "latitude": "ingest_total",
              "longitude": "interval",
              "value": "value.A"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "ingest_total"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "value.A",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "isIconVisible": false,
              "label": "Assessments",
              "prefixIcon": "CriticalFailedIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "record": "count()"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-02-default, #ae132d)"
                },
                "isLabelVisible": false,
                "isRelative": false,
                "isVisible": true,
                "label": "",
                "neutral": {
                  "Default": "var(--dt-colors-charts-diverging-red-blue-color-10-default, #134fc9)"
                },
                "trendType": "auto",
                "upward": {
                  "Default": "var(--dt-colors-charts-diverging-red-green-color-10-default, #2a7453)"
                }
              }
            },
            "table": {
              "columnTypeOverrides": [],
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
            "tooltip": {
              "showCustomFields": false
            },
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch security.events\n| filter (dt.system.bucket == \"default_securityevents_builtin\" or dt.system.bucket == \"default_securityevents\")\n  AND event.type == \"COMPLIANCE_SCAN_COMPLETED\"  \n| summarize rawValues = arrayRemoveNulls(arraySort(collectDistinct(object.name)))\n| fields object.name = if(arraySize(rawValues) \u003e 0, rawValues, else: \"None\")\n",
          "key": "System",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch security.events\n| filter (dt.system.bucket == \"default_securityevents_builtin\" or dt.system.bucket == \"default_securityevents\")\n| filter event.type == \"COMPLIANCE_FINDING\"\n| summarize rawValues = arrayRemoveNulls(arraySort(collectDistinct(compliance.standard.short_name)))\n| fields compliance.standard.short_name = if(arraySize(rawValues) \u003e 0, rawValues, else: \"None\")",
          "key": "Standard",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "CRITICAL,HIGH,MEDIUM,LOW",
          "key": "Severity",
          "multiple": true,
          "type": "csv",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "FAILED",
            "MANUAL",
            "PASSED"
          ],
          "editable": true,
          "input": "FAILED,MANUAL,PASSED,NOT_RELEVANT",
          "key": "Result",
          "multiple": true,
          "type": "csv",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "key": "Rule",
          "type": "text",
          "version": 1,
          "visible": true
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.security.posturemanagement.security-posture-overview"
  # private = false
}
