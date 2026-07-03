resource "dynatrace_document" "Untitled_notebook_3" {
  name    = "Untitled notebook"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-2h",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "c35c0751-8abd-461e-adee-2f2e55715704",
          "previousFilterSegments": [],
          "showInput": true,
          "showTitle": true,
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"extension.sql-server-metrics\"}, from: -30m, to: -1m"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2026-06-09T14:48:13.715Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"extension.sql-server-metrics\"}, from: -30m, to: -1m"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2026-06-09T14:48:00.000000000Z",
                      "start": "2026-06-09T14:18:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"metrics\" AND pipeline_id == \"extension.sql-server-metrics\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
                    "contributions": {
                      "buckets": [
                        {
                          "name": "default_metrics",
                          "scannedBytes": 0,
                          "table": "metrics"
                        },
                        {
                          "name": "dt_system_metrics",
                          "scannedBytes": 0,
                          "table": "metrics"
                        }
                      ]
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 25,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"extension.sql-server-metrics\"}, from: -30m, to: -1m",
                    "queryId": "4386ab15-a86c-4d05-b6e5-c107468a32dc",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 30,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "aggregation": "sum",
                      "description": "Measured after routing. Allows to understand not only route usage, but also ingest source output usage and pipeline usage and all combinations of it.",
                      "displayName": "Openpipeline - Routing - Records",
                      "fieldName": "datapoints",
                      "metric.key": "dt.sfm.openpipeline.routing.records",
                      "unit": "count"
                    }
                  ]
                },
                "records": [
                  {
                    "configuration": "metrics",
                    "datapoints": [
                      176,
                      176,
                      176,
                      175,
                      175,
                      176,
                      177,
                      176,
                      176,
                      176,
                      176,
                      176,
                      176,
                      175,
                      175,
                      175,
                      177,
                      176,
                      176,
                      176,
                      176,
                      177,
                      176,
                      175,
                      175,
                      175,
                      176,
                      176,
                      176,
                      0
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "extension.sql-server-metrics",
                    "timeframe": {
                      "end": "2026-06-09T16:48:00.000000000+02:00",
                      "start": "2026-06-09T16:18:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "configuration": {
                        "type": "string"
                      },
                      "datapoints": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              29
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "pipeline_id": {
                        "type": "string"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {}
            }
          },
          "title": "Records over time of Metrics for SQL Server",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "1788a977-7e55-42c1-8b8f-aca98daf11fa",
          "previousFilterSegments": [],
          "showInput": true,
          "showTitle": false,
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "metrics \n| filter pipeline_id == \"extension.sql-server-metrics\"\n| fieldsAdd dt.security_context"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2026-06-09T14:45:01.895Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "metrics \n| filter pipeline_id == \"extension.sql-server-metrics\"\n| fieldsAdd dt.security_context"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2026-06-09T14:45:01.598000000Z",
                      "start": "2026-06-09T12:45:01.598000000Z"
                    },
                    "canonicalQuery": "metrics\n| filter pipeline_id == \"extension.sql-server-metrics\"\n| fieldsAdd dt.security_context",
                    "contributions": {
                      "buckets": [
                        {
                          "name": "default_metrics",
                          "scannedBytes": 0,
                          "table": "metrics"
                        },
                        {
                          "name": "dt_system_metrics",
                          "scannedBytes": 0,
                          "table": "metrics"
                        }
                      ]
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 24,
                    "locale": "de",
                    "notifications": [],
                    "query": "metrics \n| filter pipeline_id == \"extension.sql-server-metrics\"\n| fieldsAdd dt.security_context",
                    "queryId": "0156a81d-f43c-4a04-8887-51cf06b4f457",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "configuration": "metrics",
                    "dt.openpipeline.source": "com.dynatrace.extension.sql-server",
                    "dt.security_context": null,
                    "metric.key": "dt.sfm.openpipeline.routing.records",
                    "pipeline_id": "extension.sql-server-metrics",
                    "route_name": "SQL Server"
                  },
                  {
                    "bucket_name": "default_metrics",
                    "configuration": "metrics",
                    "dt.openpipeline.source": "com.dynatrace.extension.sql-server",
                    "dt.security_context": null,
                    "metric.key": "dt.sfm.openpipeline.pipelines_out.records",
                    "pipeline_id": "extension.sql-server-metrics",
                    "route_name": "SQL Server"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "configuration": {
                        "type": "string"
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "undefined"
                      },
                      "metric.key": {
                        "type": "string"
                      },
                      "pipeline_id": {
                        "type": "string"
                      },
                      "route_name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      1
                    ],
                    "mappings": {
                      "bucket_name": {
                        "type": "string"
                      },
                      "configuration": {
                        "type": "string"
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "undefined"
                      },
                      "metric.key": {
                        "type": "string"
                      },
                      "pipeline_id": {
                        "type": "string"
                      },
                      "route_name": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "chartSettings": {},
              "table": {
                "columnWidths": {
                  "[\"dt.openpipeline.source\"]": 254.9,
                  "[\"metric.key\"]": 296.4
                },
                "hideColumnsForLargeResults": true
              }
            }
          },
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
