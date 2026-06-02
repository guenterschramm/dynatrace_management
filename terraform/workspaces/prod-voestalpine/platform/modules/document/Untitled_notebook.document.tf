resource "dynatrace_document" "Untitled_notebook" {
  name    = "Untitled notebook"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-365d",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 408,
          "id": "a97e3907-e83f-4e29-a702-be53897e7e39",
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
              "value": "fetch dt.entity.host\n| fieldsAdd dt.security_context\n| filter isMonitoringCandidate == false "
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
              "dateTime": "2026-03-26T08:55:04.059Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch dt.entity.host\n| fieldsAdd dt.security_context\n| filter isMonitoringCandidate == false "
              },
              "notifications": [
                {
                  "message": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                  "notificationType": "DEPRECATED_ENTITY_DATAOBJECT",
                  "severity": "info",
                  "syntaxPosition": {
                    "end": {
                      "column": 20,
                      "index": 19,
                      "line": 1
                    },
                    "start": {
                      "column": 7,
                      "index": 6,
                      "line": 1
                    }
                  }
                }
              ],
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
                      "end": "2026-03-26T08:55:03.865000000Z",
                      "start": "2026-03-26T06:55:03.865000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.host\n| fieldsAdd dt.security_context\n| filter isMonitoringCandidate == FALSE",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 51,
                    "locale": "de",
                    "notifications": [
                      {
                        "arguments": [],
                        "message": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                        "messageFormat": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                        "messageFormatSpecifierTypes": [],
                        "notificationType": "DEPRECATED_ENTITY_DATAOBJECT",
                        "severity": "INFO",
                        "syntaxPosition": {
                          "end": {
                            "column": 20,
                            "index": 19,
                            "line": 1
                          },
                          "start": {
                            "column": 7,
                            "index": 6,
                            "line": 1
                          }
                        }
                      }
                    ],
                    "query": "fetch dt.entity.host\n| fieldsAdd dt.security_context\n| filter isMonitoringCandidate == false ",
                    "queryId": "b12276e2-2c52-40c1-b478-c07632a89257",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 60,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsf4p.voestalpine.root.local",
                    "id": "HOST-78653E05D05E6DE6"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsb1p.voestalpine.root.local",
                    "id": "HOST-DCA8FBC6235A6CE5"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsb4p.voestalpine.root.local",
                    "id": "HOST-F6F1B7F770E87E4A"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsb2p.voestalpine.root.local",
                    "id": "HOST-B6160E5D2C2AC281"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217pvwa0469p01",
                    "id": "HOST-D2574E2AD91F2AA9"
                  },
                  {
                    "dt.security_context": [
                      "Bee4IT",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asbee4it01.voestalpine.root.local",
                    "id": "HOST-64FAE88DC89F082C"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsf1p.voestalpine.root.local",
                    "id": "HOST-8F4027A1ADC95369"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsb2p.voestalpine.root.local",
                    "id": "HOST-047CA01BFA02FE0F"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p12.voestalpine.root.local",
                    "id": "HOST-280962E09A43F01D"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p04.voestalpine.root.local",
                    "id": "HOST-72E43AAACC9059B9"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p08.voestalpine.root.local",
                    "id": "HOST-0C1384E1E6716F46"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217PSMP0010P02.voestalpine.root.local",
                    "id": "HOST-71B241CBCAEF6EE2"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p07.voestalpine.root.local",
                    "id": "HOST-D99903D58C348261"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsf2p.voestalpine.root.local",
                    "id": "HOST-DF1BC83C6F109665"
                  },
                  {
                    "dt.security_context": [
                      "Database Services",
                      "xECM Steel"
                    ],
                    "entity.name": "2217dbxecmn02.voestalpine.root.local",
                    "id": "HOST-E606C497EB1200CA"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsf1p.voestalpine.root.local",
                    "id": "HOST-3F364FD91594BE69"
                  },
                  {
                    "dt.security_context": [
                      "Database Services",
                      "xECM Steel"
                    ],
                    "entity.name": "2217dbxecmn01.voestalpine.root.local",
                    "id": "HOST-5B144D92C902184E"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsb4p.voestalpine.root.local",
                    "id": "HOST-CA848C19059D5B45"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217htmg0469p02",
                    "id": "HOST-2C4A33F1CACE2727"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsf4p.voestalpine.root.local",
                    "id": "HOST-7655ECDA99952C41"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmblz.voestalpine.root.local",
                    "id": "HOST-AAF31334B909F6C3"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmbravp.voestalpine.root.local",
                    "id": "HOST-1C0B31FCA725A33D"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmawgp.voestalpine.root.local",
                    "id": "HOST-3C172C4602EBA72A"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmds1p.voestalpine.root.local",
                    "id": "HOST-861F29D4AF5BF4F2"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217cpm0010p01.voestalpine.root.local",
                    "id": "HOST-3DDE976CD5D7D916"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217PSM0468P01",
                    "id": "HOST-ECA5AA097ACC20C5"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmds1p.voestalpine.root.local",
                    "id": "HOST-18293E2C2566BC1D"
                  },
                  {
                    "dt.security_context": [
                      "Database Services",
                      "xECM Steel",
                      "Bee4IT"
                    ],
                    "entity.name": "2217DBSQLCLN03.voestalpine.root.local",
                    "id": "HOST-EFD88A91BFA12D4E"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsf3p.voestalpine.root.local",
                    "id": "HOST-C78D0C795A45AFBC"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsf3p.voestalpine.root.local",
                    "id": "HOST-A30840CD76A19D68"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "Webhosting Service"
                    ],
                    "entity.name": "2217WWTC08.voestalpine.root.local",
                    "id": "HOST-C8BC3C28D5E0C391"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsb1p.voestalpine.root.local",
                    "id": "HOST-48D8D0E1FD5ADEE0"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p11.voestalpine.root.local",
                    "id": "HOST-3565708D47127D40"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsb3p.voestalpine.root.local",
                    "id": "HOST-E35D35EA4ACC0205"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p06.voestalpine.root.local",
                    "id": "HOST-91D52EF0321D54B9"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asmonitor01.voestalpine.root.local",
                    "id": "HOST-3B354B5980F04E11"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsf2p.voestalpine.root.local",
                    "id": "HOST-E90384BEDD72316A"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmblzp.voestalpine.root.local",
                    "id": "HOST-8DFA23544E33506F"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PCD_PW_Portal"
                    ],
                    "entity.name": "2217aspwdrst.voestalpine.root.local",
                    "id": "HOST-E37D48DB6FC826CC"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmawgp.voestalpine.root.local",
                    "id": "HOST-35DFC2486F7BA6E1"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsb5p.voestalpine.root.local",
                    "id": "HOST-05975D427629204E"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asixos01.voestalpine.root.local",
                    "id": "HOST-7C9AD5C259019D64"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217PSMP0010P01.voestalpine.root.local",
                    "id": "HOST-30A4824A919B88C2"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asmgnt02.voestalpine.root.local",
                    "id": "HOST-BE1FFB89AC1B2202"
                  },
                  {
                    "dt.security_context": [
                      "Database Services",
                      "Bee4IT"
                    ],
                    "entity.name": "2217DBSQLCLN01.voestalpine.root.local",
                    "id": "HOST-46C5336F4E641280"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217pvwa0469p02",
                    "id": "HOST-9DB0A2461301B6C2"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p05.voestalpine.root.local",
                    "id": "HOST-590FBA98DC044D15"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p03.voestalpine.root.local",
                    "id": "HOST-78D9080824662889"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmdp.voestalpine.root.local",
                    "id": "HOST-FA4013A0656EBAD0"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p02.voestalpine.root.local",
                    "id": "HOST-C9B7467795DA185C"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217htmg0469p01",
                    "id": "HOST-17236FB4AA53B7FE"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0010p01.voestalpine.root.local",
                    "id": "HOST-749DBF577FB57CD4"
                  },
                  {
                    "dt.security_context": [
                      "Database Services",
                      "Bee4IT"
                    ],
                    "entity.name": "2217DBSQLCLN02.voestalpine.root.local",
                    "id": "HOST-C16793303764302D"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmds2p.voestalpine.root.local",
                    "id": "HOST-64D980053A652A7C"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmasp.voestalpine.root.local",
                    "id": "HOST-2E1E5993E8E82C23"
                  },
                  {
                    "dt.security_context": [
                      "xECM Steel",
                      "Virtualization Services"
                    ],
                    "entity.name": "2236asecmcsf5p.voestalpine.root.local",
                    "id": "HOST-3CA4B7A9D088C7AA"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsb3p.voestalpine.root.local",
                    "id": "HOST-5D66F070045A5C86"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmcsf5p.voestalpine.root.local",
                    "id": "HOST-3E0636ED51454587"
                  },
                  {
                    "dt.security_context": [
                      "xECM Corporate",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217asecmds2p.voestalpine.root.local",
                    "id": "HOST-205376DB8365DA2D"
                  },
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217psm0467p01",
                    "id": "HOST-819525E7E9A6D71F"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      26
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "entity.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      27,
                      27
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "entity.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      28,
                      59
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "entity.name": {
                        "type": "string"
                      },
                      "id": {
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
              "autoSelectVisualization": false,
              "chartSettings": {},
              "table": {
                "columnWidths": {
                  "[\"dt.security_context\"]": 503.5
                }
              }
            }
          },
          "title": "Records over time of Metrics for Data Extraction",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "5c964d33-2493-47da-82fa-2b307be8f099",
          "previousFilterSegments": [],
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
                "from": "now()-365d",
                "to": "now()"
              },
              "value": "smartscapeNodes \"HOST\"\n|fields id, dt.security_context, name"
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
              "dateTime": "2026-03-26T09:28:19.855Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-365d",
                  "to": "now()"
                },
                "value": "smartscapeNodes \"HOST\"\n|fields id, dt.security_context, name"
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
                      "end": "2026-03-26T09:28:19.632000000Z",
                      "start": "2025-03-26T09:28:19.632000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes \"HOST\"\n| fields id, dt.security_context, name",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 18,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes \"HOST\"\n|fields id, dt.security_context, name",
                    "queryId": "d3aaa983-3510-4ffe-b0b0-40baf6387f3f",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 60,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": [],
                    "id": "HOST-05975D427629204E",
                    "name": "2236asecmcsb5p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-30A4824A919B88C2",
                    "name": "2217PSMP0010P01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-35DFC2486F7BA6E1",
                    "name": "2217asecmawgp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-3B354B5980F04E11",
                    "name": "2236asmonitor01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-3CA4B7A9D088C7AA",
                    "name": "2236asecmcsf5p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-3DDE976CD5D7D916",
                    "name": "2217cpm0010p01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-3F364FD91594BE69",
                    "name": "2236asecmcsf1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-5D66F070045A5C86",
                    "name": "2217asecmcsb3p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "Bee4IT"
                    ],
                    "id": "HOST-64FAE88DC89F082C",
                    "name": "2217asbee4it01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-78653E05D05E6DE6",
                    "name": "2236asecmcsf4p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-C78D0C795A45AFBC",
                    "name": "2236asecmcsf3p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-C8BC3C28D5E0C391",
                    "name": "2217WWTC08.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-DCA8FBC6235A6CE5",
                    "name": "2217asecmcsb1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-E90384BEDD72316A",
                    "name": "2217asecmcsf2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-FA4013A0656EBAD0",
                    "name": "2217asecmdp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-17236FB4AA53B7FE",
                    "name": "2217htmg0469p01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-18293E2C2566BC1D",
                    "name": "2236asecmds1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-280962E09A43F01D",
                    "name": "2217psm0010p12.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-2C4A33F1CACE2727",
                    "name": "2217htmg0469p02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-2E1E5993E8E82C23",
                    "name": "2236asecmasp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-3565708D47127D40",
                    "name": "2217psm0010p11.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-3E0636ED51454587",
                    "name": "2217asecmcsf5p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-590FBA98DC044D15",
                    "name": "2217psm0010p05.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-5B144D92C902184E",
                    "name": "2217dbxecmn01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-72E43AAACC9059B9",
                    "name": "2217psm0010p04.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-749DBF577FB57CD4",
                    "name": "2217psm0010p01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-78D9080824662889",
                    "name": "2217psm0010p03.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-7C9AD5C259019D64",
                    "name": "2217asixos01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-861F29D4AF5BF4F2",
                    "name": "2217asecmds1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-8DFA23544E33506F",
                    "name": "2236asecmblzp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-8F4027A1ADC95369",
                    "name": "2217asecmcsf1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-B6160E5D2C2AC281",
                    "name": "2236asecmcsb2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-BE1FFB89AC1B2202",
                    "name": "2236asmgnt02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "Bee4IT"
                    ],
                    "id": "HOST-C16793303764302D",
                    "name": "2217DBSQLCLN02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-D99903D58C348261",
                    "name": "2217psm0010p07.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-DF1BC83C6F109665",
                    "name": "2236asecmcsf2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-E35D35EA4ACC0205",
                    "name": "2236asecmcsb3p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-ECA5AA097ACC20C5",
                    "name": "2217PSM0468P01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-F6F1B7F770E87E4A",
                    "name": "2236asecmcsb4p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-047CA01BFA02FE0F",
                    "name": "2217asecmcsb2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-0C1384E1E6716F46",
                    "name": "2217psm0010p08.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-1C0B31FCA725A33D",
                    "name": "2217asecmbravp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-205376DB8365DA2D",
                    "name": "2217asecmds2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-3C172C4602EBA72A",
                    "name": "2236asecmawgp.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "Bee4IT"
                    ],
                    "id": "HOST-46C5336F4E641280",
                    "name": "2217DBSQLCLN01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-48D8D0E1FD5ADEE0",
                    "name": "2236asecmcsb1p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-64D980053A652A7C",
                    "name": "2236asecmds2p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-71B241CBCAEF6EE2",
                    "name": "2217PSMP0010P02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-7655ECDA99952C41",
                    "name": "2217asecmcsf4p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-819525E7E9A6D71F",
                    "name": "2217PSM0467p01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-91D52EF0321D54B9",
                    "name": "2217psm0010p06.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-9DB0A2461301B6C2",
                    "name": "2217pvwa0469p02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-A30840CD76A19D68",
                    "name": "2217asecmcsf3p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-AAF31334B909F6C3",
                    "name": "2217asecmblz.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-C9B7467795DA185C",
                    "name": "2217psm0010p02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "xECM_Corp"
                    ],
                    "id": "HOST-CA848C19059D5B45",
                    "name": "2217asecmcsb4p.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PAM"
                    ],
                    "id": "HOST-D2574E2AD91F2AA9",
                    "name": "2217pvwa0469p01.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "PCD_PW_Portal"
                    ],
                    "id": "HOST-E37D48DB6FC826CC",
                    "name": "2217aspwdrst.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [],
                    "id": "HOST-E606C497EB1200CA",
                    "name": "2217dbxecmn02.voestalpine.root.local"
                  },
                  {
                    "dt.security_context": [
                      "Bee4IT"
                    ],
                    "id": "HOST-EFD88A91BFA12D4E",
                    "name": "2217DBSQLCLN03.voestalpine.root.local"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      2
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      4
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      5,
                      5
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      6,
                      6
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      7,
                      8
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      9,
                      11
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      15
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      16,
                      16
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      17,
                      18
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      19,
                      19
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      20,
                      22
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      23,
                      23
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      24,
                      28
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      29,
                      32
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      33,
                      34
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      35,
                      36
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      37,
                      37
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      38,
                      38
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      39,
                      42
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      43,
                      43
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      44,
                      44
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      45,
                      46
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      47,
                      57
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      58,
                      58
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      59,
                      59
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "id": {
                        "type": "smartscape_id"
                      },
                      "name": {
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
              "autoSelectVisualization": false,
              "chartSettings": {},
              "table": {
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
