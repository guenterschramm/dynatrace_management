resource "dynatrace_document" "Alert_configuration_health_status" {
  name      = "Alert configuration health status"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 5,
          "w": 10,
          "x": 0,
          "y": 7
        },
        "11": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 14
        },
        "15": {
          "h": 7,
          "w": 14,
          "x": 8,
          "y": 14
        },
        "17": {
          "h": 3,
          "w": 22,
          "x": 0,
          "y": 40
        },
        "18": {
          "h": 9,
          "w": 5,
          "x": 0,
          "y": 43
        },
        "2": {
          "h": 5,
          "w": 4,
          "x": 10,
          "y": 7
        },
        "20": {
          "h": 9,
          "w": 17,
          "x": 5,
          "y": 43
        },
        "21": {
          "h": 9,
          "w": 22,
          "x": 0,
          "y": 21
        },
        "22": {
          "h": 2,
          "w": 22,
          "x": 0,
          "y": 12
        },
        "24": {
          "h": 8,
          "w": 7,
          "x": 0,
          "y": 32
        },
        "25": {
          "h": 8,
          "w": 15,
          "x": 7,
          "y": 32
        },
        "26": {
          "h": 2,
          "w": 22,
          "x": 0,
          "y": 30
        },
        "27": {
          "h": 3,
          "w": 22,
          "x": 0,
          "y": 52
        },
        "28": {
          "h": 7,
          "w": 10,
          "x": 0,
          "y": 55
        },
        "29": {
          "h": 7,
          "w": 4,
          "x": 10,
          "y": 55
        },
        "30": {
          "h": 7,
          "w": 4,
          "x": 14,
          "y": 55
        },
        "31": {
          "h": 7,
          "w": 4,
          "x": 18,
          "y": 55
        },
        "32": {
          "h": 8,
          "w": 22,
          "x": 0,
          "y": 65
        },
        "33": {
          "h": 9,
          "w": 11,
          "x": 0,
          "y": 73
        },
        "34": {
          "h": 9,
          "w": 11,
          "x": 11,
          "y": 73
        },
        "35": {
          "h": 3,
          "w": 22,
          "x": 0,
          "y": 62
        },
        "39": {
          "h": 2,
          "w": 22,
          "x": 0,
          "y": 0
        },
        "4": {
          "h": 5,
          "w": 4,
          "x": 14,
          "y": 7
        },
        "6": {
          "h": 5,
          "w": 4,
          "x": 18,
          "y": 7
        },
        "7": {
          "h": 5,
          "w": 22,
          "x": 0,
          "y": 2
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
          "query": "fetch dt.system.events, from:now() - 24h\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n//| filter status != \"SUCCESS\" \n| append [fetch dt.system.query_executions    \n | filter client.internal_service_context == \"dt.davis.anomaly-detector\"     \n | filter status == \"SUCCEEDED\"     \n | parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n | filter isNull(clientContext) OR clientContext[dt.task.group] == \"builtin:davis.anomaly-detectors\"\n | fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n | filter isNotNull(dt.settings.object_id)\n | summarize { successCount = countDistinct(query_id), by:{dt.settings.object_id, timestamp} } ]\n| summarize { error = countIf(status==\"ERROR\"), warn = countIf(status==\"WARNING\"), success = countIf(isNotNull(successCount))} , by:{dt.settings.object_id, detector_link, dt.settings.schema_id}\n| fieldsAdd percent = toDouble(success) / (error + warn + success) * 100\n| fieldsAdd type(percent), asDouble(percent), client.internal_service_context=\"dt.davis.anomaly-detector\"\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n//| config_id\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Overall custom alerts last 24h",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-06-default, #a9780f)"
                  },
                  "field": "",
                  "value": 94.9
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                  },
                  "field": "",
                  "value": 99
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "percent"
              },
              "displayedFields": [
                "config_id"
              ],
              "legend": {
                "hidden": true
              },
              "max": null,
              "min": null
            },
            "unitsOverrides": [
              {
                "added": 1745323757832,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "percent",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "fetch dt.system.events\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// message\n| fieldsAdd message = arrayRemoveNulls(arrayConcat(\n                          array(davis.anomaly_detector.message), \n                          dt.analyzer.warning_messages, \n                          dt.analyzer.error_messages,\n                          array(dt.task.failure_reason)))\n| expand message\n\n\n| filter if(stringLength($Custom_alert_message) == 0 or contains ( message, $Custom_alert_message, caseSensitive:false), true,else: false )\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| summarize count(), by:{message}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Most common error messages",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "message"
                ],
                "categoryAxisLabel": "message",
                "categoryAxisTickLayout": "vertical",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "= *value*",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
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
          "query": "fetch dt.system.events\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// message\n| fieldsAdd message = arrayRemoveNulls(arrayConcat(\n                          array(davis.anomaly_detector.message), \n                          dt.analyzer.warning_messages, \n                          dt.analyzer.error_messages,\n                          array(dt.task.failure_reason)))\n| expand message\n\n| filter if(stringLength($Custom_alert_message) == 0 or contains ( message, $Custom_alert_message), true,else: false )\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| makeTimeseries count = count(), by:{message}\n\n\n// | summarize count = count(), by:{dt.settings.object_id}\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error messages breakdown",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "message"
              ]
            }
          }
        },
        "17": {
          "content": "#### Breakdown by billed bytes\nThe section below displays the number of billable bytes scanned by your anomaly detector. If an anomaly detector does not appear, it may be because it did not run in the past week or only queries free data.\n\nFor more info, you can check the [rate card](https://www.dynatrace.com/pricing/rate-card/)",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now() - 1d, to: now() - 1h - 25m // exclude last hour and a bit, as no billing events have been written yet  \n| filter event.kind == \"QUERY_EXECUTION_EVENT\"\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\"\n| filter scanned_bytes \u003e 0 or scanned_bytes.on_demand \u003e 0 or scanned_bytes.included \u003e 0\n| join [\n  fetch dt.system.events, from: now() - 1d, to: now()\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter event.provider == \"LIMA_USAGE_STREAM\"\n  | filter isNotNull(client.source)\n  | dedup event.id\n], on: {query_id}, kind:leftOuter, prefix:\"bue.\"\n| fieldsAdd billed_bytes = coalesce(bue.billed_bytes, 0)\n| parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n| fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n| filter isNotNull(dt.settings.object_id)\n// billing events for logs do not split by bucket, therefore the join leads to multiple billing event with the same billed bytes. we summarize per billing event first\n| summarize {billed_bytes_per_billing_event = takeAny(billed_bytes), dt.settings.object_id = takeAny(dt.settings.object_id)}, by:{bue.event.id}\n| summarize {total_billed_bytes = sum(billed_bytes_per_billing_event)}, by:{dt.settings.object_id}\n\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n\n| fieldsAdd config_id = concat(\"[\", config_id, \"](\", \"/ui/intent/dynatrace.davis.anomalydetection/open_anomaly_detector_schema/#%7B%22dt.settings.object_id%22%3A%22\", dt.settings.object_id, \"%22%2C%22dt.settings.schema_id%22%3A%22builtin%3Adavis.anomaly-detectors%22%7D)\")\n| fields config_id, total_billed_bytes, dt.settings.object_id\n| fieldsAdd dt.settings.schema_id = \"builtin:davis.anomaly-detectors\"\n| sort total_billed_bytes desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top data usage per Custom Alerts Last 24h",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"config_id\"]",
                "[\"total_billed_bytes\"]",
                "[\"dt.settings.object_id\"]",
                "[\"dt.settings.schema_id\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "config_id"
                  ],
                  "id": 1623374.2000000477,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "dt.settings.object_id"
                ],
                [
                  "dt.settings.schema_id"
                ]
              ],
              "sortBy": {
                "columnId": "[\"davis.anomaly_detector.message\"]",
                "direction": "ascending"
              }
            },
            "unitsOverrides": [
              {
                "added": 1741940611151,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total_billed_bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now() - 24h\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n//| filter status != \"SUCCESS\" \n| append [fetch dt.system.query_executions    \n | filter client.internal_service_context == \"dt.davis.anomaly-detector\"     \n | filter status == \"SUCCEEDED\"     \n | parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n | filter isNull(clientContext) OR clientContext[dt.task.group] == \"builtin:davis.anomaly-detectors\"\n | fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n | filter isNotNull(dt.settings.object_id)\n | summarize { successCount = countDistinct(query_id), by:{dt.settings.object_id, timestamp} } ]\n| summarize { error = countIf(status==\"ERROR\"), warn = countIf(status==\"WARNING\"), success = countIf(isNotNull(successCount))} , by:{dt.settings.object_id, detector_link, dt.settings.schema_id}\n| fieldsAdd percent = toDouble(success) / (error + warn + success) * 100\n| fieldsAdd type(percent), asDouble(percent), client.internal_service_context=\"dt.davis.anomaly-detector\"\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n\n//| config_id\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| summarize countIf(percent \u003e= 99)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Last 24h",
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
                    "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                  },
                  "field": "countIf(percent \u003e= 99)",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "warn",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "success",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "percent",
                  "value": 90
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "percent",
                  "value": 99
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "label": "Success",
              "prefixIcon": "SuccessIcon",
              "recordField": "countIf(percent \u003e= 99)",
              "trend": {
                "isVisible": false,
                "trendType": "custom"
              }
            }
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now() - 1d, to: now() - 1h - 25m // exclude last hour and a bit, as no billing events have been written yet  \n| filter event.kind == \"QUERY_EXECUTION_EVENT\"\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\"\n| filter scanned_bytes \u003e 0\n| join [\n  fetch dt.system.events, from: now() - 1d, to: now()\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter event.provider == \"LIMA_USAGE_STREAM\"\n  | dedup event.id\n], on: {query_id}, kind:leftOuter, prefix:\"bue.\"\n| fieldsAdd billed_bytes = coalesce(bue.billed_bytes, 0)\n| parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n| filter isNull(clientContext) OR clientContext[dt.task.group] == \"builtin:davis.anomaly-detectors\"\n| fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n\n// billing events for logs do not split by bucket, therefore the join leads to multiple billing event with the same billed bytes. we summarize per billing event first\n| summarize {billed_bytes_per_billing_event = takeAny(billed_bytes), dt.settings.object_id = takeAny(dt.settings.object_id)}, by:{bue.event.id, timestamp, config_id}\n| makeTimeseries {total_billed_bytes = sum(billed_bytes_per_billing_event)}, by:{dt.settings.object_id, dt.settings.schema_id = \"builtin:davis.anomaly-detectors\", config_id}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top data usage per Custom Alerts Last 24h",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "total_billed_bytes"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "config_id"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741940611151,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total_billed_bytes",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch dt.system.events, from: -24h\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n// message\n| fieldsAdd message = arrayRemoveNulls(arrayConcat(\n                          array(davis.anomaly_detector.message), \n                          dt.analyzer.warning_messages, \n                          dt.analyzer.error_messages,\n                          array(dt.task.failure_reason)))\n| expand message\n\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| filter if(stringLength($Custom_alert_message) == 0 or contains ( message, $Custom_alert_message, caseSensitive:false), true,else: false )\n| summarize occurrences = count(), by:{status, message, dt.settings.object_id, config_id}\n| fields config_id, status, occurrences, message, dt.settings.object_id\n| fieldsAdd config_id = concat(\"[\", config_id, \"](\", \"/ui/intent/dynatrace.davis.anomalydetection/open_anomaly_detector_schema/#%7B%22dt.settings.object_id%22%3A%22\", dt.settings.object_id, \"%22%2C%22dt.settings.schema_id%22%3A%22builtin%3Adavis.anomaly-detectors%22%7D)\")\n| fieldsAdd dt.settings.schema_id = \"builtin:davis.anomaly-detectors\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 10,
            "maxResultRecords": 10000
          },
          "title": "Summarized messages by config_id",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"config_id\"]",
                "[\"status\"]",
                "[\"occurrences\"]",
                "[\"message\"]",
                "[\"dt.settings.object_id\"]",
                "[\"dt.settings.schema_id\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "config_id"
                  ],
                  "id": 249280.5,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"message\"]": 1924
              },
              "hiddenColumns": [
                [
                  "client.internal_service_context"
                ],
                [
                  "dt.settings.object_id"
                ],
                [
                  "dt.settings.schema_id"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"occurrences\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "22": {
          "content": "#### Breakdown by error messages\nThe section below displays the number and types of error messages generated by each anomaly detector.",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.events, from:-24h\n| filter dt.settings.schema_id == \"builtin:davis.anomaly-detectors\"\n| summarize number_of_alerts = count(), by:{dt.settings.object_id}\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| fieldsAdd config_id = concat(\"[\", config_id, \"](\", \"/ui/intent/dynatrace.davis.anomalydetection/open_anomaly_detector_schema/#%7B%22dt.settings.object_id%22%3A%22\", dt.settings.object_id, \"%22%2C%22dt.settings.schema_id%22%3A%22builtin%3Adavis.anomaly-detectors%22%7D)\")\n| fieldsAdd dt.settings.schema_id = \"builtin:davis.anomaly-detectors\"\n| sort number_of_alerts desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Summarized alerts by config_id over the last 24h",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"dt.settings.object_id\"]",
                "[\"config_id\"]",
                "[\"number_of_alerts\"]",
                "[\"dt.settings.schema_id\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "config_id"
                  ],
                  "id": 249280.5,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"config_id\"]": 307
              },
              "hiddenColumns": [
                [
                  "client.internal_service_context"
                ],
                [
                  "dt.settings.object_id"
                ],
                [
                  "dt.settings.schema_id"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"count()\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745323922800,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "number_of_alerts",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "fetch dt.davis.events, from:-24h\n| filter dt.settings.schema_id == \"builtin:davis.anomaly-detectors\"\n| summarize count(), by:{dt.settings.object_id}\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| fieldsAdd dt.settings.schema_id = \"builtin:davis.anomaly-detectors\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Summarized alerts by config_id over the last 24h",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue",
                  "comparator": "= *value*",
                  "field": "count()",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "count()"
              },
              "displayedFields": [
                "config_id"
              ],
              "legend": {
                "position": "bottom"
              },
              "shape": "square",
              "truncationMode": "middle"
            },
            "unitsOverrides": [
              {
                "added": 1745323937232,
                "baseUnit": "none",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "26": {
          "content": "#### Breakdown by alerts triggered\nThe section below displays the number of alerts (Davis Events) triggered by each anomaly detector.",
          "type": "markdown"
        },
        "27": {
          "content": "### **Health alert health status**\n\nThis overview provides you with information about the current health status of your ready made alerts.\n\n\n\nℹ️ You can filter by Health_alert_group: Cloud alerts or Frontend alerts\n\n\n",
          "type": "markdown"
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Overall of all last execution result for each selected alert configuration.",
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n| filter if(stringLength($Health_alert_title) == 0 or contains ( dt.task.name, $Health_alert_title, caseSensitive:false), true,else: false )\n\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status)\n| sort timestamp desc\n| summarize last_timestamp = max(timestamp),  last=takefirst(status), by:{dt.task.name, dt.task.id, dt.task.group}\n\n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 10000,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Last execution of alert configs",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "field": "last",
                  "type": "string",
                  "value": "SUCCESS"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                  },
                  "field": "last",
                  "type": "string",
                  "value": "WARNING"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "last",
                  "type": "string",
                  "value": "FAILED"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "last"
              },
              "legend": {
                "hidden": true
              },
              "shape": "square"
            }
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Count the last success execution result for each selected alert configuration.",
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n| filter if(stringLength($Health_alert_title) == 0 or contains ( dt.task.name, $Health_alert_title, caseSensitive:false), true,else: false )\n\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  failed = coalesce(dt.analyzer.error_messages, array(dt.task.failure_reason), array())\n| sort timestamp desc\n| summarize last_timestamp = max(timestamp),  last=takefirst(status), by:{dt.task.name, dt.task.id, dt.task.group}\n\n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group\n| summarize count(), by:{last}\n| filter last == \"SUCCESS\"\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Last execution - Success",
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
                    "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                  },
                  "field": "count()",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count()"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count()"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "SUCCESS",
              "prefixIcon": "SuccessIcon"
            }
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Count the last warning execution result for each selected alert configuration.",
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n| filter if(stringLength($Health_alert_title) == 0 or contains ( dt.task.name, $Health_alert_title, caseSensitive:false), true,else: false )\n\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  failed = coalesce(dt.analyzer.error_messages, array(dt.task.failure_reason), array())\n| sort timestamp desc\n| summarize last_timestamp = max(timestamp),  last=takefirst(status), by:{dt.task.name, dt.task.id, dt.task.group}\n\n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group\n| summarize count(), by:{last}\n| filter last == \"WARNING\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Last execution - Warning",
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
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count()"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count()",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count()"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "WARNING",
              "prefixIcon": "WarningIcon"
            }
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Count the last failed execution result for each selected alert configuration.",
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n| filter if(stringLength($Health_alert_title) == 0 or contains ( dt.task.name, $Health_alert_title, caseSensitive:false), true,else: false )\n\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  failed = coalesce(dt.analyzer.error_messages, array(dt.task.failure_reason), array())\n| sort timestamp desc\n| summarize last_timestamp = max(timestamp),  last=takefirst(status), by:{dt.task.name, dt.task.id, dt.task.group}\n\n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group\n| summarize count(), by:{last}\n| filter last == \"FAILED\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Last execution - Failed ",
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
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count()"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count()"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count()",
                  "type": "long",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": " FAILED ",
              "prefixIcon": "CriticalIcon"
            }
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows all warning or failure events for each selected alert configuration.",
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n| fieldsAdd failure_reasons = array(dt.task.failure_reason)\n\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n| filter if(stringLength($Health_alert_title) == 0 or contains ( dt.task.name, $Health_alert_title, caseSensitive:false), true,else: false )\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  failed = coalesce(dt.analyzer.error_messages, failure_reasons, array()),\n  warnings = coalesce(dt.analyzer.warning_messages, array())       \n| filterOut status == \"SUCCESS\"\n| makeTimeseries count(), by:{dt.task.group, dt.task.name, status, failed, warnings}, interval:1m\n\n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 10,
            "maxResultRecords": 10000
          },
          "title": "Warning or Failure Events",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "`count()`",
                  "failed",
                  "warnings",
                  "count()"
                ]
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                    }
                  },
                  "seriesId": [
                    "FAILED"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                    }
                  },
                  "seriesId": [
                    "SUCCESS"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                    }
                  },
                  "seriesId": [
                    "WARNING"
                  ]
                }
              ],
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "apdex",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "FAILED"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "SUCCESS"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-fair-default, #a9780f)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "WARNING"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "status"
              ]
            }
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n\n| filter if(stringLength($Health_alert_title) == 0 or contains(dt.task.name, $Health_alert_title, caseSensitive: false), true, else: false)\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  failed = coalesce(dt.analyzer.error_messages, array(dt.task.failure_reason), array())\n\n| filter arraySize(failed) \u003e 0\n| summarize Count = count(), by:{dt.task.group, dt.task.name, failed}   \n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group\n| fieldsRename Failed_Message = failed\n| sort Count desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 10,
            "maxResultRecords": 10000
          },
          "title": "FAILED Message",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"Alert_Title\"]": 400.39,
                "[\"Failed_Message\"]": 887,
                "[\"Group\"]": 110.78,
                "[\"Title\"]": 306.31,
                "[\"warnings\"]": 375.89
              },
              "hideColumnsForLargeResults": true,
              "sortBy": [
                {
                  "columnId": "[\"dt.task.name\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n// workaround for record analyzer\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n| filter in(dt.task.group, $Health_alert_group)\n\n| filter if(stringLength($Health_alert_title) == 0 or contains(dt.task.name, $Health_alert_title, caseSensitive: false), true, else: false)\n// normalize fields values\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd dt.analyzer.result_status = replaceString(dt.analyzer.result_status, \"SUCCESSFUL\", \"SUCCESS\")\n\n// merge task and analyzer status into common fields\n| fields dt.task.id, dt.task.group, dt.task.name, timestamp,\n  status = coalesce(dt.analyzer.result_status, dt.task.result_status),\n  warnings = coalesce(dt.analyzer.warning_messages, array())\n\n| filter arraySize(warnings) \u003e 0\n| summarize Count = count(), by:{dt.task.group, dt.task.name, warnings}   \n| fieldsRename Title = dt.task.name\n| fieldsRename Group = dt.task.group\n| fieldsRename Warning_Message = warnings\n| sort Count desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "WARNING Message",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"Alert_Title\"]": 391.99,
                "[\"Group\"]": 139.78,
                "[\"Title\"]": 310,
                "[\"warnings\"]": 908.88
              },
              "hideColumnsForLargeResults": true,
              "sortBy": [
                {
                  "columnId": "[\"dt.task.name\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "35": {
          "content": "#### Breakdown by failed or warning messages\nThe section below displays the number and types of failed or warning messages generated by each selected alert configuration.",
          "type": "markdown"
        },
        "39": {
          "content": "# **Alert configuration health status**\n\nThis dashboard provides an overview of the health status of your alert configuration, split into two sections: Custom Alerts and Ready-Made Alerts (Cloud Alerts and Frontend Alerts).",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now() - 24h\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n| filter status != \"SUCCESS\"\n| append [fetch dt.system.query_executions    \n | filter client.internal_service_context == \"dt.davis.anomaly-detector\"     \n | filter status == \"SUCCEEDED\"     \n | parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n | filter isNull(clientContext) OR clientContext[dt.task.group] == \"builtin:davis.anomaly-detectors\"\n | fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n | filter isNotNull(dt.settings.object_id)\n | summarize { successCount = countDistinct(query_id), by:{dt.settings.object_id, timestamp} } ] \n| summarize { error = countIf(status==\"ERROR\"), warn = countIf(status==\"WARNING\"), success = countIf(isNotNull(successCount))} , by:{dt.settings.object_id, detector_link, dt.settings.schema_id}\n| fieldsAdd percent = toDouble(success) / (error + warn + success) * 100\n| fieldsAdd type(percent), asDouble(percent), client.internal_service_context=\"dt.davis.anomaly-detector\"\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n\n//| config_id\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| summarize warning = countIf(percent \u003e= 95) - countIf(percent \u003e= 99) ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Last 24h",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "warning",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "success",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "percent",
                  "value": 90
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "percent",
                  "value": 99
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "label": "Warning",
              "prefixIcon": "WarningIcon",
              "recordField": "warning",
              "trend": {
                "isVisible": false,
                "trendType": "custom"
              }
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
          "query": "fetch dt.system.events, from:now() - 24h\n| filter in(event.kind, \"ANOMALY_DETECTOR_STATUS_EVENT\", \"ANALYZER_EXECUTION_EVENT\")\n| filter client.internal_service_context == \"dt.davis.anomaly-detector\" or dt.task.group == \"builtin:davis.anomaly-detectors\"\n// workaround for record analyzer support\n| filterOut dt.task.group == \"builtin:davis.anomaly-detectors\" AND ( dt.analyzer.name != \"dt.statistics.anomaly_detection.RecordAnomalyDetectionAnalyzer\" OR startsWith(dt.task.failure_reason, \"The task was disabled by the service operator\"))\n\n| fieldsAdd dt.settings.object_id = coalesce(dt.task.id, dt.settings.object_id)\n| fieldsAdd status = coalesce(davis.anomaly_detector.status, dt.analyzer.result_status, dt.task.result_status)\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL_WITH_WARNINGS\", \"WARNING\")\n| fieldsAdd status = replaceString(status, \"FAILED\", \"ERROR\")\n| fieldsAdd status = replaceString(status, \"SUCCESSFUL\", \"SUCCESS\")\n\n| filter status != \"SUCCESS\"\n| append [fetch dt.system.query_executions    \n | filter client.internal_service_context == \"dt.davis.anomaly-detector\"     \n | filter status == \"SUCCEEDED\"     \n | parse `client.client_context`, \"\"\"JSON:clientContext\"\"\", preserveFieldsOnFailure:true, parsingPrerequisite:isNotNull(client.client_context)\n | filter isNull(clientContext) OR clientContext[dt.task.group] == \"builtin:davis.anomaly-detectors\"\n | fieldsAdd dt.settings.object_id = coalesce(clientContext[dt.task.id], client.source)\n | filter isNotNull(dt.settings.object_id)\n | summarize { successCount = countDistinct(query_id), by:{dt.settings.object_id, timestamp} } ] \n| summarize { error = countIf(status==\"ERROR\"), warn = countIf(status==\"WARNING\"), success = countIf(isNotNull(successCount))} , by:{ dt.settings.object_id, detector_link, dt.settings.schema_id}\n| fieldsAdd percent = toDouble(success) / (error + warn + success) * 100\n| fieldsAdd type(percent), asDouble(percent), client.internal_service_context=\"dt.davis.anomaly-detector\"\n| parse decodeBase64ToString(dt.settings.object_id), \"LD UUIDSTRING:config_id\"\n\n//| config_id\n| filter if(stringLength($Custom_alert_config_id) == 0 or config_id == $Custom_alert_config_id, true,else: false )\n| summarize Error = countIf(percent \u003c= 95) ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Last 24h",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "Error",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "success",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "percent",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "percent",
                  "value": 90
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "percent",
                  "value": 99
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "label": "Error",
              "prefixIcon": "CriticalFailedIcon",
              "recordField": "Error",
              "trend": {
                "isVisible": false,
                "trendType": "custom"
              }
            }
          }
        },
        "7": {
          "content": "### **Custom alert health status**\n\nThis overview provides you with information about the current health status of your Custom Alerts. The health status contains information about the success rate of anomaly detector executions that ran in the background over the last 24 hours. This means that, if an error or warning occurs, the anomaly detector will send a warning or error event. These events are then compared to the success events from the last 24 hours. [Learn more](https://docs.dynatrace.com/docs/discover-dynatrace/platform/davis-ai/anomaly-detection/concepts/anomaly-detection-status-types)\n\n* Health status Error: The success rate for the last 24 hours is under 95%.\n* Health status Warning: The success rate for the last 24 hours is between 95% and 99%.\n\nℹ️ With the Config_id filter, you can filter by a selected config_id. For example, in the Honeycomb visualization, you can click on an anomaly detector of your choice, copy the config_id string and add it to the filter. Config name \u003e config_id \u003e Copy config string\n\n",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "editable": true,
          "key": "Custom_alert_config_id",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "key": "Custom_alert_message",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch dt.system.events, from: now() - 5m\n| filter event.kind == \"ANALYZER_EXECUTION_EVENT\"\n| fields dt.task.group\n| dedup dt.task.group\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:davis.anomaly-detectors\", \"Custom alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.frontend-alert\", \"Frontend alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.service-alert\", \"Service alert\")\n| fieldsAdd dt.task.group = replaceString(dt.task.group, \"builtin:health-experience.cloud-alert\", \"Cloud alert\")\n\n| append [\n  data record(dt.task.group = \"Custom alert\")\n]\n| dedup dt.task.group",
          "key": "Health_alert_group",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "key": "Health_alert_title",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.davis.anomalydetection.custom-alerts-health-overview"
  # private = false
}
