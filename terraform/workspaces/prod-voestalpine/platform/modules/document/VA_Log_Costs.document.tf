resource "dynatrace_document" "VA_Log_Costs" {
  name    = "VA Log Costs"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "10": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "11": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "12": {
          "h": 7,
          "w": 10,
          "x": 14,
          "y": 18
        },
        "14": {
          "h": 4,
          "w": 3,
          "x": 7,
          "y": 29
        },
        "15": {
          "h": 4,
          "w": 3,
          "x": 4,
          "y": 29
        },
        "16": {
          "h": 4,
          "w": 3,
          "x": 17,
          "y": 29
        },
        "18": {
          "h": 4,
          "w": 3,
          "x": 14,
          "y": 29
        },
        "19": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 29
        },
        "23": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 29
        },
        "24": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 39
        },
        "25": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 39
        },
        "26": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 39
        },
        "27": {
          "h": 4,
          "w": 5,
          "x": 12,
          "y": 39
        },
        "30": {
          "h": 4,
          "w": 4,
          "x": 10,
          "y": 29
        },
        "31": {
          "h": 1,
          "w": 15,
          "x": 9,
          "y": 3
        },
        "32": {
          "h": 1,
          "w": 10,
          "x": 10,
          "y": 28
        },
        "33": {
          "h": 5,
          "w": 4,
          "x": 9,
          "y": 6
        },
        "37": {
          "h": 1,
          "w": 14,
          "x": 0,
          "y": 24
        },
        "41": {
          "h": 6,
          "w": 14,
          "x": 0,
          "y": 18
        },
        "44": {
          "h": 1,
          "w": 4,
          "x": 20,
          "y": 28
        },
        "46": {
          "h": 5,
          "w": 5,
          "x": 0,
          "y": 4
        },
        "47": {
          "h": 2,
          "w": 4,
          "x": 10,
          "y": 33
        },
        "48": {
          "h": 2,
          "w": 3,
          "x": 14,
          "y": 33
        },
        "49": {
          "h": 2,
          "w": 3,
          "x": 17,
          "y": 33
        },
        "50": {
          "h": 2,
          "w": 3,
          "x": 20,
          "y": 33
        },
        "51": {
          "h": 2,
          "w": 3,
          "x": 4,
          "y": 33
        },
        "52": {
          "h": 2,
          "w": 3,
          "x": 7,
          "y": 33
        },
        "53": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 33
        },
        "54": {
          "h": 1,
          "w": 10,
          "x": 0,
          "y": 28
        },
        "55": {
          "h": 1,
          "w": 9,
          "x": 0,
          "y": 3
        },
        "56": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "59": {
          "h": 5,
          "w": 4,
          "x": 5,
          "y": 4
        },
        "60": {
          "h": 2,
          "w": 9,
          "x": 0,
          "y": 9
        },
        "61": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "63": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "64": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "65": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "7": {
          "h": 7,
          "w": 11,
          "x": 13,
          "y": 4
        },
        "8": {
          "h": 2,
          "w": 4,
          "x": 9,
          "y": 4
        },
        "9": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 36
        }
      },
      "settings": {},
      "tiles": {
        "10": {
          "content": "# 📈 Log ingest health\nReview the below metrics to assess the health of log ingest. Refer to [Log ingest troubleshooting](https://docs.dynatrace.com/docs/observe-and-explore/logs/lma-troubleshooting) documentation page for diagnostic guide.",
          "type": "markdown"
        },
        "11": {
          "content": "---\n---\n---\n---\n\n#### Footnotes\n\n* Refer to log ingest strategies [documentation](https://docs.dynatrace.com/docs/observe-and-explore/logs/lma-log-ingestion) for log onboarding recommendations\n * Navigate to `Log query usage and costs` dashboard to review licence consumption for Log Analytics",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-06-04T09:16:27.539Z",
                      "startTime": "2024-05-28T09:16:27.539Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries count = sum(dt.log.status_per_entity_count), by: {splitField=dt.source_entity}, default: 0, bins: 50 \n| sort count desc\n| limit 10\n",
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
          "query": "timeseries count = sum(dt.log.status_per_entity_count, default: 0), by: {dt.source_entity} \n| filter isNotNull(dt.source_entity)\n| fields dt.source_entity, records = arraySum(count), joinMe = \"*\"\n| sort records desc\n| limit 20\n| join [\ntimeseries total = sum(dt.log.status_per_entity_count, default: 0) \n| fields total = arraySum(total), joinMe=\"*\"\n], on: joinMe\n| fields dt.source_entity=toString(dt.source_entity), percentage = (records / right.total) * 100// , records, right.total,",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dt.source_entity"
                ],
                "categoryAxisLabel": "dt.source_entity",
                "valueAxis": [
                  "percentage"
                ],
                "valueAxisLabel": "percentage"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720618807643,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "percentage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries interval: 1d, errors_count = count(dt.sfm.storage.ingest.errors,default:0), filter: { (dt.system.bucket == \"dt_system_metrics\") AND (table == \"logs\") } ,nonempty:true",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Ingest persistance errors count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "errors_count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "errors",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries interval: 1h, non_persisted_records = sum(dt.sfm.storage.ingest.non_persisted_records),by: { data.type }, filter: { dt.system.bucket == \"dt_system_metrics\" },nonempty:true, default:0\n| filter data.type == \"Log\"\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Non persisted records before ingest pipeline",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "thresholds": [
              {
                "field": "non_persisted_records",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries interval: 1h, request_count = sum(dt.sfm.active_gate.rest.request_count), by: { response_code, operation }, filter: { (dt.system.bucket == \"dt_system_metrics\") AND ((operation == \"POST /otlp/v1/logs\") OR (operation == \"POST /logs/ingest\") OR (operation == \"POST /logs/ingest/aws_firehose\")) },default:0 ,nonempty:true\n| filterOut contains (response_code, \"20\")\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log API - errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "request_count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "request_count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries drop_count = sum(dsfm.active_gate.event_ingest.drop_count), by: { drop_reason }, nonempty:true, default:0\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Logs API - rejected records",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "drop_count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "drop_count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries records_rejected = sum(dt.sfm.extension.engine.logs_ingest.records_rejected), filter: { dt.system.bucket == \"dt_system_metrics\" }, nonempty:true, default:0\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Extension Rejected records",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "records_rejected"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": "#b3007d"
                  },
                  "seriesId": [
                    "records_rejected"
                  ]
                }
              ]
            },
            "thresholds": []
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries interval: 1h, events_rejected_count = sum(dt.sfm.server.log_and_events_monitoring.events_rejected_count),nonempty:true, default:0\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rejected records count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "events_rejected_count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "events_rejected_count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": " timeseries interval: 1h, status = sum(dt.sfm.server.dpp.execution.status), by: { dt.dpp.execution.status, dt.dpp.pipeline }, filter: { (dt.system.bucket == \"dt_system_metrics\") AND ((dt.dpp.pipeline == \"log_bucket\") OR (dt.dpp.pipeline == \"log\")) }\n         | sort arraySum(status) desc ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Classic Log Processing Pipeline status",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "status"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "status",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
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
          "query": "timeseries errors = sum(dt.sfm.server.dpp.rule.execution.errors), by: { dt.dpp.execution.rule.error.type }, filter: { dt.system.bucket == \"dt_system_metrics\" }\n| sort arraySum(errors) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Classic Log Processing Pipeline Execution Errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "errors"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "errors",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries executions = sum(dt.sfm.server.dpp.rule.executions), filter: { dt.system.bucket == \"dt_system_metrics\" }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Classic Log Processing Pipeline executions",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "executions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "executions",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries filteredOut_records = sum(dt.sfm.storage.ingest.dropped_records), filter: { dt.system.bucket == \"dt_system_metrics\" }, by:{data.type}\n| filter data.type == \"Log\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Records filtered out in Classic Log Processing Pipeline",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "filteredOut_records"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "dropped_records",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries event_incoming_count = count(dt.sfm.active_gate.event_ingest.event_incoming_count), nonempty:true, default:0, by: { dt.ingest.format }, filter: { event.type == \"log\" AND dt.active_gate.working_mode == \"embedded\" }\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Logs API - records count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "event_incoming_count"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              }
            },
            "thresholds": [
              {
                "field": "event_incoming_count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "31": {
          "content": "### Log storage statistics\n",
          "type": "markdown"
        },
        "32": {
          "content": "### Log ingest API - statistics and health\n\n",
          "type": "markdown"
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| filter dt.system.table == \"logs\"\n| summarize estimated_uncompressed_bytes = sum(estimated_uncompressed_bytes), by:{retention_days} \n| fieldsRename bytes = estimated_uncompressed_bytes, days = retention_days\n| sort days asc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log retention time",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"retention\"]": 107.8198471069336
              }
            },
            "thresholds": [
              {
                "field": "events_rejected_count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1719473380406,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "37": {
          "content": "💡 Hint: Click on the entity `dt.source.entity` and select `Open with` to inspect incoming logs per producer. Navigate to the Logs tab in the selected App.",
          "type": "markdown"
        },
        "41": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-06-04T09:16:27.539Z",
                      "startTime": "2024-05-28T09:16:27.539Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries count = sum(dt.log.status_per_entity_count), by: {splitField=dt.source_entity}, default: 0, bins: 50 \n| sort count desc\n| limit 10\n",
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
          "query": "timeseries count = sum(dt.log.status_per_entity_count), by: {dt.source_entity}, default: 0 , bins: 50 \n| filter isNotNull(dt.source_entity)\n| sort arraySum(count) desc\n| limit 20\n\n| expand dt.source_entity\n| limit 20\n\n| join [ fetch dt.entity.process_group_instance ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"pgi.\"\n| join [ fetch dt.entity.host ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"host.\"\n| join [ fetch dt.entity.kubernetes_cluster ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"k8sc.\"\n| join [ fetch dt.entity.ec2_instance ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"ec2.\"\n| join [ fetch dt.entity.cloud_application ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"capp.\"\n\n//| join [ fetch dt.entity.application ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"app.\"\n//| join [ fetch dt.entity.aws_lambda_function ], on: { left[dt.source_entity] == right[id] }, kind:leftOuter, prefix: \"lambda.\"\n\n| fields \ndt.source_entity,\nrecords = arraySum(count), \nname=coalesce(\npgi.entity.name, host.entity.name, k8sc.entity.name, ec2.entity.name, capp.entity.name, dt.source_entity\n//app.entity.name, lambda.entity.name, ald.entity.name, gce.entity.name,\n) \n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"dt.source_entity\"]": 337,
                "[\"name\"]": 684.65625,
                "[\"records\"]": 101.859375
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720615178443,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "records",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "44": {
          "content": "### Extensions\n\n",
          "type": "markdown"
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { received_bytes = sum(dt.sfm.storage.ingest.received_bytes), \nreceived_records = sum(dt.sfm.storage.ingest.received_records) }, \n// QnVpbHQtaW4gbG9nIGluZ2VzdCBkYXNoYm9hcmQ=\n// 1.306\nfilter: { (dt.system.bucket == \"dt_system_metrics\") AND (data.type == \"Log\") }\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log ingest volume (Server)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "received_bytes",
                  "received_records"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "geometry": "line"
                  },
                  "seriesId": [
                    "received_records"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                    }
                  },
                  "seriesId": [
                    "received_bytes"
                  ]
                }
              ]
            },
            "thresholds": [
              {
                "field": "received_bytes",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "47": {
          "content": "Log ingestion API on Dynatrace tenant - records count per format",
          "type": "markdown"
        },
        "48": {
          "content": "Log ingestion API - rejected records",
          "type": "markdown"
        },
        "49": {
          "content": "Log ingestion API - errors",
          "type": "markdown"
        },
        "50": {
          "content": "Log records rejected on Extension engine",
          "type": "markdown"
        },
        "51": {
          "content": "Received, but not able to be processed in an ingest pipeline",
          "type": "markdown"
        },
        "52": {
          "content": " Persistence errors during ingest",
          "type": "markdown"
        },
        "53": {
          "content": " Rejected due to ingest limitation",
          "type": "markdown"
        },
        "54": {
          "content": "### Server\n\n",
          "type": "markdown"
        },
        "55": {
          "content": "### Log ingest volume",
          "type": "markdown"
        },
        "56": {
          "content": "### Top 20 log producers by entity",
          "type": "markdown"
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "\ntimeseries count2 = sum(dt.sfm.storage.ingest.received_bytes), by: { data.source }, filter: { data.type == \"Log\" }\n| fieldsAdd data.source=if(data.source == \"COLLECTOR\", \"API\", else: data.source)\n",
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
          "title": "OneAgent vs Log API",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count2"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "position": "bottom"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-06-default, #a9780f)"
                    }
                  },
                  "seriesId": [
                    "COLLECTOR"
                  ]
                }
              ],
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "count",
                "id": "0",
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#7dc540",
                    "comparator": "≥",
                    "id": "0",
                    "label": ""
                  },
                  {
                    "color": "#f5d30f",
                    "comparator": "≥",
                    "id": "1",
                    "label": ""
                  },
                  {
                    "color": "#dc172a",
                    "comparator": "≥",
                    "id": "2",
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "60": {
          "content": "Stats for extensions installed on OneAgent are included in AGENT, otherwise in API",
          "type": "markdown"
        },
        "61": {
          "content": "# Log ingest overview\n\nThis dashboard provides a high-level overview of logs ingested into your Dynatrace environment and processed in the log processing pipeline.\n\nFind tips for optimizations and diagnostics. Clone this dashboard to customize it to your needs.\n\n---\n---\n---\n---\n",
          "type": "markdown"
        },
        "63": {
          "content": "___\n___\n___\n___\n",
          "type": "markdown"
        },
        "64": {
          "content": "___\n___\n___\n___",
          "type": "markdown"
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| fieldsAdd estimated_costs = estimated_uncompressed_bytes * (toDouble($Retain) / 100000000000000) \n| filter matchesValue(name,\"*logs\")\n| sort estimated_uncompressed_bytes desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log volume per bucket",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "name_retention",
                "categoryAxisLabel": "name_retention",
                "valueAxis": "estimated_uncompressed_bytes",
                "valueAxisLabel": "estimated_uncompressed_bytes"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "table": {
              "hiddenColumns": [
                [
                  "included_query_days"
                ],
                [
                  "metric_interval"
                ],
                [
                  "has_access"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"estimated_uncompressed_bytes\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720622193906,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": "gigabyte",
                "identifier": "estimated_uncompressed_bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| fieldsAdd name_retention = concat(name, \" (\" , retention_days, \" days)\")\n| filter dt.system.table == \"logs\"\n| sort estimated_uncompressed_bytes desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log volume per bucket",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "name_retention",
                "categoryAxisLabel": "name_retention",
                "valueAxis": "estimated_uncompressed_bytes",
                "valueAxisLabel": "estimated_uncompressed_bytes"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720622193906,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "estimated_uncompressed_bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| filter matchesValue(name,\"*_logs\")\n| summarize sum(estimated_uncompressed_bytes)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Grail storage (Bytes)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "sum(estimated_uncompressed_bytes)",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720002220636,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(estimated_uncompressed_bytes)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "9": {
          "content": "# 📊 Log processing pipeline status\n\nLogs ingested to Dynatrace are [processed](https://docs.dynatrace.com/docs/observe-and-explore/logs/lma-log-processing) in the pipeline to extract/drop attributes, create [log metrics](https://docs.dynatrace.com/docs/observe-and-explore/logs/lma-analysis/lma-log-metrics), create [log events](https://docs.dynatrace.com/docs/observe-and-explore/logs/lma-analysis/lma-log-events), manage permissions, and assign buckets.\n\nBelow you can find the status of the Classic log processing pipeline. The new [OpenPipeline](https://www.dynatrace.com/news/blog/dynatrace-openpipeline-converging-observability-security-and-business-data-at-massive-scale-for-unmatched-analytics-in-context/) metric will be available soon.\n\nPlease note that OpenPipeline takes precedence over Classic Pipeline rules by default. If there is a “true” rule forwarding all logs via OpenPipeline, the visuals below won't provide any records.",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": "617.0",
          "editable": true,
          "key": "Retain",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "",
          "key": "retain_gb_cost",
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  private = true
}
