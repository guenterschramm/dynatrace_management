resource "dynatrace_document" "Usage-Logs" {
  name      = "Usage - Logs"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "100": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 51
        },
        "101": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 51
        },
        "102": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 54
        },
        "103": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "104": {
          "h": 7,
          "w": 4,
          "x": 0,
          "y": 63
        },
        "105": {
          "h": 7,
          "w": 10,
          "x": 4,
          "y": 63
        },
        "106": {
          "h": 7,
          "w": 10,
          "x": 14,
          "y": 63
        },
        "107": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 3
        },
        "108": {
          "h": 6,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "109": {
          "h": 6,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "110": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 9
        },
        "111": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 9
        },
        "112": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "113": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "114": {
          "h": 3,
          "w": 20,
          "x": 0,
          "y": 27
        },
        "115": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "117": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "24": {
          "h": 12,
          "w": 24,
          "x": 0,
          "y": 94
        },
        "52": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "78": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 74
        },
        "79": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 74
        },
        "80": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 74
        },
        "81": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 83
        },
        "82": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 88
        },
        "83": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 79
        },
        "84": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 81
        },
        "87": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 79
        },
        "88": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 83
        },
        "89": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 88
        },
        "90": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 81
        },
        "91": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 79
        },
        "92": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 81
        },
        "93": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 83
        },
        "94": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 88
        },
        "95": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 70
        },
        "99": {
          "h": 4,
          "w": 17,
          "x": 0,
          "y": 47
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-2h",
            "to": "now()"
          }
        }
      },
      "tiles": {
        "100": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: -7d@d, to: @d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n// | filter event.type == \"Log Management \u0026 Analytics - Retain with Included queries\"\n| filter event.type == \"Log Management \u0026 Analytics - Ingest \u0026 Process\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:1d\n| fieldsAdd yesterday = arrayLast(daily)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Daily Ingest (yesterday)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "yesterday",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "yesterday",
              "sparklineSettings": {
                "record": "daily"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "yesterday",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "101": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: -7d@d, to: @d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter startsWith(event.type, \"Log Management \u0026 Analytics - Retain\")\n// | filter event.version == \"1.0\" \n| makeTimeseries daily=sum(billed_bytes / 24.0), interval:1d\n| fieldsAdd yesterday = arrayLast(daily)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total retention (current)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "yesterday",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "yesterday",
              "sparklineSettings": {
                "record": "daily"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "yesterday",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "102": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Bucket, retention, included, size, total query, billable, included\nfetch dt.system.buckets\n| filter dt.system.table == \"logs\"\n| fields bucket = name, included_query_days, retention_days, size = estimated_uncompressed_bytes \n// join query statistics - scanned bytes\n| join [\n  fetch dt.system.query_executions, from: -7d@d, to: @d\n  | filter table == \"logs\"\n  | filter status == \"SUCCEEDED\"  \n  | summarize scanned_bytes = sum(scanned_bytes / 7), scanned_bytes.included = sum(scanned_bytes.included / 7), by: { bucket }\n], on: bucket, kind:outer\n| fieldsAdd right.scanned_bytes = if (isNull(right.scanned_bytes), 0.0, else: right.scanned_bytes)\n| fieldsAdd right.scanned_bytes.included = if (isNull(right.scanned_bytes.included), 0.0, else: right.scanned_bytes.included)\n| sort right.scanned_bytes desc\n// included queries bucket size\n| fieldsRename query_volume_total = right.scanned_bytes\n| fieldsRename query_volume_included = right.scanned_bytes.included\n| fieldsRemove right.bucket\n| join [\n  fetch dt.system.events, from: now()-7d\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter startsWith(event.type, \"Log Management \u0026 Analytics - Retain with Included Queries\")\n  | summarize included_retain_size = sum(billed_bytes / (24.0 * 7)), by: {usage.bucket}\n], on: right[usage.bucket] == left[bucket], kind: outer\n| fields \n`Bucket name` = bucket, \n`Total Retain Size` = size, \n`Retention` = retention_days, \n`Daily Avg Query volume` = query_volume_total,\n`RwIQ` = if (included_query_days \u003e 0, \"🔵\", else: \"-\"),\n`Included queries period` = if (included_query_days \u003e 0, included_query_days, else: \"-\"),\n`Daily Avg Included queries volume` = if (query_volume_included \u003e 0, query_volume_included, else: \"-\"),\n`Daily Avg Included queries quota` = if (right.included_retain_size \u003e 0, 15 * right.included_retain_size, else: \"-\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Logs query usage by buckets last 7d daily averages",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Bucket name\"]",
                "[\"Total Retain Size\"]",
                "[\"Retention\"]",
                "[\"Daily Avg Query volume\"]",
                "[\"RwIQ\"]",
                "[\"Included queries period\"]",
                "[\"Daily Avg Included queries volume\"]",
                "[\"Daily Avg Included queries quota\"]"
              ],
              "columnWidths": {
                "[\"Included queries period\"]": 162,
                "[\"RwIQ\"]": 77.2,
                "[\"name\"]": 352.3999938964844
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"RwIQ\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Total Retain Size",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279418040,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Daily Avg Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279452463,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Daily Avg Included queries quota",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279512808,
                "baseUnit": "day",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Retention",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1748279522547,
                "baseUnit": "day",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Included queries period",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1769428296251,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Daily Avg Included queries volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "103": {
          "content": "#\n### Included queries usage overview\nRetain with Included Queries (RwIQ) allows you to keep query costs predictable. [Learn more](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-included-log-queries)\n\nKeeping your weekly query multiple below 15 improves performance and is compliant with our fair usage policy.\n\nTo reduce the multiple you can:\n- increase included queries period on buckets to get higher quota\n- replace log queries with log-based metrics on dashboards and alerts [Learn more](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-log-query-dashboard)\n- optimize expensive documents and queries (check section above)\n\n",
          "type": "markdown"
        },
        "104": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Estimated consumption of \"Included Queries\" quota (x15 of total retained RwIQ bytes)",
          "query": "fetch dt.system.events, from: now()-1h\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Retain with Included Queries\"\n| summarize included = sum(billed_bytes) \n| append [\n  // weekly average of included scanned bytes\n  fetch dt.system.query_executions, from: now()-7d\n  | filter table == \"logs\" and status == \"SUCCEEDED\"\n  | summarize scanned_daily = sum(scanned_bytes.included) / 7.0\n]\n| summarize included = max(included), scanned_daily = max(scanned_daily)\n| fieldsAdd multiple = if(isNull(included) or isNull(scanned_daily) or included == 0, 0.0, else:scanned_daily / included)\n| fields multiple",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Last week query multiple",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-poor-default, #d56b1a)"
                  },
                  "field": "multiple",
                  "value": 11
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "multiple",
                  "value": 15
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003c",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "multiple",
                  "value": 11
                }
              ]
            },
            "singleValue": {
              "labelMode": "none",
              "recordField": "multiple"
            },
            "unitsOverrides": [
              {
                "added": 1743066844931,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "multiple",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": {
                "mode": "data-field"
              },
              "min": {
                "mode": "custom"
              }
            }
          }
        },
        "105": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: -28d@d, to: @d\n  | filter (event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Retain with Included Queries\")\n  or (event.kind == \"QUERY_EXECUTION_EVENT\" and table == \"logs\" and status == \"SUCCEEDED\")\n  | makeTimeseries {scanned_bytes=sum(1.0 * scanned_bytes.included / 7.0) , retained_bytes=sum(billed_bytes / (7 * 24.0))}, interval:7d \n  | fieldsAdd multiple = scanned_bytes[] / retained_bytes[]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query multiple overtime (Last 28d)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "multiple"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": true,
                "position": "bottom"
              },
              "rightYAxisSettings": {
                "max": {
                  "mode": "data-max"
                }
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "purple-rain",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eea53c)",
                  "colorMode": "single-color",
                  "max": 15,
                  "min": 11,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c62239)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 15,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6862)",
                  "colorMode": "single-color",
                  "max": 11,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1748272837672,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "multiple",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "106": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: -28d@d, to: @d\n  | filter (event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Retain with Included Queries\")\n  or (event.kind == \"QUERY_EXECUTION_EVENT\" and table == \"logs\" and status == \"SUCCEEDED\")\n  | makeTimeseries {scanned_bytes=sum(1.0 * scanned_bytes.included / 7.0) , retained_bytes=sum(billed_bytes / (7 * 24.0))}, interval:7d \n  | fieldsAdd quota = 15 * retained_bytes[]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Included scanned bytes against Quota (Last 28d)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "multiple",
                  "retained_bytes",
                  "scanned_bytes",
                  "quota"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "rightYAxisSettings": {
                "max": {
                  "mode": "data-max"
                }
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-06-default, #2c2f3f)"
                    }
                  },
                  "seriesId": [
                    "scanned_bytes"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "retained_bytes"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                    }
                  },
                  "seriesId": [
                    "quota"
                  ]
                }
              ],
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "purple-rain",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-06-default, #2c2f3f)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "scanned_bytes"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "retained_bytes"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "quota"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1748272837672,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "quota",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1769423291898,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "scanned_bytes",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1769423292570,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "retained_bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "107": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\" and event.version == \"1.0\"\n\n| makeTimeseries \n  vol=sum(billed_bytes),\n  time:timestamp, interval: 1d\n| fieldsRename `Billable query volume` = vol\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query volume (Last 30d)",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "hidden": true,
                "position": "bottom"
              },
              "pointsDisplay": "never",
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "Query volume"
                  ]
                }
              ]
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Query volume"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "108": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-28d, to: @d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Log Management \u0026 Analytics - Query\"\n  and event.version == \"1.0\"\n| makeTimeseries query_count = countDistinct(query_id), interval: 7d\n| fieldsAdd daily = arrayLast(query_count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query count (weekly)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "daily",
              "sparklineSettings": {
                "record": "query_count"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "109": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-28d, to: @d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Log Management \u0026 Analytics - Query\"\n  and event.version == \"1.0\"\n| makeTimeseries users=countDistinct(user.email), interval: 7d\n| fieldsAdd daily = arrayLast(users)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active users (weekly)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "daily",
              "sparklineSettings": {
                "record": "users"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "110": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-30d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Log Management \u0026 Analytics - Query\"\n  and event.version == \"1.0\"\n// Coalesce source\n| fieldsAdd source = coalesce(client.application_context, client.function_context, client.client_context, client.internal_service_context, \"null\")\n| summarize {\n    query_volume = sum(billed_bytes),\n    query_count = countDistinct(query_id),\n    users = countDistinct(user.email)\n  }, by: {source}\n| sort query_volume desc\n| limit 10\n| fieldsAdd source = if(source==\"null\", \"Workflow / Query API / Other\", else:source)\n| fieldsRename Application = source, `Query volume` = query_volume, `Users` = users, `Query count` = query_count",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 applications by query volume (Last 30d)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"source\"]": 304
              }
            },
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "111": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-30d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Log Management \u0026 Analytics - Query\"\n  and event.version == \"1.0\"\n// Coalesce source\n| fieldsAdd source = coalesce(client.application_context, client.function_context, client.client_context, client.internal_service_context, \"null\")\n\n| makeTimeseries \n  vol=sum(billed_bytes),\n  time:timestamp, interval: 1d\n  ,  by:source\n\n| sort arraysum(vol) desc\n| fieldsRename `Billable query volume` = vol\n| fieldsAdd source = if(source==\"null\", \"workflow / query API / other\", else:source)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query volume share by source (Last 30d)",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "start"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 24
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "112": {
          "content": "#\n### Dashboards and Notebooks with high usage\nReview documents and queries listed below. \n\n**Use** the **timeframe** and **filters for Application, User, DocumentId** to set focus.\n\nFrequently accessed Dashboards and Notebooks running multiple expensive queries can be optimized using metrics extracted with OpenPipeline. [Learn more](https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/tutorial-log-processing-pipeline)\n\n\nTo compare week to week usage set the timeframe to Last 7 days",
          "type": "markdown"
        },
        "113": {
          "customLinkSettings": {
            "customLinks": [],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: toTimestamp($dt_timeframe_from) - (toTimestamp($dt_timeframe_to) - toTimestamp($dt_timeframe_from)), to: toTimestamp($dt_timeframe_to), scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\"\n| dedup event.id\n| filter in(client.application_context, \"dynatrace.dashboards\", \"dynatrace.notebooks\")\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n| parse client.source, \"'https://' LD '--' LD:tenant_id ('--' | '.') LD\"\n| filter isNotNull(document_id)\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd period = if(toTimestamp(timestamp) \u003e= toTimestamp($dt_timeframe_from), \"current\", else: \"previous\")\n| summarize {\n    `Query volume` = sum(billed_bytes),\n    `Views` = count(),\n    `Users` = countDistinct(user.email),\n    tenant = takeFirst(tenant_id)\n  }, by: {\n    document_id,\n    period,\n    client.application_context\n  }\n| summarize {\n    `Current Period` = sum(if(period == \"current\", `Query volume`, else: 0)),\n    `Previous Period` = sum(if(period == \"previous\", `Query volume`, else: 0)),\n    `Current Period Views` = sum(if(period == \"current\", `Views`, else: 0)),\n    `Previous Period Views` = sum(if(period == \"previous\", `Views`, else: 0)),\n    `Current Period Users` = sum(if(period == \"current\", `Users`, else: 0)),\n    `Previous Period Users` = sum(if(period == \"previous\", `Users`, else: 0)),\n    tenant_id = takeFirst(tenant)    \n  }, by: { `DocumentId` = document_id, `Application` = client.application_context }\n| sort `Current Period` desc\n| limit 25\n| fieldsAdd `Document Link` = if(Application == \"dynatrace.dashboards\", \n    concat(\"https://\", tenant_id, \".apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/\", `DocumentId`),\n    else: concat(\"https://\", tenant_id, \".apps.dynatrace.com/ui/apps/dynatrace.notebooks/notebook/\", `DocumentId`))\n| fieldsRemove tenant_id\n| fieldsAdd `Change` = `Current Period` - `Previous Period`\n| fieldsAdd `Change (%)` = if(`Previous Period` \u003e 0, (`Current Period` - `Previous Period`) / `Previous Period` * 100, else: \"++ NEW ++\")\n| fieldsAdd Trend = if(`Change` \u003e 0, \"📈 Up\", else: if(`Change` \u003c 0, \"📉 Down\", else: \"➡️ Stable\"))\n\n| fieldsAdd `Document Link` = concat(\"[Open](\", `Document Link`, \")\")\n| fieldsRemove `Previous Period`, \"Change\"\n\n| fieldsAdd diffViews = toLong(`Current Period Views` - `Previous Period Views`)\n| fieldsAdd diffViews = if (diffViews \u003e 0, concat(\"+\", diffViews), else: diffViews)\n| fieldsAdd Views = concat(toLong(`Current Period Views`), \" (\",  diffViews ,\")\")\n\n| fieldsAdd diffUsers = toLong(`Current Period Users` - `Previous Period Users`)\n| fieldsAdd diffUsers = if (diffUsers \u003e 0, concat(\"+\", diffUsers), else: diffUsers)\n| fieldsAdd Users = concat(toLong(`Current Period Users`), \" (\",  diffUsers ,\")\")\n| fieldsRemove diffViews, diffUsers, `Current Period Users`, `Previous Period Users`, `Current Period Views`, `Previous Period Views`\n| fieldsRename `Query volume` = `Current Period`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 25 documents by usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": "#FFD1D1",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "double",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": "#ADFFC2",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "double",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "!=",
                  "customColor": "#FFF4CC",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "double",
                  "value": 0
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"DocumentId\"]",
                "[\"Document Link\"]",
                "[\"Application\"]",
                "[\"Query volume\"]",
                "[\"Change (%)\"]",
                "[\"Trend\"]",
                "[\"Views\"]",
                "[\"Users\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "Document Link"
                  ],
                  "id": 4213102,
                  "value": "markdown"
                }
              ],
              "hideColumnsForLargeResults": false
            },
            "unitsOverrides": [
              {
                "added": 1771600197872,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Current Period",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600202632,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Previous Period",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600203647,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Period Views",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600204862,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Previous Period Views",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600205409,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Period Users",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600206008,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Previous Period Users",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600206346,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600206513,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Change (%)",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "114": {
          "content": "#\n### Detailed query usage and optimization opportunities\n\nAnalyze query usage across different Applications and Users.\n\n**Use** the **timeframe** and **filters** above to narrow down usage data.\n",
          "type": "markdown"
        },
        "115": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\" and event.version == \"1.0\"\n| dedup event.id\n| filter in(\"ALL\", array($Application)) OR in(client.application_context, array($Application))\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n//filter for the Document ID when there is a text inside the DocumentID field\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd filtered_bytes = if(matches_filter, billed_bytes, else: 0)\n| summarize \n    `Query count` = countIf(matches_filter),    \n    `Query volume` = sum(filtered_bytes),\n    by: { \n      User = user.email, \n      Application = client.application_context \n    }\n| filter `Query count` \u003e 0\n| sort `Query volume` desc\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 100 users by application",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"User\"]",
                "[\"Application\"]",
                "[\"Query volume\"]",
                "[\"Query count\"]"
              ],
              "columnWidths": {
                "[\"App\"]": 258.58,
                "[\"Application\"]": 243.6,
                "[\"Query count (user/app)\"]": 182,
                "[\"Query volume (user/app)\"]": 236.8,
                "[\"Query volume\"]": 137.9,
                "[\"User\"]": 484.05
              },
              "hiddenColumns": [
                [
                  "Query count (user/app)"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Query volume\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748277954716,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Billable query volume (user/app)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "117": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\" and event.version == \"1.0\"\n| dedup event.id\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| filter in(\"ALL\", array($Application)) OR in(client.application_context, array($Application))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd filtered_bytes = if(matches_filter, billed_bytes, else: 0)\n| sort billed_bytes desc\n| limit 25\n| lookup [\n  fetch dt.system.query_executions, \n from:toTimestamp($dt_timeframe_from)-2h, \n to:toTimestamp($dt_timeframe_to) \n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"executiondata.\",\n  executionOrder:leftFirst\n| fields\n    query_string=executiondata.query_string,\n    query_volume=toDouble(billed_bytes),\n    User=user.email,\n    Application=client.application_context,\n    DocumentId = if(stringLength(document_id)\u003e0, document_id, else: \"-\")\n| fieldsRename `Query string`=query_string, `Query volume`=query_volume\n| sort `Query volume` desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": " Top 100 queries by billable query volume",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"Query cost\"]": 124.8,
                "[\"Query string\"]": 767,
                "[\"Query volume\"]": 135.85
              },
              "lineWrapIds": [
                [
                  "Query string"
                ]
              ],
              "linewrapEnabled": true,
              "sortBy": [
                {
                  "columnId": "[\"Query string\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1722507076574,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "24": {
          "content": "#### Additional resources\n**Usage and costs data in Account Management**\n* [User account](https://myaccount.dynatrace.com) \u003e Recent accounts \u003e (Choose your account) \u003e Subscription \u003e Overview \u003e Cost and usage details: Log Management \u0026 Analytics - Query \u003e View details\n**Optimize DQL usage**\n* [DQL Best practices](https://docs.dynatrace.com/docs/shortlink/dql-best-practices)  (docs)\n* [Use log metrics instead of log queries for frequently presented data](https://docs.dynatrace.com/docs/shortlink/lma-log-dashboards) (docs)\n**Manage your Dynatrace Platform Subscription budget**\n* [Avoid billing surprises with smart Dynatrace cost monitors](https://www.dynatrace.com/news/blog/avoid-billing-surprises-with-smart-dynatrace-cost-monitors/) (blog)\n* [How to use DPS cost monitors](https://docs.dynatrace.com/docs/shortlink/cost-monitors) (docs)\n* [Set up and get alerted with custom budgets with DPS](https://docs.dynatrace.com/docs/shortlink/dps-budgets) (docs)\n**Dynatrace Platform setup**\n* [Setup Dynatrace Platform according to best practises](https://docs.dynatrace.com/docs/shortlink/upgrade-latest-dynatrace) (docs)\n* [Restrict users to query only data they need](https://docs.dynatrace.com/docs/shortlink/grail-data-model) (docs)\n\n---\n\n#### About this dashboard\n\n**User access**\n\n* This dashboard uses data in `dt.system` tables about billing usage events and query execution events.\n* Assign or remove [default access policies](https://docs.dynatrace.com/docs/shortlink/built-in-policies#access-to-data) with `storage:system:read` permission to provide or restrict access to this data.\n\nRelease v1.0",
          "type": "markdown"
        },
        "52": {
          "content": "### Billable logs usage\nThis dashboard helps to understand usage and identify optimization opportunities for [Log Analytics (DPS) capabilities](https://docs.dynatrace.com/docs/license/capabilities/log-analytics)\n\n**Minimum recommended timeframe is 2h.**\n",
          "type": "markdown"
        },
        "78": {
          "content": "### Log Analytics\n---\nLog Analytics helps you make sense of vast volumes of log data by turning raw entries into actionable insights. Whether you're troubleshooting issues, monitoring system behavior, or exploring trends, it enables you to search, filter, and visualize logs with precision.\n\nYou can use Logs, Notebooks or Security Investigator app.\n\n[Explore in Logs app](/ui/apps/dynatrace.logs/) ",
          "type": "markdown"
        },
        "79": {
          "content": "### Logs on Dashboards\n---\n\nDashboards are a central place to monitor everything from infrastructure health to application performance. While you can display raw log data directly, transforming logs into metrics or business events using OpenPipeline helps streamline dashboards for faster loading and clearer insights.\n\nThis approach makes it easier to track key patterns, set alerts, and share meaningful views across teams - without overloading your dashboards with complex queries.\n\n[Optimize dashboards with Log queries](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-log-query-dashboard)\n\n\n",
          "type": "markdown"
        },
        "80": {
          "content": "### Logs in Context \n---\n\nDynatrace automatically enriches logs with context like entities or traces - giving you instant access to logs in different apps. Whether you're investigating a service issue, analyzing infrastructure behavior, or exploring cloud activity, logs are just one click away.\n\nThis seamless integration across apps like Kubernetes, Clouds, Infrastructure, Databases, and Services eliminates the need to build queries manually. You get faster insights, fewer blind spots, and a smoother troubleshooting experience.\n\n[Learn more about Logs in Context](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-troubleshooting)",
          "type": "markdown"
        },
        "81": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n//| makeTimeseries query_count=count(), query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| makeTimeseries query_count=count(), interval:1h\n| fieldsAdd query_count=arrayMovingAvg(query_count, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.log-events\", \"dynatrace.notebooks\", \"dynatrace.logs\", \"dynatrace.security.investigator\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "client.application_context"
              ]
            },
            "unitsOverrides": []
          }
        },
        "82": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.log-events\", \"dynatrace.notebooks\", \"dynatrace.logs\", \"dynatrace.security.investigator\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count,\n`Scanned volume`=scanned_bytes\n\n| sort `User count` desc\n\n\n",
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
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]",
                "[\"Scanned volume\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"User count\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "83": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.notebooks\" OR\n    client.application_context==\"dynatrace.classic.log-events\" OR\n    client.application_context==\"dynatrace.logs\" OR\n    client.application_context==\"dynatrace.security.investigator\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs use log analytics\")\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            }
          }
        },
        "84": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nlastmonth_query=countDistinct(query_id),\nquery_notebooks=countDistinct(if(client.application_context == \"dynatrace.notebooks\", query_id)),\nquery_logs=countDistinct(if(client.application_context == \"dynatrace.logs\", query_id)),\nquery_classic=countDistinct(if(client.application_context == \"dynatrace.classic.log-events\", query_id)),\nquery_security=countDistinct(if(client.application_context == \"dynatrace.security.investigator\", query_id)),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.notebooks\" OR\n    client.application_context==\"dynatrace.classic.log-events\" OR\n    client.application_context==\"dynatrace.logs\" OR\n    client.application_context==\"dynatrace.security.investigator\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd lastmonth_query_per_apps = (query_notebooks+query_logs+query_classic+query_security)\n\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fieldsAdd average_queries_per_user = lastmonth_query_per_apps / lastmonth_users_per_apps\n\n| fields `Depth of Adoption (Queries)` = concat(\"On average, a user runs \",average_queries_per_user, \" log analytics queries\")\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queries per user",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Depth of Adoption (Queries)",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "87": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n\n| summarize \nlastmonth_users=countDistinct(user.email),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.classic.embedded-logs\" OR\n    client.application_context==\"dynatrace.kubernetes\" OR\n    client.application_context==\"dynatrace.infraops\" OR\n    client.application_context==\"dynatrace.clouds\" OR \n    client.application_context==\"dynatrace.database.overview\" OR \n    client.application_context==\"dynatrace.services\" OR\n    client.application_context==\"dynatrace.distributedtracing\" OR\n    client.application_context==\"dynatrace.davis.problems\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs run recommended log queries\")\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            }
          }
        },
        "88": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n//| makeTimeseries query_count=count(), query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| makeTimeseries query_count=count(), interval:1h\n| fieldsAdd query_count=arrayMovingAvg(query_count, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.embedded-logs\", \"dynatrace.kubernetes\", \"dynatrace.infraops\", \"dynatrace.clouds\", \"dynatrace.database.overview\", \"dynatrace.services\",\"dynatrace.distributedtracing\", \"dynatrace.davis.problems\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "client.application_context"
              ]
            },
            "unitsOverrides": []
          }
        },
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.embedded-logs\", \"dynatrace.kubernetes\", \"dynatrace.infraops\", \"dynatrace.clouds\", \"dynatrace.database.overview\", \"dynatrace.services\",\"dynatrace.distributedtracing\", \"dynatrace.davis.problems\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count\n\n| sort `User count` desc\n\n\n",
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
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "90": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nlastmonth_query=countDistinct(query_id),\nquery_classic=countDistinct(if(client.application_context == \"dynatrace.classic.embedded-logs\", query_id)),\nquery_kubernetes=countDistinct(if(client.application_context == \"dynatrace.kubernetes\", query_id)),\nquery_infraops=countDistinct(if(client.application_context == \"dynatrace.infraops\", query_id)),\nquery_clouds=countDistinct(if(client.application_context == \"dynatrace.clouds\", query_id)),\nquery_database=countDistinct(if(client.application_context == \"dynatrace.database.overview\", query_id)),\nquery_services=countDistinct(if(client.application_context == \"dynatrace.services\", query_id)),\nquery_distributedtracing=countDistinct(if(client.application_context == \"dynatrace.distributedtracing\", query_id)),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.classic.embedded-logs\" OR\n    client.application_context==\"dynatrace.kubernetes\" OR\n    client.application_context==\"dynatrace.infraops\" OR\n    client.application_context==\"dynatrace.clouds\" OR \n    client.application_context==\"dynatrace.database.overview\" OR \n    client.application_context==\"dynatrace.services\" OR\n    client.application_context==\"dynatrace.distributedtracing\" OR\n    client.application_context==\"dynatrace.davis.problems\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd lastmonth_query_per_apps = (query_classic+query_kubernetes+query_infraops+query_clouds+query_database+query_services+query_distributedtracing)\n\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fieldsAdd average_queries_per_user = lastmonth_query_per_apps / lastmonth_users_per_apps\n\n| fields `Queries per user` = concat(\"On average, a user runs \",average_queries_per_user, \" recommended log queries\")\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queries per user",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Queries per user",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nusers_dashboards = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.dashboards\" OR\n    client.application_context==\"dynatrace.classic.dashboard-log-tile\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_dashboards))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs run pinned logs queries\")\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            }
          }
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_query=sum(scanned_bytes.on_demand)/ (1024*1024*1024),\nquery_3rdgendashboards = sum(if(client.application_context == \"dynatrace.dashboards\", scanned_bytes.on_demand)) / (1024 * 1024 * 1024),\nquery_2rdgendashboards = sum(if(client.application_context == \"dynatrace.classic.dashboard-log-tile\", scanned_bytes.on_demand)) / (1024 * 1024 * 1024)\n\n| fieldsAdd lastmonth_query_per_apps = query_3rdgendashboards+query_2rdgendashboards\n| fieldsAdd percentage_query1 = lastmonth_query_per_apps  + lastmonth_query\n| fieldsAdd percentage_query2 = lastmonth_query_per_apps / lastmonth_query*100\n| fieldsAdd percentage_query = round(100*lastmonth_query_per_apps / lastmonth_query)\n| fields `Queries` = concat(\"Dashboards contribute to \",toLong(percentage_query), \"% of billable log query volume\")\n\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Assessment of optimization opportunity",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Queries",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "93": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n//| makeTimeseries query_count=count(), query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| makeTimeseries query_count=count(), interval:1h\n| fieldsAdd query_count=arrayMovingAvg(query_count, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.dashboards\", \"dynatrace.classic.dashboard-log-tile\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "client.application_context"
              ]
            },
            "unitsOverrides": []
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.dashboards\", \"dynatrace.classic.dashboard-log-tile\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count,\n`Scanned volume`=scanned_bytes\n\n| sort `User count` desc\n\n\n",
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
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]",
                "[\"Scanned volume\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"Scanned volume\"]",
                  "direction": "ascending"
                },
                {
                  "columnId": "[\"App\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "95": {
          "content": "#\n### Logs adoption by use cases\n**Insights are based on the last 4 weeks of usage data.**\n\nFrom deep-dive investigations to real-time monitoring and streamlined dashboards - logs power a wide range of use cases across Dynatrace. \n\nThis view highlights how users are adopting some log capabilities to solve real problems and accelerate insights. \n\n[Explore other log use cases in the documentation](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases)\n\n",
          "type": "markdown"
        },
        "99": {
          "content": "#\n### Ingest and Retention overview\nUnderstand how your data is distributed across buckets with different configurations. \n\nCheck other ready-made dashboard to get more details. For more insights about Ingest check **Logs ingest overview dashboard** and for Processing check **OpenPipeline usage overview**\n\nFollow [best practices](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-best-practices) to optimize you environments and queries.\n",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctApps=collectDistinct(client.application_context)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctApps))",
          "key": "Application",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctUsers=collectDistinct(user.email)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctUsers))\n",
          "key": "User",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "key": "DocumentId",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.logs.usage-logs"
  # private = false
}
