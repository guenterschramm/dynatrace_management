resource "dynatrace_document" "Untitled_notebook_2" {
  name    = "Untitled notebook"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-30m",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "bbb2201e-a566-4a57-993f-6ce23654274c",
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
                "from": "now()-30m",
                "to": "now()"
              },
              "value": "fetch logs\n| filter matchesValue(dt.security_context, \"xECM Corporate\")\n| summarize by:{log.source, process.technology }, count = count()\n| sort count desc"
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
              "dateTime": "2026-01-29T14:34:45.511Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-30m",
                  "to": "now()"
                },
                "value": "fetch logs\n| filter matchesValue(dt.security_context, \"xECM Corporate\")\n| summarize by:{log.source, process.technology }, count = count()\n| sort count desc"
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
                      "end": "2026-01-29T14:34:44.233000000Z",
                      "start": "2026-01-29T14:04:44.233000000Z"
                    },
                    "canonicalQuery": "fetch logs\n| filter matchesValue(dt.security_context, \"xECM Corporate\")\n| summarize by:{log.source, process.technology}, count = count()\n| sort count desc",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 450,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch logs\n| filter matchesValue(dt.security_context, \"xECM Corporate\")\n| summarize by:{log.source, process.technology }, count = count()\n| sort count desc",
                    "queryId": "6bf288bf-99c0-45d6-95f5-d32bfaed3bde",
                    "sampled": false,
                    "scannedBytes": 1024927364,
                    "scannedDataPoints": 0,
                    "scannedRecords": 6890912,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "count": "67647",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\distributedagent#.out",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "62274",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\localhost_access_log.#-#-#.txt",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "60108",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\thread#.out",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "42501",
                    "log.source": "Windows Security Log",
                    "process.technology": null
                  },
                  {
                    "count": "42445",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-provenance.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "37581",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.log",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "27084",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\timing_logs\\timings_#_#.csv",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "18461",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-access.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "15591",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC1\\*.log",
                    "process.technology": [
                      "IIS"
                    ]
                  },
                  {
                    "count": "15559",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stderr.#-#-#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "15557",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\catalina.#-#-#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "15446",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\searchfederator_#asecmbe2p1X2099X291305848X#.log",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "5579",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\as.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2030",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\indexengine_#asecmbe2p1X2099X291305848X#.log",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "1266",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\sap_ext_trc.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "1003",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\otds.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "665",
                    "log.source": "D:\\OpenText\\var\\LogDir\\ds_jni.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "479",
                    "log.source": "Windows System Log",
                    "process.technology": null
                  },
                  {
                    "count": "401",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stdout.#-#-#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "337",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\searchengine_#asecmbe2p1X2099X291305848X#.log",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "309",
                    "log.source": "Windows Application Log",
                    "process.technology": null
                  },
                  {
                    "count": "149",
                    "log.source": "D:\\OpenText\\var\\LogDir\\dpri_servlet.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "84",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\agents_run#.html",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "70",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\notify_run#.html",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "36",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\ecmlink-spi.log",
                    "process.technology": [
                      "Java"
                    ]
                  },
                  {
                    "count": "21",
                    "log.source": null,
                    "process.technology": null
                  },
                  {
                    "count": "18",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_W#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "17",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_D#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "13",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_B#_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "12",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_EXR#_ICV_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "12",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_StartEXR#_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "10",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_B#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "9",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LG_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "9",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OW_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "7",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_O#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "6",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LD_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "4",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_M#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "4",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_xECMT#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "4",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_P#_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "3",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_L#_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BC_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BE_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BF_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BP_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BW_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LA_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LB_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LE_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LF_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LM_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LN_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LP_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LS_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LT_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LW_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MD_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MF_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MT_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_WA_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_WB_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_WD_Netapp_FS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_SYS_CONDENSE_STATISTICS_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_AB_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_AP_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_AS_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_AY_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_BC_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OH_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OI_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OJ_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OK_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OL_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OR_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OX_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OZ_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PA_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PB_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PC_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PD_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PE_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PF_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PG_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PH_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PI_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "2",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PJ_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "1",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\cws.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "1",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_OG_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  },
                  {
                    "count": "1",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_PM_Netapp_#.log",
                    "process.technology": [
                      "Apache Tomcat",
                      "Java"
                    ]
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      1
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      3
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      4,
                      4
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      5,
                      6
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      7,
                      7
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      8,
                      8
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      9,
                      10
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      11,
                      11
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      12
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      13,
                      13
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      14,
                      18
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      19,
                      20
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      21,
                      21
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      22,
                      25
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                      }
                    }
                  },
                  {
                    "indexRange": [
                      26,
                      87
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "log.source": {
                        "type": "string"
                      },
                      "process.technology": {
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
                "columnTypeOverrides": [
                  {
                    "fields": [
                      "content"
                    ],
                    "id": 1769692530400,
                    "value": "log-content"
                  }
                ],
                "columnWidths": {
                  "[\"process.technology\"]": 170.7
                },
                "hideColumnsForLargeResults": true
              }
            }
          },
          "type": "dql"
        },
        {
          "davisCopilot": {
            "feedbackProvided": false,
            "prompt": "count of logs per logsource one column for security context application one,\n",
            "response": {
              "data": {
                "dql": "fetch logs\n| summarize by:{log.source, dt.security_context}, count = count()",
                "messageToken": "25eafb16-4ec5-4602-aa62-a9c2329f9cc3",
                "metadata": {
                  "notifications": []
                },
                "status": "SUCCESSFUL"
              },
              "prompt": "count of logs per logsource one columne per security context\n",
              "status": "success"
            },
            "showDqlSnippet": true
          },
          "drilldownPath": [],
          "filterSegments": [],
          "id": "06f6f368-359d-4593-a980-1999200b8f04",
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
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch logs\n| summarize by:{log.source, dt.security_context}, count = count()"
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
              "dateTime": "2026-01-29T13:21:58.583Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch logs\n| summarize by:{log.source, dt.security_context}, count = count()"
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
                      "end": "2026-01-29T13:21:55.567000000Z",
                      "start": "2026-01-29T11:21:55.567000000Z"
                    },
                    "canonicalQuery": "fetch logs\n| summarize by:{log.source, dt.security_context}, count = count()",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 2159,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch logs\n| summarize by:{log.source, dt.security_context}, count = count()",
                    "queryId": "0dad0434-0b76-41eb-840a-c18aa9b4befc",
                    "sampled": false,
                    "scannedBytes": 176879926998,
                    "scannedDataPoints": 0,
                    "scannedRecords": 156806736,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "count": "41",
                    "dt.security_context": "Webhosting Service",
                    "log.source": "/usr/local/tomcat/instances/CMAS_Access_External/logs/activatemas.log"
                  },
                  {
                    "count": "2954",
                    "dt.security_context": "Webhosting Service",
                    "log.source": "/usr/local/tomcat/instances/CMAS_Access_External/logs/localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "6716",
                    "dt.security_context": "Webhosting Service",
                    "log.source": "/usr/local/tomcat/instances/KMV/logs/localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "58307",
                    "dt.security_context": "Webhosting Service",
                    "log.source": "/usr/local/tomcat/instances/KMV/logs/uid.log"
                  },
                  {
                    "count": "304",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/commvault/Log_Files/cvfwd.log"
                  },
                  {
                    "count": "39",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/dnf.librepo.log"
                  },
                  {
                    "count": "186",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/dnf.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/dnf.rpm.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/hawkey.log"
                  },
                  {
                    "count": "1285",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "789",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender.log"
                  },
                  {
                    "count": "1351",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core.log"
                  },
                  {
                    "count": "12992",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core_err.log"
                  },
                  {
                    "count": "3335",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise.log"
                  },
                  {
                    "count": "1752",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise_err.log"
                  },
                  {
                    "count": "12",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_err.log"
                  },
                  {
                    "count": "1580",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_mplog.log"
                  },
                  {
                    "count": "9",
                    "dt.security_context": "PAM",
                    "log.source": "/var/log/rhsm/rhsm.log"
                  },
                  {
                    "count": "236",
                    "dt.security_context": "PAM",
                    "log.source": "/var/opt/CARKpsmp/logs/PSMPConsole.log"
                  },
                  {
                    "count": "15114",
                    "dt.security_context": "PAM",
                    "log.source": "/var/opt/CARKpsmp/logs/PSMPTrace.log"
                  },
                  {
                    "count": "6491",
                    "dt.security_context": "PAM",
                    "log.source": "/var/opt/CARKpsmp/logs/components/#.PSOpenSSH.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\ApplicationPasswordProvider\\Logs\\APPAudit.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\ApplicationPasswordProvider\\Logs\\APPConsole.log"
                  },
                  {
                    "count": "3",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\HealthCheck\\PSMWebService.log"
                  },
                  {
                    "count": "4064",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.ClientDispatcher.log"
                  },
                  {
                    "count": "2290",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.KeystrokesLogger#.log"
                  },
                  {
                    "count": "795653",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.RDP.log"
                  },
                  {
                    "count": "90",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.Recorder.log"
                  },
                  {
                    "count": "122141",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.SSH.log"
                  },
                  {
                    "count": "540",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.SessionKeeper.log"
                  },
                  {
                    "count": "2133",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\Components\\#.WindowsEventsLogger.log"
                  },
                  {
                    "count": "325",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\PSMConsole.log"
                  },
                  {
                    "count": "432650",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\PSMTrace.log"
                  },
                  {
                    "count": "14923",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\Casos.Activity.log"
                  },
                  {
                    "count": "64236",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\Casos.Debug.log"
                  },
                  {
                    "count": "230",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\PMConsole.log"
                  },
                  {
                    "count": "64844",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\PMTrace.log"
                  },
                  {
                    "count": "124",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\ThirdParty\\Debug_Linux-Server-Local-Account-#_PERS_U#-Root-Operating System-Linux-Server-Local-Account-vastdbkotan#-malchwo_TPC_#-#-#.log"
                  },
                  {
                    "count": "124",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\ThirdParty\\Debug_Linux-Server-Local-Account-#_PERS_U#-Root-Operating System-Linux-Server-Local-Account-vastdbkotan#-u#_TPC_#-#-#.log"
                  },
                  {
                    "count": "124",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\ThirdParty\\Debug_Linux-Server-Local-Account-#_PERS_V#-Root-Operating System-Linux-Server-Local-Account-vastdbkotan#-freudrl_TPC_#-#-#.log"
                  },
                  {
                    "count": "1529",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\pm.log"
                  },
                  {
                    "count": "185",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\pm_error.log"
                  },
                  {
                    "count": "708",
                    "dt.security_context": "xECM Steel",
                    "log.source": "C:\\Program Files\\Commvault\\ContentStore\\Log Files\\cvd.log"
                  },
                  {
                    "count": "1599",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\ProgramData\\Amazon\\SSM\\Logs\\amazon-ssm-agent.log"
                  },
                  {
                    "count": "26",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\ProgramData\\Amazon\\SSM\\Logs\\errors.log"
                  },
                  {
                    "count": "613",
                    "dt.security_context": "xECM Steel",
                    "log.source": "C:\\ProgramData\\OpenText\\JobProcessor\\logs\\jobLog.xml"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-170E000000000000\\AppData\\Local\\Temp\\scoped_dir17160_880356491\\Default\\Extension Rules\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-170E000000000000\\AppData\\Local\\Temp\\scoped_dir17160_880356491\\Default\\Extension Scripts\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-170E000000000000\\AppData\\Local\\Temp\\scoped_dir17160_880356491\\Default\\Extension State\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-170E000000000000\\AppData\\Local\\Temp\\scoped_dir17160_880356491\\Default\\Site Characteristics Database\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-170E000000000000\\AppData\\Local\\Temp\\scoped_dir17160_880356491\\Default\\Sync Data\\LevelDB\\#.log"
                  },
                  {
                    "count": "30",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-1A0E000000000000.2217PSM0010P04\\AppData\\Local\\Temp\\PSMChromeData\\PSM-1A0E000000000000\\173\\chrome_debug.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\Default\\Extension Rules\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\Default\\Extension Scripts\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\Default\\Extension State\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\Default\\Site Characteristics Database\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\Default\\Sync Data\\LevelDB\\#.log"
                  },
                  {
                    "count": "37",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\194\\chrome_debug.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\Default\\Extension Rules\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\Default\\Extension Scripts\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\Default\\Extension State\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\Default\\Site Characteristics Database\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\Default\\Sync Data\\LevelDB\\#.log"
                  },
                  {
                    "count": "22",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-4419000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-4419000000000000\\21\\chrome_debug.log"
                  },
                  {
                    "count": "40",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-650C000000000000\\AppData\\Local\\Temp\\VCXSrv.#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-6A00000000000000.2217PSM0010P05\\AppData\\Local\\Temp\\PSMChromeData\\PSM-6A00000000000000\\130\\Default\\Session Storage\\#.log"
                  },
                  {
                    "count": "19",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-7111000000000000\\AppData\\Local\\Temp\\VCXSrv.#.log"
                  },
                  {
                    "count": "32",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-900C000000000000.2217PSM0010P05\\AppData\\Local\\Temp\\PSMChromeData\\PSM-900C000000000000\\124\\chrome_debug.log"
                  },
                  {
                    "count": "23",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-950C000000000000.2217PSM0010P04\\AppData\\Local\\Temp\\PSMChromeData\\PSM-950C000000000000\\195\\chrome_debug.log"
                  },
                  {
                    "count": "40",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-A00D000000000000.2217PSM0010P01.000\\AppData\\Local\\Temp\\VCXSrv.#.log"
                  },
                  {
                    "count": "93",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-BE19000000000000.2217PSM0010P06\\AppData\\Local\\Temp\\PSMChromeData\\PSM-BE19000000000000\\30\\chrome_debug.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-BE19000000000000.2217PSM0010P06\\AppData\\Local\\Temp\\PSMChromeData\\PSM-BE19000000000000\\6\\Default\\Local Storage\\leveldb\\#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-BE19000000000000.2217PSM0010P06\\AppData\\Local\\Temp\\PSMChromeData\\PSM-BE19000000000000\\6\\Default\\Session Storage\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-C40C000000000000.2217PSM0010P05.000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-C40C000000000000\\135\\Default\\Session Storage\\#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-C40C000000000000.2217PSM0010P05.000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-C40C000000000000\\135\\Default\\Site Characteristics Database\\#.log"
                  },
                  {
                    "count": "10",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\Users\\PSM-C80D000000000000\\AppData\\Local\\Temp\\PSMChromeData\\PSM-C80D000000000000\\151\\chrome_debug.log"
                  },
                  {
                    "count": "15893",
                    "dt.security_context": "PAM",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC1\\*.log"
                  },
                  {
                    "count": "72763",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC1\\*.log"
                  },
                  {
                    "count": "94831",
                    "dt.security_context": "xECM Steel",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC1\\*.log"
                  },
                  {
                    "count": "8",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC2\\*.log"
                  },
                  {
                    "count": "26",
                    "dt.security_context": "xECM Steel",
                    "log.source": "C:\\inetpub\\logs\\LogFiles\\W3SVC2\\*.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\passwordreset\\logs\\catalina.#-#-#.log"
                  },
                  {
                    "count": "3033",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\passwordreset\\logs\\localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\passwordreset\\logs\\tomcat_passwordreset-stderr.#-#-#.log"
                  },
                  {
                    "count": "3",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\passwordreset\\logs\\tomcat_passwordreset-stdout.#-#-#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\pcd-register-form\\logs\\catalina.#-#-#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\pcd-register-form\\logs\\tomcat_pcd_register_form-stderr.#-#-#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\pcd\\logs\\catalina.#-#-#.log"
                  },
                  {
                    "count": "2825",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\pcd\\logs\\localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "PCD_PW_Portal",
                    "log.source": "C:\\tomcat-instances\\pcd\\logs\\tomcat_pcd-stderr.#-#-#.log"
                  },
                  {
                    "count": "4017",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\anzeigenWorkspace.log"
                  },
                  {
                    "count": "8",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\as-search.log"
                  },
                  {
                    "count": "22189",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\as.log"
                  },
                  {
                    "count": "6454",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\as.log"
                  },
                  {
                    "count": "4999",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\autMitsendenDokumente.log"
                  },
                  {
                    "count": "64151",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\catalina.#-#-#.log"
                  },
                  {
                    "count": "10594",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\catalina.#-#-#.log"
                  },
                  {
                    "count": "3",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\cws.log"
                  },
                  {
                    "count": "15",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\cws.log"
                  },
                  {
                    "count": "86829",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-access.log"
                  },
                  {
                    "count": "44522",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-access.log"
                  },
                  {
                    "count": "168553",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-provenance.log"
                  },
                  {
                    "count": "210051",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\directory-provenance.log"
                  },
                  {
                    "count": "175",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\ecmlink.log"
                  },
                  {
                    "count": "271656",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "162166",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\localhost_access_log.#-#-#.txt"
                  },
                  {
                    "count": "940",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\ot-admin.log"
                  },
                  {
                    "count": "3471",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\otds.log"
                  },
                  {
                    "count": "21",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\otds.log"
                  },
                  {
                    "count": "5332",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\sap_ext_trc.log"
                  },
                  {
                    "count": "64151",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stderr.#-#-#.log"
                  },
                  {
                    "count": "10602",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stderr.#-#-#.log"
                  },
                  {
                    "count": "1575",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stdout.#-#-#.log"
                  },
                  {
                    "count": "9605",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stdout.#-#-#.log"
                  },
                  {
                    "count": "2559",
                    "dt.security_context": "Bee4IT",
                    "log.source": "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_action.log"
                  },
                  {
                    "count": "2119",
                    "dt.security_context": "Bee4IT",
                    "log.source": "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_fail.log"
                  },
                  {
                    "count": "1587",
                    "dt.security_context": "Bee4IT",
                    "log.source": "D:\\Clausmark\\Bee4IT\\web\\api\\logs\\api-stdout_#_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "Bee4IT",
                    "log.source": "D:\\Clausmark\\Bee4IT\\web\\auth\\logs\\auth-stdout_#_#.log"
                  },
                  {
                    "count": "36464",
                    "dt.security_context": "Bee4IT",
                    "log.source": "D:\\Clausmark\\Bee4IT\\web\\rm\\logs\\rm-stdout_#_#.log"
                  },
                  {
                    "count": "554",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\dpri_servlet.log"
                  },
                  {
                    "count": "1609",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\ds_jni.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_Copy_Back_#ASKRGL#_#.log"
                  },
                  {
                    "count": "46",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_EXR#_ICV_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BP_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_BW_Netapp_FS_#.log"
                  },
                  {
                    "count": "12",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_D#_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_DMSDefault_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_E#_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_EA_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_EB_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_EC_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_GA_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_GM_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_GN_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_GP_Netapp_FS_#.log"
                  },
                  {
                    "count": "8",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_H#_Netapp_FS_#.log"
                  },
                  {
                    "count": "110",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HA_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HB_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HC_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HE_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HF_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HG_Netapp_FS_#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HH_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HI_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HO_Netapp_FS_#.log"
                  },
                  {
                    "count": "9",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HP_Netapp_FS_#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HQ_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HS_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HV_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_HX_Netapp_SF_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_IA_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_IB_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_ID_Netapp_FS_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_IF_Netapp_FS_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LE_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LF_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LG_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LM_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LN_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LP_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LS_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LT_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_LW_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_M#_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MF_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_MT_Netapp_FS_#.log"
                  },
                  {
                    "count": "16",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_O#_Netapp_FS_#.log"
                  },
                  {
                    "count": "10",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OB_Netapp_FS_#.log"
                  },
                  {
                    "count": "12",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OC_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OE_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OF_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OG_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OH_Netapp_FS_#.log"
                  },
                  {
                    "count": "13",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OI_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OJ_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OK_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OL_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OR_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OS_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OW_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OX_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_OZ_Netapp_FS_#.log"
                  },
                  {
                    "count": "8",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_P#_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PA_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PB_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PC_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PE_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PF_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PG_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PH_Netapp_FS_#.log"
                  },
                  {
                    "count": "6",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PI_Netapp_FS_#.log"
                  },
                  {
                    "count": "12",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PJ_Netapp_FS_#.log"
                  },
                  {
                    "count": "5",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PM_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PU_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_PZ_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_RD_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_RK_Netapp_FS_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_TC_Netapp_FS_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_TD_Netapp_FS_#.log"
                  },
                  {
                    "count": "1",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_PoolWrite_TE_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_SYS_CONDENSE_STATISTICS_#.log"
                  },
                  {
                    "count": "46",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_StartEXR#_#.log"
                  },
                  {
                    "count": "3",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_D#_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DE_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DF_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DMSDef_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DP_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DR_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_DT_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_E#_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_EA_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_EB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_EC_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GC_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GD_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GM_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GN_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GP_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_GS_Netapp_#.log"
                  },
                  {
                    "count": "8",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_H#_Netapp_#.log"
                  },
                  {
                    "count": "39",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HA_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HC_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HD_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HF_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HG_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HH_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HI_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HO_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HP_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HQ_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HS_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HT_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HV_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_HX_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IA_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IC_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_ID_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IE_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IG_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IH_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_II_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IJ_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IN_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IP_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IR_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IV_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_IX_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_J#_Netapp_#.log"
                  },
                  {
                    "count": "12",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JA_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JC_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JD_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JE_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JF_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JP_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_JT_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_KK_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_L#_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_TX_Netapp_#.log"
                  },
                  {
                    "count": "20",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_V#_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_VB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_VI_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_VM_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_VS_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_VT_Netapp_#.log"
                  },
                  {
                    "count": "20",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_W#_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_WA_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_WB_Netapp_#.log"
                  },
                  {
                    "count": "2",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\OpenText\\var\\LogDir\\messages\\job_purge_Buffer_xECMT#_Netap_#.log"
                  },
                  {
                    "count": "322",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\agents_run#.html"
                  },
                  {
                    "count": "363",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\agents_run#.html"
                  },
                  {
                    "count": "12852109",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.#.log"
                  },
                  {
                    "count": "128507873",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.log"
                  },
                  {
                    "count": "2064",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.log"
                  },
                  {
                    "count": "24",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\distributedagent_run#.html"
                  },
                  {
                    "count": "1143",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\easp_dsh.log"
                  },
                  {
                    "count": "402",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\ecmlink-spi.log"
                  },
                  {
                    "count": "23",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\ecmlink-spi.log"
                  },
                  {
                    "count": "3",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\indexengine_#asecmbe1p1X2099X1028033948X#.log"
                  },
                  {
                    "count": "6361",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\indexengine_#asecmbe2p1X2099X291305848X#.log"
                  },
                  {
                    "count": "279",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\notify_run#.html"
                  },
                  {
                    "count": "33",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\notify_run#.html"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\receiver_logs\\sockserv.receiver#.out"
                  },
                  {
                    "count": "14",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\receiver_logs\\sockserv.receiver#.out"
                  },
                  {
                    "count": "15523",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\search_#_#.log"
                  },
                  {
                    "count": "795",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\searchengine_#asecmbe2p1X2099X291305848X#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\searchfederator_#asecmbe1p1X2099X1028033948X#.log"
                  },
                  {
                    "count": "62989",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\searchfederator_#asecmbe2p1X2099X291305848X#.log"
                  },
                  {
                    "count": "390",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\sfecmlink-spi.log"
                  },
                  {
                    "count": "381",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\sfecmlink-spi_Network.log"
                  },
                  {
                    "count": "30989",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\ThumbnailAgent#.out"
                  },
                  {
                    "count": "14256",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\ThumbnailAgent#.out"
                  },
                  {
                    "count": "209",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\agents#.out"
                  },
                  {
                    "count": "412",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\agents#.out"
                  },
                  {
                    "count": "336",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\commagent#.out"
                  },
                  {
                    "count": "116811",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\daagent#.out"
                  },
                  {
                    "count": "228034",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\distributedagent#.out"
                  },
                  {
                    "count": "333695",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\distributedagent#.out"
                  },
                  {
                    "count": "10231",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\multiprocessingAgent#.out"
                  },
                  {
                    "count": "674",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\notify#.out"
                  },
                  {
                    "count": "4845",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\notify#.out"
                  },
                  {
                    "count": "72",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\otcoreshareagent#.out"
                  },
                  {
                    "count": "66",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\otcoreshareagent#.out"
                  },
                  {
                    "count": "9",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\relagent#.out"
                  },
                  {
                    "count": "5926",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\systemMonitorAgent#.out"
                  },
                  {
                    "count": "7312",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\systemMonitorAgent#.out"
                  },
                  {
                    "count": "233190",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\thread#.out"
                  },
                  {
                    "count": "1752890",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\thread#.out"
                  },
                  {
                    "count": "95",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\verifyAgent#.out"
                  },
                  {
                    "count": "69",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wfagent#.out"
                  },
                  {
                    "count": "174",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wfagent#.out"
                  },
                  {
                    "count": "48",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wrcollectionagent#.out"
                  },
                  {
                    "count": "48",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wrcollectionagent#.out"
                  },
                  {
                    "count": "2242",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wrscheduleagent#.out"
                  },
                  {
                    "count": "24616",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\thread_logs\\wrscheduleagent#.out"
                  },
                  {
                    "count": "112313",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\timing_logs\\timings_#_#.csv"
                  },
                  {
                    "count": "122922",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\timing_logs\\timings_#_#.csv"
                  },
                  {
                    "count": "17948",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\transaction_#asecmbe1p1X2099X1028033948X#.log"
                  },
                  {
                    "count": "90422",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "D:\\Opentext\\OTCS\\logs\\updatedistributor_#asecmbe2p1X2099X291305848X#.log"
                  },
                  {
                    "count": "23",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\dpri_servlet.log"
                  },
                  {
                    "count": "476",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\ds_jni.log"
                  },
                  {
                    "count": "46",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_EXR3Start_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_Organize_Accounting_Data_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PA_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PB_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PC_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PD_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PE_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PU_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_PX_Netapp_FS_#.log"
                  },
                  {
                    "count": "38",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_S#_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_S#_Netapp_S#_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_SA_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_TT_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_ZC_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_ZI_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_ZS_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_PoolWrite_ZU_Netapp_FS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_SYS_CONDENSE_STATISTICS_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PA_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PB_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PC_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PD_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PE_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PU_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_PX_Netapp_#.log"
                  },
                  {
                    "count": "36",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_S#_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_SA_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_TT_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_ZC_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_ZI_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_ZS_Netapp_#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\Opentext\\var\\LogDir\\messages\\job_purge_Buffer_ZU_Netapp_#.log"
                  },
                  {
                    "count": "1070",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\SPP SAP DVS Importer\\HLMB Wertstoffzentrum\\wertstoffimport.#.log"
                  },
                  {
                    "count": "4",
                    "dt.security_context": "xECM Steel",
                    "log.source": "D:\\SPP SAP DVS Importer\\ZDM Technische Dokumente - Schnittstelle 2\\primusSchnittstelle.#.log"
                  },
                  {
                    "count": "2753",
                    "dt.security_context": "Bee4IT",
                    "log.source": "Windows Application Log"
                  },
                  {
                    "count": "161450",
                    "dt.security_context": "PAM",
                    "log.source": "Windows Application Log"
                  },
                  {
                    "count": "1095",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "Windows Application Log"
                  },
                  {
                    "count": "563",
                    "dt.security_context": "xECM Steel",
                    "log.source": "Windows Application Log"
                  },
                  {
                    "count": "293999",
                    "dt.security_context": "Bee4IT",
                    "log.source": "Windows Security Log"
                  },
                  {
                    "count": "583955",
                    "dt.security_context": "PAM",
                    "log.source": "Windows Security Log"
                  },
                  {
                    "count": "188408",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "Windows Security Log"
                  },
                  {
                    "count": "189941",
                    "dt.security_context": "xECM Steel",
                    "log.source": "Windows Security Log"
                  },
                  {
                    "count": "716",
                    "dt.security_context": "Bee4IT",
                    "log.source": "Windows System Log"
                  },
                  {
                    "count": "3812",
                    "dt.security_context": "PAM",
                    "log.source": "Windows System Log"
                  },
                  {
                    "count": "1717",
                    "dt.security_context": "xECM Corporate",
                    "log.source": "Windows System Log"
                  },
                  {
                    "count": "1902",
                    "dt.security_context": "xECM Steel",
                    "log.source": "Windows System Log"
                  },
                  {
                    "count": "273",
                    "dt.security_context": null,
                    "log.source": "snmp_autodiscovery"
                  },
                  {
                    "count": "781",
                    "dt.security_context": "Bee4IT",
                    "log.source": null
                  },
                  {
                    "count": "45",
                    "dt.security_context": "xECM Corporate",
                    "log.source": null
                  },
                  {
                    "count": "892",
                    "dt.security_context": null,
                    "log.source": null
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      377
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "dt.security_context": {
                        "type": "string"
                      },
                      "log.source": {
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
              "autoSelectVisualization": true,
              "chartSettings": {},
              "table": {
                "hideColumnsForLargeResults": true
              }
            }
          },
          "subType": "davis-copilot",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "ee393693-1ab4-4fe1-a74e-6bf604a2d3c8",
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
              "value": "timeseries {\n    active_users.ts = countDistinct(dt.frontend.user.active.estimated_count),\n    active_users.value = countDistinct(dt.frontend.user.active.estimated_count, scalar: true),\n    active_sessions.ts = countDistinct(dt.frontend.session.active.estimated_count),\n    active_sessions.value = countDistinct(dt.frontend.session.active.estimated_count, scalar: true)\n},\nunion: TRUE,\nfilter: dt.rum.application.entity == \"APPLICATION-AA58CCA0CF14E59F\""
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
              "dateTime": "2026-02-03T20:06:41.537Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries {\n    active_users.ts = countDistinct(dt.frontend.user.active.estimated_count),\n    active_users.value = countDistinct(dt.frontend.user.active.estimated_count, scalar: true),\n    active_sessions.ts = countDistinct(dt.frontend.session.active.estimated_count),\n    active_sessions.value = countDistinct(dt.frontend.session.active.estimated_count, scalar: true)\n},\nunion: TRUE,\nfilter: dt.rum.application.entity == \"APPLICATION-AA58CCA0CF14E59F\""
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
                      "end": "2026-02-03T20:07:00.000000000Z",
                      "start": "2026-02-03T18:06:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries filter:dt.rum.application.entity == \"APPLICATION-AA58CCA0CF14E59F\", union:TRUE, {active_users.ts = countDistinct(dt.frontend.user.active.estimated_count), active_users.value = countDistinct(dt.frontend.user.active.estimated_count, scalar:TRUE), active_sessions.ts = countDistinct(dt.frontend.session.active.estimated_count), active_sessions.value = countDistinct(dt.frontend.session.active.estimated_count, scalar:TRUE)}",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 25,
                    "locale": "de-DE",
                    "notifications": [],
                    "query": "timeseries {\n    active_users.ts = countDistinct(dt.frontend.user.active.estimated_count),\n    active_users.value = countDistinct(dt.frontend.user.active.estimated_count, scalar: true),\n    active_sessions.ts = countDistinct(dt.frontend.session.active.estimated_count),\n    active_sessions.value = countDistinct(dt.frontend.session.active.estimated_count, scalar: true)\n},\nunion: TRUE,\nfilter: dt.rum.application.entity == \"APPLICATION-AA58CCA0CF14E59F\"",
                    "queryId": "2c4a2c37-53f2-419b-9c65-6b126a1807aa",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "description": "The estimated number of unique active users",
                      "displayName": "Frontend app unique active users",
                      "fieldName": "active_users.ts",
                      "metric.key": "dt.frontend.user.active.estimated_count",
                      "unit": "count"
                    },
                    {
                      "description": "The estimated number of unique active users",
                      "displayName": "Frontend app unique active users",
                      "fieldName": "active_users.value",
                      "metric.key": "dt.frontend.user.active.estimated_count",
                      "scalar": true,
                      "unit": "count"
                    },
                    {
                      "description": "The estimated number of active user sessions",
                      "displayName": "Frontend app active user sessions",
                      "fieldName": "active_sessions.ts",
                      "metric.key": "dt.frontend.session.active.estimated_count",
                      "unit": "count"
                    },
                    {
                      "description": "The estimated number of active user sessions",
                      "displayName": "Frontend app active user sessions",
                      "fieldName": "active_sessions.value",
                      "metric.key": "dt.frontend.session.active.estimated_count",
                      "scalar": true,
                      "unit": "count"
                    }
                  ]
                },
                "records": [
                  {
                    "active_sessions.ts": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      2,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      null,
                      1,
                      1,
                      1,
                      null,
                      null,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      1,
                      null,
                      1,
                      1,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null
                    ],
                    "active_sessions.value": 3,
                    "active_users.ts": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      2,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      1,
                      null,
                      1,
                      1,
                      1,
                      null,
                      null,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      1,
                      null,
                      1,
                      1,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null
                    ],
                    "active_users.value": 3,
                    "interval": "60000000000",
                    "timeframe": {
                      "end": "2026-02-03T21:07:00.000000000+01:00",
                      "start": "2026-02-03T19:06:00.000000000+01:00"
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
                      "active_sessions.ts": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "active_sessions.value": {
                        "type": "double"
                      },
                      "active_users.ts": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "active_users.value": {
                        "type": "double"
                      },
                      "interval": {
                        "type": "duration"
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
