resource "dynatrace_document" "Advanced_Certificate_Monitor_Dashboard" {
  name      = "Advanced Certificate Monitor Dashboard"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "10": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 4
        },
        "11": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 11
        },
        "13": {
          "h": 10,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "14": {
          "h": 4,
          "w": 22,
          "x": 2,
          "y": 0
        },
        "15": {
          "h": 4,
          "w": 2,
          "x": 0,
          "y": 0
        },
        "4": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 4
        },
        "5": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 4
        },
        "6": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 4
        },
        "7": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 11
        },
        "8": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 11
        },
        "9": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 11
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n  filter: { in(source, Array($Source)) }),\n  by: {\n    `dt.entity.python:certificate_monitor_certificate`,\n    file_name,\n    validity_not_after,\n    expire_date,\n    service_name,\n    cert_type,\n    email,\n    common_name,\n    cert_lifecycle\n  }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {expire_date desc}\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| fields `Valid not after`=validity_not_after, `Days to Expiration`=days_to_expire, Lifecycle=lifecycle, Certificate=entity, `File name`=file_name, `Service name`=service_name,`Cert type`=cert_type, Email=email, Stage=stage, name\n| filter contains(name, $Certificate_Name)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "All Certificate Records for $Source ",
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
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
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
                "[\"Valid not after\"]",
                "[\"Days to Expiration\"]",
                "[\"Lifecycle\"]",
                "[\"Certificate\"]",
                "[\"File name\"]",
                "[\"Service name\"]",
                "[\"Cert type\"]",
                "[\"Email\"]",
                "[\"Stage\"]",
                "[\"name\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 300711,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Certificate\"]": 517,
                "[\"file_name\"]": 257.4124755859375,
                "[\"jks_name\"]": 147.99999237060547,
                "[\"no.of_days_for_expiry\"]": 135.86248779296875,
                "[\"service_name\"]": 272.28749084472656
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed",
              "sortBy": [
                {
                  "columnId": "[\"Valid not after\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1752616705217,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Days to Expiration",
                "suffix": "",
                "unitCategory": "time"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| filter stage == \"STAGE_2\"\n| fields name, days_to_expire, certificate_stage, stage\n| filter contains(name, $Certificate_Name)\n| summarize count(), by:{stage}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificates expiration less than $Imminent days",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "stage",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "absolute",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "absolute"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "auto",
              "truncationMode": "start",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
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
              "colorMode": "custom-colors",
              "colorPalette": "blue",
              "customColors": [],
              "dataMappings": {
                "value": "no.of_days_for_expiry"
              },
              "displayedFields": [
                "entity.name",
                "id",
                "expiry_date",
                "stage",
                "lifecycle"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "Total Certificates",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Certificates \u003c 15 days",
              "prefixIcon": "CriticalIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-07-default, #438fb1)"
                },
                "isVisible": true,
                "lineType": "linear",
                "record": "status",
                "showTicks": false,
                "variant": "line"
              },
              "trend": {
                "isRelative": false,
                "isVisible": true,
                "trendType": "auto"
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
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                    },
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "11": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n\n// | dedup name, sort: {validity_not_after desc}\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| filter stage == \"STAGE_2\"\n| filter contains(name, $Certificate_Name)\n| fields `Certificate`=entity, `Days to expiration`=days_to_expire, `Valid not after`=validity_not_after, `File name`=file_name, `Service name`=service_name, `MINT Stage`=certificate_stage, `Calc Stage`=stage, `Type`=cert_type\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "List of Certificates expiration less than $Imminent days",
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
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
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
                "[\"Certificate\"]",
                "[\"Days to expiration\"]",
                "[\"Valid not after\"]",
                "[\"File name\"]",
                "[\"Service name\"]",
                "[\"MINT Stage\"]",
                "[\"Calc Stage\"]",
                "[\"Type\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 10643437,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Certificate\"]": 362,
                "[\"jks_name\"]": 147.99999237060547,
                "[\"service_name\"]": 272.28749084472656
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
            "unitsOverrides": [
              {
                "added": 1752671542893,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Days to expiration",
                "suffix": "",
                "unitCategory": "time"
              }
            ],
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
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      cert_lifecycle,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date,\n      source\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd o_validity_not_after=validity_not_after\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire=\n            toLong((toTimestamp(formatTimestamp(toTimestamp(validity_not_after),format:\"yyyy-MM-dd\"))-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\")))/duration(1,\"d\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e toDouble($Soon),\"STAGE_0\",\n      else: if(days_to_expire \u003e toDouble($Imminent),\"STAGE_1\",\n        else: if(days_to_expire \u003e 1,\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n// | fields name, days_to_expire, certificate_stage, stage\n| fieldsRename `Computed LC`=lifecycle, `MINT LC`=cert_lifecycle\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| filter contains(name, $Certificate_Name)\n| fields `Certificate`=entity, `MINT S`=certificate_stage, `Com S`=stage, days_to_expire, o_validity_not_after, validity_not_after, expire_date, `MINT LC`, `Computed LC`, name, source\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Testing Table",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "stage",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "absolute",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "absolute"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "auto",
              "truncationMode": "start",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
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
              "colorMode": "custom-colors",
              "colorPalette": "blue",
              "customColors": [],
              "dataMappings": {
                "value": "no.of_days_for_expiry"
              },
              "displayedFields": [
                "entity.name",
                "id",
                "expiry_date",
                "stage",
                "lifecycle"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "Total Certificates",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": false,
              "label": "Certificates Expiry \u003e 45",
              "prefixIcon": "CertifiedIcon",
              "recordField": "count()",
              "showLabel": true,
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-07-default, #438fb1)"
                },
                "isVisible": true,
                "lineType": "linear",
                "record": "status",
                "showTicks": false,
                "variant": "line"
              },
              "trend": {
                "isRelative": false,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"Certificate\"]",
                "[\"MINT S\"]",
                "[\"Com S\"]",
                "[\"days_to_expire\"]",
                "[\"o_validity_not_after\"]",
                "[\"validity_not_after\"]",
                "[\"expire_date\"]",
                "[\"MINT LC\"]",
                "[\"Computed LC\"]",
                "[\"name\"]",
                "[\"source\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 10214682,
                  "value": "markdown"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": true,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed",
              "sortBy": [
                {
                  "columnId": "[\"validity_not_after\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "14": {
          "content": "#\n# Advanced Certificate Monitor Dashboard\n**Usage**: Configure variables above to set custom `Soon` and `Imminent` expiration warnings. Set `Source` to filter to the desired certificate source. \n",
          "type": "markdown"
        },
        "15": {
          "content": "![Certificate Monitor](https://dt-cdn.net/images/certificate-monitor-clear-200-48d467588f.png)",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| filter stage == \"STAGE_1\"\n| fields name, days_to_expire, certificate_stage, stage\n| filter contains(name, $Certificate_Name)\n| summarize count(), by:{stage}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificate expiration between $Imminent and $Soon days",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "stage",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "absolute",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "absolute"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "auto",
              "truncationMode": "start",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
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
              "colorMode": "custom-colors",
              "colorPalette": "blue",
              "customColors": [],
              "dataMappings": {
                "value": "no.of_days_for_expiry"
              },
              "displayedFields": [
                "entity.name",
                "id",
                "expiry_date",
                "stage",
                "lifecycle"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "Total Certificates",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Certificates \u003e 15 days \u0026 \u003c 45 days",
              "prefixIcon": "WarningIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-07-default, #438fb1)"
                },
                "isVisible": true,
                "lineType": "linear",
                "record": "status",
                "showTicks": false,
                "variant": "line"
              },
              "trend": {
                "isRelative": false,
                "isVisible": true,
                "trendType": "auto"
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
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
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
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "5": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-07-15T23:23:05.259Z",
                      "startTime": "2025-07-08T23:23:05.259Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array(\"Domain\",\"External\",\"OneAgent\")) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble(\"45\"), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble(\"15\"), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e 1,\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than 45\",\n              else: if(stage == \"STAGE_1\",\"1: Between 15 and 45\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and 15\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| filter stage == \"STAGE_0\"\n| fields name, days_to_expire, certificate_stage, stage\n| summarize count(), by:{stage}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| filter stage == \"STAGE_0\"\n| fields name, days_to_expire, certificate_stage, stage\n| filter contains(name, $Certificate_Name)\n| summarize count(), by:{stage}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificates greater than $Soon days",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "stage",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "count()",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "absolute",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "absolute"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "auto",
              "truncationMode": "start",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
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
              "colorMode": "custom-colors",
              "colorPalette": "blue",
              "customColors": [],
              "dataMappings": {
                "value": "no.of_days_for_expiry"
              },
              "displayedFields": [
                "entity.name",
                "id",
                "expiry_date",
                "stage",
                "lifecycle"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "Total Certificates",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Certificates greater than $Soon days",
              "prefixIcon": "CertifiedIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-07-default, #438fb1)"
                },
                "isVisible": true,
                "lineType": "linear",
                "record": "status",
                "showTicks": false,
                "variant": "line"
              },
              "trend": {
                "isRelative": false,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"stage\"]",
                "[\"count()\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"name\"]": 314
              },
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
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
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
            "unitsOverrides": [],
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
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| filter stage == \"STAGE_3\"\n| fields name, days_to_expire, certificate_stage, stage\n| filter contains(name, $Certificate_Name)\n| summarize count(), by:{stage}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificates Expired",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "service_name,expire_date,cert_type,subject_common_name,dt.entity.python:certificate_monitor_certificate,name,current_time,stage,lifecycle",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "no.of_days_for_expiry",
                "valueAxisScale": "linear"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "absolute",
                "groupingThresholdValue": 0,
                "hideLabels": false,
                "valueType": "absolute"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
              },
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "auto",
              "truncationMode": "start",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "count()"
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
              "colorMode": "custom-colors",
              "colorPalette": "blue",
              "customColors": [],
              "dataMappings": {
                "value": "no.of_days_for_expiry"
              },
              "displayedFields": [
                "entity.name",
                "id",
                "expiry_date",
                "stage",
                "lifecycle"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "label": {
              "label": "Total Certificates",
              "showLabel": true
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "Certificates Expired",
              "prefixIcon": "XmarkFilledIcon",
              "recordField": "count()",
              "showLabel": false,
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-07-default, #438fb1)"
                },
                "isVisible": true,
                "lineType": "linear",
                "record": "status",
                "showTicks": false,
                "variant": "line"
              },
              "trend": {
                "isRelative": false,
                "isVisible": true,
                "trendType": "auto"
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
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
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
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "7": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n// | fieldsAdd days_to_expire=\n//             toLong((toTimestamp(formatTimestamp(toTimestamp(validity_not_after),format:\"yyyy-MM-dd\"))-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\")))/duration(24*1, \"h\"))\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))\n| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n// | dedup name, sort: {validity_not_after desc}\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| filter stage == \"STAGE_0\"\n| filter contains(name, $Certificate_Name)\n| fields `Certificate`=entity, `Days to expiration`=days_to_expire, `Valid not after`=validity_not_after, `File name`=file_name, `Service name`=service_name, `MINT Stage`=certificate_stage, `Calc Stage`=stage, `Type`=cert_type, Lifecycle=lifecycle\n| sort Certificate asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificates greater than $Soon days",
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
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
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
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "recordView": {
              "fieldsWidth": 200
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
                "[\"Certificate\"]",
                "[\"Days to expiration\"]",
                "[\"Valid not after\"]",
                "[\"File name\"]",
                "[\"Service name\"]",
                "[\"MINT Stage\"]",
                "[\"Calc Stage\"]",
                "[\"Type\"]",
                "[\"Lifecycle\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 10512510,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Certificate\"]": 366,
                "[\"file_name\"]": 172.4124755859375,
                "[\"jks_name\"]": 147.99999237060547,
                "[\"service_name\"]": 272.28749084472656
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed",
              "sortBy": [
                {
                  "columnId": "[\"name\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1752613656772,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Days to expiration",
                "suffix": "",
                "unitCategory": "time"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "8": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n\n// | dedup name, sort: {validity_not_after desc}\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| filter stage == \"STAGE_1\"\n| filter contains(name, $Certificate_Name)\n| fields `Certificate`=entity, `Days to expiration`=days_to_expire, `Valid not after`=validity_not_after, `File name`=file_name, `Service name`=service_name, `MINT Stage`=certificate_stage, `Calc Stage`=stage, `Type`=cert_type\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Certificates expiration between $Imminent and $Soon days",
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
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
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
                "[\"Certificate\"]",
                "[\"Days to expiration\"]",
                "[\"Valid not after\"]",
                "[\"File name\"]",
                "[\"Service name\"]",
                "[\"MINT Stage\"]",
                "[\"Calc Stage\"]",
                "[\"Type\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 10654242,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Certificate\"]": 364,
                "[\"jks_name\"]": 147.99999237060547,
                "[\"service_name\"]": 272.28749084472656
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
            "unitsOverrides": [
              {
                "added": 1752671516530,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Days to expiration",
                "suffix": "",
                "unitCategory": "time"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "9": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "count",
                    "unitCategory": "unspecified"
                  }
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries status = min(certificate.monitor.status, \n    filter: { \n      in(source, array($Source)) \n    }), \n    by: {\n      // Dimensions via normal ingest\n      certificate_stage,\n      cert_type,\n      subject_common_name,\n      validity_not_after,\n      `dt.entity.python:certificate_monitor_certificate`,\n      // External source dimensions\n      file_name,\n      service_name,\n      // TODO: is `stage` a part of the incoming metric line?\n      // stage,\n      expire_date\n    }\n| fieldsAdd name = entityName(`dt.entity.python:certificate_monitor_certificate`)\n| fieldsAdd current_time=formatTimestamp(now(),format:\"yyyy-MM-dd\")\n| fieldsAdd validity_not_after=if(isNull(expire_date), validity_not_after, else: expire_date)\n| fieldsAdd days_to_expire= toTimestamp(validity_not_after)-toTimestamp(formatTimestamp(now(),format:\"yyyy-MM-dd\"))| fieldsAdd stage= if(\n    days_to_expire \u003e duration(24 * toDouble($Soon), \"h\"),\"STAGE_0\",\n      else: if(days_to_expire \u003e duration(24 * toDouble($Imminent), \"h\"),\"STAGE_1\",\n        else: if(days_to_expire \u003e duration(24, \"h\"),\"STAGE_2\",\n          else: \"STAGE_3\"\n        )\n      )\n   )\n| fieldsAdd lifecycle=\n            if(stage == \"STAGE_0\", \"0: Greater than $Soon:noquote\",\n              else: if(stage == \"STAGE_1\",\"1: Between $Imminent:noquote and $Soon:noquote\",\n                else: if(stage == \"STAGE_2\",\"2: Between 1 and $Imminent:noquote\",\n                  else:\"3: Expired\"\n                )\n              )\n            )\n\n// | dedup name, sort: {validity_not_after desc}\n| fieldsAdd entity_id = `dt.entity.python:certificate_monitor_certificate`\n| fieldsAdd entity_url = concat($TenantUrl, \"/ui/apps/dynatrace.classic.technologies/ui/entity/\", entity_id)\n| fieldsAdd entity = concat(\"[\", name, \"]\", \"(\", entity_url, \")\")\n| filter stage == \"STAGE_3\"\n| filter contains(name, $Certificate_Name)\n| fields `Certificate`=entity, `Days to expiration`=days_to_expire, `Valid not after`=validity_not_after, `File name`=file_name, `Service name`=service_name, `MINT Stage`=certificate_stage, `Calc Stage`=stage, `Type`=cert_type\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "List of Certificates Expired",
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
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.python:certificate_monitor_certificate",
                "interval",
                "no.of_days_for_expiry",
                "status"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Certificate status"
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
                "[\"Certificate\"]",
                "[\"Days to expiration\"]",
                "[\"Valid not after\"]",
                "[\"File name\"]",
                "[\"Service name\"]",
                "[\"MINT Stage\"]",
                "[\"Calc Stage\"]",
                "[\"Type\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Certificate"
                  ],
                  "id": 10628831,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Certificate\"]": 367,
                "[\"jks_name\"]": 147.99999237060547,
                "[\"service_name\"]": 272.28749084472656
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
            "unitsOverrides": [
              {
                "added": 1752671553222,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Days to expiration",
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
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "// timeseries status = min(certificate.monitor.status, filter: { source == \"External\" }), by: { file_name, service_name, expire_date, cert_type, subject_common_name, `dt.entity.python:certificate_monitor_certificate`}\nfetch `dt.entity.python:certificate_monitor_certificate`\n// fetch logs\n| fields source\n// | filterOut loglevel == \"NONE\"\n| summarize distinctSources = collectDistinct(source)\n| expand distinctSources\n| sort distinctSources",
          "key": "Source",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": "45",
          "editable": true,
          "key": "Soon",
          "type": "text",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": "15",
          "editable": true,
          "key": "Imminent",
          "type": "text",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "input": "import { getEnvironmentUrl } from \"@dynatrace-sdk/app-environment\"\n\nexport default function () {\n  return [getEnvironmentUrl()];\n}",
          "key": "TenantUrl",
          "multiple": false,
          "type": "code",
          "version": 1,
          "visible": false
        },
        {
          "editable": true,
          "key": "Certificate_Name",
          "type": "text",
          "version": 1,
          "visible": true
        }
      ],
      "version": 19
    })
  custom_id = "com-dynatrace-custom-python-certificate-monitor-advanced-certificate-monitor-557713934"
  # private = false
}
