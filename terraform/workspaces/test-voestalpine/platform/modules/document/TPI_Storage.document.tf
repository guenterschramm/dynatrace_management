resource "dynatrace_document" "TPI_Storage" {
  name    = "TPI Storage"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-90d",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "7bb239b5-18aa-47a3-99d1-a1d082ff6721",
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
                "from": "now()-90d",
                "to": "now()"
              },
              "value": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_logs\""
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
              "dateTime": "2026-04-27T10:59:16.071Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-90d",
                  "to": "now()"
                },
                "value": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_logs\""
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
                      "end": "2026-04-27T22:00:00.000000000Z",
                      "start": "2026-01-27T10:00:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{grail.bucket.name}, sum(dt.sfm.grail.bucket.size)\n| filter grail.bucket.name == \"tpi_messaging_logs\"",
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
                    "executionTimeMilliseconds": 49,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_logs\"",
                    "queryId": "5b84c1fd-2b7c-40e7-92e2-7a57100e8893",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "aggregation": "sum",
                      "description": "This metric shows an estimate of the bucket size in bytes.",
                      "displayName": "Grail: Bucket Size",
                      "fieldName": "sum(dt.sfm.grail.bucket.size)",
                      "metric.key": "dt.sfm.grail.bucket.size",
                      "unit": "By"
                    }
                  ]
                },
                "records": [
                  {
                    "grail.bucket.name": "tpi_messaging_logs",
                    "interval": "43200000000000",
                    "sum(dt.sfm.grail.bucket.size)": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      51127979018,
                      296707123804,
                      546970508277,
                      799569373006,
                      1051308324872,
                      1303201311452,
                      1559812024858,
                      1809939886110,
                      2062400410389,
                      2323206987574,
                      2520970417714,
                      2734482870795,
                      2999907963126,
                      3266521004588,
                      3532924040588,
                      3817836938985,
                      4093767038472,
                      4375210752675,
                      4651453939680,
                      4927503719368,
                      5203593616449,
                      5477437675166,
                      5752154459205,
                      6029805090830,
                      6309227972626,
                      6584714771569,
                      6865009928799,
                      7142907452849,
                      7375110680028,
                      7411616854217,
                      7434480634799,
                      7470527094709,
                      7488246486867,
                      7519098317568,
                      7540431675659,
                      7564300583811,
                      null
                    ],
                    "timeframe": {
                      "end": "2026-04-28T00:00:00.000000000+02:00",
                      "start": "2026-01-27T11:00:00.000000000+01:00"
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
                      "grail.bucket.name": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "sum(dt.sfm.grail.bucket.size)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              180
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
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
              "autoSelectVisualization": false,
              "chartSettings": {}
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "17898026-b8cd-419c-a584-e0cbd0d8266a",
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
                "from": "now()-90d",
                "to": "now()"
              },
              "value": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_spans\""
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
              "dateTime": "2026-04-27T11:24:35.498Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-90d",
                  "to": "now()"
                },
                "value": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_spans\""
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
                      "end": "2026-04-27T22:00:00.000000000Z",
                      "start": "2026-01-27T10:00:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{grail.bucket.name}, sum(dt.sfm.grail.bucket.size)\n| filter grail.bucket.name == \"tpi_messaging_spans\"",
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
                    "executionTimeMilliseconds": 347,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries {sum(dt.sfm.grail.bucket.size), by:{grail.bucket.name}} | filter grail.bucket.name == \"tpi_messaging_spans\"",
                    "queryId": "932cefae-bb02-4e67-9c24-2ba4914e699b",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 160,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "aggregation": "sum",
                      "description": "This metric shows an estimate of the bucket size in bytes.",
                      "displayName": "Grail: Bucket Size",
                      "fieldName": "sum(dt.sfm.grail.bucket.size)",
                      "metric.key": "dt.sfm.grail.bucket.size",
                      "unit": "By"
                    }
                  ]
                },
                "records": [
                  {
                    "grail.bucket.name": "tpi_messaging_spans",
                    "interval": "43200000000000",
                    "sum(dt.sfm.grail.bucket.size)": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      131343300,
                      737846278,
                      50568911181,
                      295613580732,
                      557984549565,
                      815954197889,
                      1074024891482,
                      1332122598034,
                      1590174762090,
                      1848205955651,
                      2116453736380,
                      2367938823945,
                      2628794590226,
                      2891078928771,
                      3153383195186,
                      3415690780494,
                      3679924524834,
                      3937926940533,
                      4197319610541,
                      4455471297446,
                      4715894108851,
                      4976248213224,
                      5234597872030,
                      5494997615593,
                      null
                    ],
                    "timeframe": {
                      "end": "2026-04-28T00:00:00.000000000+02:00",
                      "start": "2026-01-27T11:00:00.000000000+01:00"
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
                      "grail.bucket.name": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "sum(dt.sfm.grail.bucket.size)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              180
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
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
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
