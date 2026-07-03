resource "dynatrace_document" "Business_Events" {
  name    = "Business Events"
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
          "id": "1f4b4ffd-3302-42d2-90ac-5e4fbe1fb166",
          "previousFilterSegments": [],
          "previousQueryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "bizevents",
                "id": "A",
                "isEnabled": true
              }
            ],
            "version": "16.2.2"
          },
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "bizevents",
                "id": "A",
                "isEnabled": true
              }
            ],
            "version": "16.2.2"
          },
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
              "value": "fetch bizevents"
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
              "dateTime": "2025-09-23T08:54:31.579Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch bizevents"
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
                      "end": "2025-09-23T08:54:31.292000000Z",
                      "start": "2025-09-23T06:54:31.292000000Z"
                    },
                    "canonicalQuery": "fetch bizevents",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 21,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch bizevents",
                    "queryId": "86951221-3f82-4849-8e5f-52f0aa46f564",
                    "sampled": false,
                    "scannedBytes": 6181,
                    "scannedDataPoints": 0,
                    "scannedRecords": 13,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "step": "start_import",
                    "timestamp": "2025-09-23T10:40:13.448000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "step": "start_import",
                    "timestamp": "2025-09-23T10:40:10.132000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duration": "195",
                    "errors": "2020",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "lines imported": "20000",
                    "step": "import_finished",
                    "timestamp": "2025-09-23T10:39:39.977000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duration": "195",
                    "errors": "2020",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "lines imported": "20002",
                    "step": "import_finished",
                    "timestamp": "2025-09-23T10:39:43.653000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duration": "195",
                    "errors": "200",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "lines imported": "20000",
                    "step": "import_finished",
                    "timestamp": "2025-09-23T10:39:30.379000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duration": "195",
                    "errors": "200",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "lines imported": "20000",
                    "step": "import_finished",
                    "timestamp": "2025-09-23T10:39:36.578000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duration": "195s",
                    "errors": "200",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "lines imported": "20000",
                    "step": "import_finished",
                    "timestamp": "2025-09-23T10:38:07.391000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "step": "start_import",
                    "timestamp": "2025-09-23T10:37:52.602000000+02:00"
                  },
                  {
                    "datasource": "remedy",
                    "details": "{\"protocol\":\"rest\",\"url\":\"itsm.voestalpine.com\",\"endpoint\":\"/api/bla\"}",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "8d8c6e5d-829d-4629-86fb-23cda5496fa9",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "pdwh_importer",
                    "event.type": "com.voestalpine.business.pdwh",
                    "timestamp": "2025-09-23T10:35:23.962000000+02:00"
                  },
                  {
                    "action": "import",
                    "application": "pdwh",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "de69d572-0ea1-4cfb-9b29-db25723cb0b1",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "unknown",
                    "event.type": "unknown",
                    "id": "1",
                    "source": "idm",
                    "started": "23.09.2025 10:16:00",
                    "timestamp": "2025-09-23T10:23:25.770000000+02:00"
                  },
                  {
                    "action": "import finished",
                    "application": "pdwh",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duplicates": "220",
                    "errors": "3",
                    "event.id": "490ef15c-d202-4f5e-9a5e-67eadc250491",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "unknown",
                    "event.type": "unknown",
                    "finished": "23.09.2025 10:21:00",
                    "id": "1",
                    "line imported": "10000",
                    "source": "idm",
                    "timestamp": "2025-09-23T10:23:50.844000000+02:00"
                  },
                  {
                    "action": "import finished",
                    "application": "pdwh",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "duplicates": "2000",
                    "errors": "121",
                    "event.id": "810650e4-ce02-48bd-9de0-9a55199752a2",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "unknown",
                    "event.type": "unknown",
                    "finished": "23.09.2025 10:21:00",
                    "id": "1",
                    "line imported": "22312",
                    "source": "remedy",
                    "timestamp": "2025-09-23T10:22:35.117000000+02:00"
                  },
                  {
                    "action": "import",
                    "application": "pdwh",
                    "dt.openpipeline.pipelines": [
                      "bizevents:default"
                    ],
                    "dt.openpipeline.source": "/api/v2/bizevents/ingest",
                    "event.id": "ceefcfd3-8caa-4ad4-bd5c-7e59d6f315f2",
                    "event.kind": "BIZ_EVENT",
                    "event.provider": "unknown",
                    "event.type": "unknown",
                    "id": "1",
                    "source": "remedy",
                    "started": "23.09.2025 10:15:00",
                    "timestamp": "2025-09-23T10:20:48.539000000+02:00"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      1
                    ],
                    "mappings": {
                      "datasource": {
                        "type": "string"
                      },
                      "details": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "step": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      6
                    ],
                    "mappings": {
                      "datasource": {
                        "type": "string"
                      },
                      "details": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "duration": {
                        "type": "string"
                      },
                      "errors": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "lines imported": {
                        "type": "string"
                      },
                      "step": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      7,
                      7
                    ],
                    "mappings": {
                      "datasource": {
                        "type": "string"
                      },
                      "details": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "step": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      8,
                      8
                    ],
                    "mappings": {
                      "datasource": {
                        "type": "string"
                      },
                      "details": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      9,
                      9
                    ],
                    "mappings": {
                      "action": {
                        "type": "string"
                      },
                      "application": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "string"
                      },
                      "source": {
                        "type": "string"
                      },
                      "started": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      10,
                      11
                    ],
                    "mappings": {
                      "action": {
                        "type": "string"
                      },
                      "application": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "duplicates": {
                        "type": "string"
                      },
                      "errors": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "finished": {
                        "type": "string"
                      },
                      "id": {
                        "type": "string"
                      },
                      "line imported": {
                        "type": "string"
                      },
                      "source": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      12
                    ],
                    "mappings": {
                      "action": {
                        "type": "string"
                      },
                      "application": {
                        "type": "string"
                      },
                      "dt.openpipeline.pipelines": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "event.id": {
                        "type": "string"
                      },
                      "event.kind": {
                        "type": "string"
                      },
                      "event.provider": {
                        "type": "string"
                      },
                      "event.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "string"
                      },
                      "source": {
                        "type": "string"
                      },
                      "started": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {}
            }
          },
          "title": "Explore Business Events",
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
