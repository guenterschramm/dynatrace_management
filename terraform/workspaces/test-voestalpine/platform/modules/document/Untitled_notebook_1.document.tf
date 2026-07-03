resource "dynatrace_document" "Untitled_notebook_1" {
  name    = "Untitled notebook"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-24h",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "a00d2ebf-4949-4686-8009-0a179ff002fe",
          "previousFilterSegments": [],
          "previousQueryConfig": {
            "subQueries": [
              {
                "by": [
                  "dt.security_context"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count"
                }
              }
            ],
            "version": 20
          },
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "dt.security_context"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count"
                }
              }
            ],
            "version": 20
          },
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "timeseries { sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`), value.A = avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`, scalar: true) }, by: { dt.security_context }"
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
              "dateTime": "2026-05-19T05:53:00.983Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "timeseries { sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`), value.A = avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`, scalar: true) }, by: { dt.security_context }"
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
                      "end": "2026-05-19T06:00:00.000000000Z",
                      "start": "2026-05-18T05:50:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.security_context}, {sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`), value.A = avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`, scalar:TRUE)}",
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
                    "executionTimeMilliseconds": 23,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries { sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`), value.A = avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`, scalar: true) }, by: { dt.security_context }",
                    "queryId": "9b5a0806-5548-4845-863e-815ccd23731a",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 339,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "aggregation": "sum",
                      "description": "Total number of messages delivered from the transport service",
                      "displayName": "Messages delivered",
                      "fieldName": "sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`)",
                      "metric.key": "com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count",
                      "unit": "count"
                    },
                    {
                      "aggregation": "avg",
                      "description": "Total number of messages delivered from the transport service",
                      "displayName": "Messages delivered",
                      "fieldName": "value.A",
                      "metric.key": "com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count",
                      "scalar": true,
                      "unit": "count"
                    }
                  ]
                },
                "records": [
                  {
                    "dt.security_context": "\"Nedcon_POC,network\"",
                    "interval": "600000000000",
                    "sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`)": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      178,
                      2505,
                      3928,
                      3955,
                      3930,
                      3938,
                      3955,
                      3929,
                      3929,
                      3955,
                      3929,
                      5243,
                      3955,
                      3932,
                      3928,
                      3955,
                      3928,
                      3938,
                      3955,
                      3929,
                      3929,
                      3954,
                      3928,
                      3931,
                      3956,
                      3932,
                      4326,
                      4890,
                      3930,
                      3937,
                      4021,
                      3991,
                      3989,
                      3958,
                      3996,
                      3993,
                      4016,
                      3994,
                      4117,
                      646,
                      3644,
                      4029,
                      3994,
                      3996,
                      4021,
                      3995,
                      3995,
                      4024,
                      3995,
                      3997,
                      4019,
                      3994,
                      3993,
                      4029,
                      3993,
                      3994,
                      4020,
                      3994,
                      3995,
                      4023,
                      3994,
                      3996,
                      4020,
                      3995,
                      3993,
                      4028,
                      3993,
                      3993,
                      4018,
                      3993,
                      3994,
                      5139,
                      4186,
                      3997,
                      4021,
                      3995,
                      3994,
                      4029,
                      3995,
                      3994,
                      4022,
                      3992,
                      3994,
                      4021,
                      3994,
                      3996,
                      4416,
                      4927,
                      3993,
                      4029,
                      3993,
                      3941,
                      5717,
                      7509,
                      3156,
                      384
                    ],
                    "timeframe": {
                      "end": "2026-05-19T08:00:00.000000000+02:00",
                      "start": "2026-05-18T07:50:00.000000000+02:00"
                    },
                    "value.A": 203.82545649838883
                  },
                  {
                    "dt.security_context": "\"[Nedcon_POC,network]\"",
                    "interval": "600000000000",
                    "sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`)": [
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      1175
                    ],
                    "timeframe": {
                      "end": "2026-05-19T08:00:00.000000000+02:00",
                      "start": "2026-05-18T07:50:00.000000000+02:00"
                    },
                    "value.A": 587.5
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      1
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "sum(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              144
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
                      },
                      "value.A": {
                        "type": "double"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {}
            }
          },
          "title": "Explore metrics",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 373,
          "id": "b776db87-e03b-46f8-8010-3698aa8b7b6f",
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
                "from": "2026-04-30T16:00Z",
                "to": "2026-04-30T17:00Z"
              },
              "value": "fetch metrics\ntimeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName, dt.security_context\n\n\n"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 10000
            },
            "result": {
              "code": 400,
              "dateTime": "2026-05-19T05:45:52.295Z",
              "error": "The field dt.security_context doesn't exist.",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "2026-04-30T16:00Z",
                  "to": "2026-04-30T17:00Z"
                },
                "value": "timeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName = \"Messages delivered\", dt.security_context\n\n\n"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 10000
              },
              "value": {
                "error": {
                  "code": 400,
                  "details": {
                    "arguments": [
                      "dt.security_context"
                    ],
                    "errorMessage": "The field dt.security_context doesn't exist.",
                    "errorMessageFormat": "The field %1$s doesn't exist.",
                    "errorMessageFormatSpecifierTypes": [
                      "FIELD_NAME"
                    ],
                    "errorType": "FIELD_DOES_NOT_EXIST",
                    "exceptionType": "DQL-RESULT_TYPE",
                    "queryId": "b7a7c29a-358e-4e8e-b3bc-ddd9cf27ffd2",
                    "queryString": "timeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName = \"Messages delivered\", dt.security_context\n\n\n",
                    "syntaxErrorPosition": {
                      "end": {
                        "column": 67,
                        "index": 280,
                        "line": 3
                      },
                      "start": {
                        "column": 49,
                        "index": 262,
                        "line": 3
                      }
                    }
                  },
                  "message": "FIELD_DOES_NOT_EXIST"
                }
              }
            },
            "state": "error",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {},
              "table": {
                "columnWidths": {
                  "[\"span.events\"]": 872
                },
                "hideColumnsForLargeResults": true
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 103,
          "id": "77418e51-3a7a-42b3-8163-6ba0a3e1362a",
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
                "from": "2026-04-30T16:00Z",
                "to": "2026-04-30T17:00Z"
              },
              "value": "fetch "
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
              "dateTime": "2026-05-05T06:37:56.728Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "2026-04-30T16:00Z",
                  "to": "2026-04-30T17:00Z"
                },
                "value": "fetch spans\n| filter span.id ~ \"d8b5a53eb02126a4\""
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
                      "end": "2026-04-30T17:00:00.000000000Z",
                      "start": "2026-04-30T16:00:00.000000000Z"
                    },
                    "canonicalQuery": "fetch spans\n| filter span.id ~ \"d8b5a53eb02126a4\"",
                    "contributions": {
                      "buckets": [
                        {
                          "matchedRecordsRatio": 1,
                          "name": "tpi_messaging_spans",
                          "scannedBytes": 417025712,
                          "table": "spans"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "hpm_vmes_spans",
                          "scannedBytes": 22667,
                          "table": "spans"
                        }
                      ]
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 55,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch spans\n| filter span.id ~ \"d8b5a53eb02126a4\"",
                    "queryId": "80bdc508-1350-4a6f-a866-00001f402df5",
                    "sampled": false,
                    "scannedBytes": 417048379,
                    "scannedDataPoints": 0,
                    "scannedRecords": 6278548,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "db.name": "hqds_qpqw,cn=oraclecontext,dc=world",
                    "db.operation": "INSERT",
                    "db.sql.table": "QW_XFTABDLPAR",
                    "db.statement": "INSERT INTO QW_XFTABDLPAR ( /* ? */ TRANS_ID, /* ? */ SENDEZEIT, /* ? */ BDLKEY_QUELLE, /* ? */ PARAMSTRUKT, /* ? */ PARAMKTXT, /* ? */ WERTECODE, /* ? */ SOLL_IST_KZ, /* ? */ ZAEHLER, /* ? */ KONTEXT, /* ? */ HERKUNFT, /* ? */ ERMITTLUNGS_KZ, /* ? */ FIXIERUNGS_KZ, /* ? */ ERSTELLDATUM, /* ? */ ERSTELLER, /* ? */ AENDERUNGSDATUM, /* ? */ AENDERER, /* ? */ DATENTYP_KZ, /* ? */ WERT ) VALUES ( /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ?, /* ? */ ? )",
                    "db.system": "oracle",
                    "deployment.environment": "test",
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.entity.service": "SERVICE-8CCED98AFA59084C",
                    "dt.ingest.size": "47843",
                    "dt.openpipeline.pipelines": [
                      "spans:pipeline_TPI_Messaging_1863"
                    ],
                    "dt.openpipeline.source": "/api/v2/otlp/v1/traces",
                    "dt.retain.size": "48014",
                    "dt.security_context": "TPI_Messaging",
                    "dt.service.name": "lb-MuSI-default-VPX_SQM-vpx",
                    "dt.smartscape.service": "SERVICE-8CCED98AFA59084C",
                    "duration": "2020523",
                    "end_time": "2026-04-30T18:51:03.992007281+02:00",
                    "host.arch": "amd64",
                    "host.name": "VADSLB03.voestalpine.root.local",
                    "os.description": "Linux 5.14.0-611.16.1.el9_7.x86_64",
                    "os.type": "linux",
                    "os.version": "5.14.0-611.16.1.el9_7.x86_64",
                    "otel.scope.name": "io.opentelemetry.jdbc",
                    "otel.scope.version": "2.26.1-alpha",
                    "process.command_line": "/usr/lib/jvm/java-17-amazon-corretto/bin/java -DjavaCommandLineKeyword=lb-server_MuSI-default-VPX_SQM-vpx -Djava.library.path=/appl/vacoms/lb01/vacoms -Dcom.sun.management.jmxremote=true -Djava.rmi.server.hostname=10.164.195.31 -Dcom.sun.management.jmxremote.port=6996 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dspring.profiles.active=vpx -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom -Dotel.service.name=lb-MuSI-default-VPX_SQM-vpx -Dotel.resource.attributes=deployment.environment=test,team=2217_BSP,region=eu,dt.security_context=TPI_Messaging,dt.cost.costcenter=tpi_messaging,dt.cost.product=tpi_messaging_test -Dotel.exporter.otlp.endpoint=http://10.164.18.36:4317 -Dotel.exporter.otlp.headers=Authorization=Api-Token%20dt0c01.PVQGHBKSTPGJHSQGIVPST3QB.G2NHLAYBESP5SKZHF2KCDPCZ2DYSKFAP26C4WERKMEA5TIG6AQGTM45XXQZEFJSE -Dotel.exporter.otlp.protocol=grpc -Dotel.exporter.otlp.insecure=true -Dotel.traces.exporter=otlp -Dotel.metrics.exporter=otlp -Dotel.logs.exporter=otlp -javaagent:/appl/lb/dynatrace/opentelemetry-javaagent.jar -agentpath:/opt/dynatrace/oneagent/agent/bin/1.335.58.20260423-145051/linux-x86-64/liboneagentjava.so=loglevelcon=none,datastorage=/var/lib/dynatrace/oneagent/datastorage,logdir=/var/log/dynatrace/oneagent com.voestalpine.lb.core.ServerBoot",
                    "process.executable.path": "/usr/lib/jvm/java-17-amazon-corretto/bin/java",
                    "process.pid": "800300",
                    "process.runtime.description": "Amazon.com Inc. OpenJDK 64-Bit Server VM 17.0.17+10-LTS",
                    "process.runtime.name": "OpenJDK Runtime Environment",
                    "process.runtime.version": "17.0.17+10-LTS",
                    "region": "eu",
                    "server.address": "oraldap.vastahl.net",
                    "server.port": "389",
                    "service.instance.id": "167a15d3-be4c-4c38-9f2c-1f8248e2f835",
                    "service.name": "lb-MuSI-default-VPX_SQM-vpx",
                    "span.events": [
                      {
                        "exception.id": "bb8c28a5a836fab2",
                        "exception.message": "ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\n",
                        "exception.stack_trace": "java.sql.SQLIntegrityConstraintViolationException: ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\n\n\tat oracle.jdbc.driver.T4CTTIoer11.processError(T4CTTIoer11.java:630)\n\tat oracle.jdbc.driver.T4CTTIoer11.processError(T4CTTIoer11.java:564)\n\tat oracle.jdbc.driver.T4C8Oall.processError(T4C8Oall.java:1231)\n\tat oracle.jdbc.driver.T4CTTIfun.receive(T4CTTIfun.java:772)\n\tat oracle.jdbc.driver.T4CTTIfun.doRPC(T4CTTIfun.java:299)\n\tat oracle.jdbc.driver.T4C8Oall.doOALL(T4C8Oall.java:512)\n\tat oracle.jdbc.driver.T4CPreparedStatement.doOall8(T4CPreparedStatement.java:163)\n\tat oracle.jdbc.driver.T4CPreparedStatement.executeForRows(T4CPreparedStatement.java:1241)\n\tat oracle.jdbc.driver.OracleStatement.executeSQLStatement(OracleStatement.java:1820)\n\tat oracle.jdbc.driver.OracleStatement.doExecuteWithTimeout(OracleStatement.java:1472)\n\tat oracle.jdbc.driver.OraclePreparedStatement.executeInternal(OraclePreparedStatement.java:3761)\n\tat oracle.jdbc.driver.OraclePreparedStatement.executeLargeUpdate(OraclePreparedStatement.java:4062)\n\tat oracle.jdbc.driver.OraclePreparedStatement.executeUpdate(OraclePreparedStatement.java:4037)\n\tat oracle.jdbc.driver.OraclePreparedStatementWrapper.executeUpdate(OraclePreparedStatementWrapper.java:996)\n\tat org.apache.commons.dbcp2.DelegatingPreparedStatement.executeUpdate(DelegatingPreparedStatement.java:136)\n\tat org.apache.commons.dbcp2.DelegatingPreparedStatement.executeUpdate(DelegatingPreparedStatement.java:136)\n\tat org.springframework.jdbc.core.JdbcTemplate.lambda$update$2(JdbcTemplate.java:965)\n\tat org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:651)\n\tat org.springframework.jdbc.core.JdbcTemplate.update(JdbcTemplate.java:960)\n\tat org.springframework.jdbc.core.JdbcTemplate.update(JdbcTemplate.java:981)\n\tat org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate.update(NamedParameterJdbcTemplate.java:328)\n\tat com.voestalpine.lb.service.jdbc.BaseJdbcService.executeUpdate(BaseJdbcService.java:68)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdateSqlStatement(UpdateService.java:47)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:29)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatement(UpdateService.java:88)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatements(UpdateService.java:71)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdateSqlStatement(UpdateService.java:54)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:29)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleMultiUpdateStatement(UpdateService.java:101)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:25)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatement(UpdateService.java:88)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatements(UpdateService.java:71)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdateSqlStatement(UpdateService.java:54)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:29)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleMultiUpdateStatement(UpdateService.java:101)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:25)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatement(UpdateService.java:88)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.handleSubStatements(UpdateService.java:71)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdateSqlStatement(UpdateService.java:54)\n\tat com.voestalpine.lb.service.jdbc.UpdateService.executeUpdate(UpdateService.java:29)\n\tat com.voestalpine.lb.service.jdbc.JdbcService.executeUpdate(JdbcService.java:51)\n\tat com.voestalpine.lb.integration.jdbc.GenericObjectToDBOutboundAdapterJavaConfig.handleMessage(GenericObjectToDBOutboundAdapterJavaConfig.java:23)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:272)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutput(AbstractMessageProducingHandler.java:457)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.doProduceOutput(AbstractMessageProducingHandler.java:325)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.produceOutput(AbstractMessageProducingHandler.java:268)\n\tat org.springframework.integration.handler.AbstractMessageProducingHandler.sendOutputs(AbstractMessageProducingHandler.java:232)\n\tat org.springframework.integration.handler.AbstractReplyProducingMessageHandler.handleMessageInternal(AbstractReplyProducingMessageHandler.java:142)\n\tat org.springframework.integration.handler.AbstractMessageHandler.handleMessage(AbstractMessageHandler.java:56)\n\tat org.springframework.integration.dispatcher.AbstractDispatcher.tryOptimizedDispatch(AbstractDispatcher.java:115)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.doDispatch(UnicastingDispatcher.java:133)\n\tat org.springframework.integration.dispatcher.UnicastingDispatcher.dispatch(UnicastingDispatcher.java:106)\n\tat org.springframework.integration.channel.AbstractSubscribableChannel.doSend(AbstractSubscribableChannel.java:72)\n\tat org.springframework.integration.channel.AbstractMessageChannel.send(AbstractMessageChannel.java:317)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:187)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:166)\n\tat org.springframework.messaging.core.GenericMessagingTemplate.doSend(GenericMessagingTemplate.java:47)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.send(AbstractMessageSendingTemplate.java:109)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.convertAndSend(AbstractMessageSendingTemplate.java:151)\n\tat org.springframework.messaging.core.AbstractMessageSendingTemplate.convertAndSend(AbstractMessageSendingTemplate.java:143)\n\tat org.springframework.integration.gateway.MessagingGatewaySupport.send(MessagingGatewaySupport.java:429)\n\tat org.springframework.integration.jms.ChannelPublishingJmsMessageListener$GatewayDelegate.send(ChannelPublishingJmsMessageListener.java:509)\n\tat org.springframework.integration.jms.ChannelPublishingJmsMessageListener.onMessage(ChannelPublishingJmsMessageListener.java:345)\n\tat org.springframework.jms.listener.AbstractMessageListenerContainer.doInvokeListener(AbstractMessageListenerContainer.java:736)\n\tat org.springframework.jms.listener.AbstractMessageListenerContainer.invokeListener(AbstractMessageListenerContainer.java:696)\n\tat org.springframework.jms.listener.AbstractMessageListenerContainer.doExecuteListener(AbstractMessageListenerContainer.java:674)\n\tat org.springframework.jms.listener.AbstractPollingMessageListenerContainer.doReceiveAndExecute(AbstractPollingMessageListenerContainer.java:331)\n\tat org.springframework.jms.listener.AbstractPollingMessageListenerContainer.receiveAndExecute(AbstractPollingMessageListenerContainer.java:246)\n\tat org.springframework.jms.listener.DefaultMessageListenerContainer$AsyncMessageListenerInvoker.invokeListener(DefaultMessageListenerContainer.java:1237)\n\tat org.springframework.jms.listener.DefaultMessageListenerContainer$AsyncMessageListenerInvoker.executeOngoingLoop(DefaultMessageListenerContainer.java:1227)\n\tat org.springframework.jms.listener.DefaultMessageListenerContainer$AsyncMessageListenerInvoker.run(DefaultMessageListenerContainer.java:1120)\n\tat java.base/java.lang.Thread.run(Thread.java:840)\nCaused by: Error : 1, Position : 0, Sql = INSERT INTO QW_XFTABDLPAR ( /*  1 */ TRANS_ID, /*  2 */ SENDEZEIT, /*  3 */ BDLKEY_QUELLE, /*  4 */ PARAMSTRUKT, /*  5 */ PARAMKTXT, /*  6 */ WERTECODE, /*  7 */ SOLL_IST_KZ, /*  8 */ ZAEHLER, /*  9 */ KONTEXT, /* 10 */ HERKUNFT, /* 11 */ ERMITTLUNGS_KZ, /* 12 */ FIXIERUNGS_KZ, /* 13 */ ERSTELLDATUM, /* 14 */ ERSTELLER, /* 15 */ AENDERUNGSDATUM, /* 16 */ AENDERER, /* 17 */ DATENTYP_KZ, /* 18 */ WERT ) VALUES ( /*  1 */ :1 , /*  2 */ :2 , /*  3 */ :3 , /*  4 */ :4 , /*  5 */ :5 , /*  6 */ :6 , /*  7 */ :7 , /*  8 */ :8 , /*  9 */ :9 , /* 10 */ :10 , /* 11 */ :11 , /* 12 */ :12 , /* 13 */ :13 , /* 14 */ :14 , /* 15 */ :15 , /* 16 */ :16 , /* 17 */ :17 , /* 18 */ :18  ), OriginalSql = INSERT INTO QW_XFTABDLPAR ( /*  1 */ TRANS_ID, /*  2 */ SENDEZEIT, /*  3 */ BDLKEY_QUELLE, /*  4 */ PARAMSTRUKT, /*  5 */ PARAMKTXT, /*  6 */ WERTECODE, /*  7 */ SOLL_IST_KZ, /*  8 */ ZAEHLER, /*  9 */ KONTEXT, /* 10 */ HERKUNFT, /* 11 */ ERMITTLUNGS_KZ, /* 12 */ FIXIERUNGS_KZ, /* 13 */ ERSTELLDATUM, /* 14 */ ERSTELLER, /* 15 */ AENDERUNGSDATUM, /* 16 */ AENDERER, /* 17 */ DATENTYP_KZ, /* 18 */ WERT ) VALUES ( /*  1 */ ?, /*  2 */ ?, /*  3 */ ?, /*  4 */ ?, /*  5 */ ?, /*  6 */ ?, /*  7 */ ?, /*  8 */ ?, /*  9 */ ?, /* 10 */ ?, /* 11 */ ?, /* 12 */ ?, /* 13 */ ?, /* 14 */ ?, /* 15 */ ?, /* 16 */ ?, /* 17 */ ?, /* 18 */ ? ), Error Msg = ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\n\n\tat oracle.jdbc.driver.T4CTTIoer11.processError(T4CTTIoer11.java:637)\n\t... 368 more\n",
                        "exception.type": "java.sql.SQLIntegrityConstraintViolationException",
                        "span_event.name": "exception",
                        "timestamp": "2026-04-30T18:51:03.991985668+02:00"
                      }
                    ],
                    "span.id": "d8b5a53eb02126a4",
                    "span.kind": "client",
                    "span.name": "INSERT hqds_qpqw,cn=oraclecontext,dc=world.QW_XFTABDLPAR",
                    "span.parent_id": "e339b2f33e91638d",
                    "span.status_code": "error",
                    "start_time": "2026-04-30T18:51:03.989986758+02:00",
                    "team": "2217_BSP",
                    "telemetry.distro.name": "opentelemetry-java-instrumentation",
                    "telemetry.distro.version": "2.26.1",
                    "telemetry.sdk.language": "java",
                    "telemetry.sdk.name": "opentelemetry",
                    "telemetry.sdk.version": "1.60.1",
                    "thread.id": "1281051",
                    "thread.name": "flow.org.springframework.jms.listener.DefaultMessageListenerContainer#0-92",
                    "trace.id": "11f9b9b043f651708fcc5e3018f5a83d"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "db.name": {
                        "type": "string"
                      },
                      "db.operation": {
                        "type": "string"
                      },
                      "db.sql.table": {
                        "type": "string"
                      },
                      "db.statement": {
                        "type": "string"
                      },
                      "db.system": {
                        "type": "string"
                      },
                      "deployment.environment": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.service": {
                        "type": "string"
                      },
                      "dt.ingest.size": {
                        "type": "long"
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
                      "dt.retain.size": {
                        "type": "long"
                      },
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.service.name": {
                        "type": "string"
                      },
                      "dt.smartscape.service": {
                        "type": "smartscape_id"
                      },
                      "duration": {
                        "type": "duration"
                      },
                      "end_time": {
                        "type": "timestamp"
                      },
                      "host.arch": {
                        "type": "string"
                      },
                      "host.name": {
                        "type": "string"
                      },
                      "os.description": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "otel.scope.name": {
                        "type": "string"
                      },
                      "otel.scope.version": {
                        "type": "string"
                      },
                      "process.command_line": {
                        "type": "string"
                      },
                      "process.executable.path": {
                        "type": "string"
                      },
                      "process.pid": {
                        "type": "long"
                      },
                      "process.runtime.description": {
                        "type": "string"
                      },
                      "process.runtime.name": {
                        "type": "string"
                      },
                      "process.runtime.version": {
                        "type": "string"
                      },
                      "region": {
                        "type": "string"
                      },
                      "server.address": {
                        "type": "string"
                      },
                      "server.port": {
                        "type": "long"
                      },
                      "service.instance.id": {
                        "type": "string"
                      },
                      "service.name": {
                        "type": "string"
                      },
                      "span.events": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "exception.id": {
                                        "type": "uid"
                                      },
                                      "exception.message": {
                                        "type": "string"
                                      },
                                      "exception.stack_trace": {
                                        "type": "string"
                                      },
                                      "exception.type": {
                                        "type": "string"
                                      },
                                      "span_event.name": {
                                        "type": "string"
                                      },
                                      "timestamp": {
                                        "type": "timestamp"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "span.id": {
                        "type": "uid"
                      },
                      "span.kind": {
                        "type": "string"
                      },
                      "span.name": {
                        "type": "string"
                      },
                      "span.parent_id": {
                        "type": "uid"
                      },
                      "span.status_code": {
                        "type": "string"
                      },
                      "start_time": {
                        "type": "timestamp"
                      },
                      "team": {
                        "type": "string"
                      },
                      "telemetry.distro.name": {
                        "type": "string"
                      },
                      "telemetry.distro.version": {
                        "type": "string"
                      },
                      "telemetry.sdk.language": {
                        "type": "string"
                      },
                      "telemetry.sdk.name": {
                        "type": "string"
                      },
                      "telemetry.sdk.version": {
                        "type": "string"
                      },
                      "thread.id": {
                        "type": "long"
                      },
                      "thread.name": {
                        "type": "string"
                      },
                      "trace.id": {
                        "type": "uid"
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
                    "disableRemoval": true,
                    "fields": [
                      "content"
                    ],
                    "id": 1777376636806,
                    "value": "log-content"
                  }
                ],
                "columnWidths": {
                  "[\"trace.id\"]": 252.8
                },
                "hiddenColumns": [
                  [
                    "process.command_line"
                  ],
                  [
                    "db.statement"
                  ],
                  [
                    "dt.ingest.size"
                  ],
                  [
                    "dt.retain.size"
                  ]
                ],
                "hideColumnsForLargeResults": false
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 601,
          "id": "b30ebeaf-be79-4dd9-9499-b1c9657b458a",
          "previousFilterSegments": [],
          "previousQueryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "logs",
                "filter": "dt.security_context = TPI_Messaging ",
                "id": "A",
                "isEnabled": true,
                "summarize": {
                  "aggregator": "count",
                  "fields": [
                    "log.source",
                    "host.name",
                    "dt.openpipeline.source"
                  ]
                }
              }
            ],
            "version": 20
          },
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "datatype": "logs",
                "filter": "dt.security_context = TPI_Messaging ",
                "id": "A",
                "isEnabled": true,
                "summarize": {
                  "aggregator": "count",
                  "fields": [
                    "log.source",
                    "host.name",
                    "dt.openpipeline.source"
                  ]
                }
              }
            ],
            "version": 20
          },
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
              "value": "fetch logs\n| filter matchesValue(dt.security_context, \"TPI_Messaging\")\n| summarize count = count(), by: { log.source, host.name, dt.openpipeline.source }"
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
              "dateTime": "2026-04-28T11:54:29.522Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch logs\n| filter matchesValue(dt.security_context, \"TPI_Messaging\")\n| summarize count = count(), by: { log.source, host.name, dt.openpipeline.source }"
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
                      "end": "2026-04-28T11:54:27.524000000Z",
                      "start": "2026-04-28T09:54:27.524000000Z"
                    },
                    "canonicalQuery": "fetch logs\n| filter matchesValue(dt.security_context, \"TPI_Messaging\")\n| summarize by:{log.source, host.name, dt.openpipeline.source}, count = count()",
                    "contributions": {
                      "buckets": [
                        {
                          "matchedRecordsRatio": 1,
                          "name": "tpi_messaging_logs",
                          "scannedBytes": 20813188658,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "hpm_vmes_logs",
                          "scannedBytes": 87128,
                          "table": "logs"
                        }
                      ]
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 1285,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch logs\n| filter matchesValue(dt.security_context, \"TPI_Messaging\")\n| summarize count = count(), by: { log.source, host.name, dt.openpipeline.source }",
                    "queryId": "3a165b7e-ff22-42f2-9954-0254a4dc66e8",
                    "sampled": false,
                    "scannedBytes": 20813275786,
                    "scannedDataPoints": 0,
                    "scannedRecords": 18588926,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "count": "9334",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/HSQLDB/SQMQuartz.log"
                  },
                  {
                    "count": "3026",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/Quartz#_%d.log"
                  },
                  {
                    "count": "264",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrmqRead_ABWERT.log"
                  },
                  {
                    "count": "264",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrmqRead_ANALYSEN.log"
                  },
                  {
                    "count": "264",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrmqRead_DynatraceTEST_HBDE.log"
                  },
                  {
                    "count": "264",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrmqRead_MEISTDAT.log"
                  },
                  {
                    "count": "271",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrmqSend_QTINKR.log"
                  },
                  {
                    "count": "14",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TGrsp_DelAusbuf.log"
                  },
                  {
                    "count": "8277280",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TTIR_D#_#.log"
                  },
                  {
                    "count": "8922824",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TTIR_QW_#.log"
                  },
                  {
                    "count": "3440",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TTIR_ST_#.log"
                  },
                  {
                    "count": "4406",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/log/TTIS_D#_S#.log"
                  },
                  {
                    "count": "8",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/TGRuntime/temp/TGrmqRead_HBDE-Errors.log"
                  },
                  {
                    "count": "8212",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/sqmdel2/log/Converter.log"
                  },
                  {
                    "count": "140",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/sqmdel2/log/PrimDatAnf-stderr.log"
                  },
                  {
                    "count": "865",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/sqmdel2/log/XmlPrimDatAnf-stdout.log"
                  },
                  {
                    "count": "22966",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/appl/vacoms/shovel/log/shovel.log"
                  },
                  {
                    "count": "158",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "VADSLB03.voestalpine.root.local",
                    "log.source": "/log/lb-server_MuSI-default-VPX_SQM.log"
                  },
                  {
                    "count": "99",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "VADSLB03.voestalpine.root.local",
                    "log.source": "/log/lb-server_MuSI-default-VPX_VERSAND-vpx.log"
                  },
                  {
                    "count": "6",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/commvault/Log_Files/cvfwd.log"
                  },
                  {
                    "count": "4",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/commvault/Log_Files/cvfwd.log"
                  },
                  {
                    "count": "5",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadslb01.voestalpine.root.local",
                    "log.source": "/var/log/commvault/Log_Files/cvfwd.log"
                  },
                  {
                    "count": "125",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "127",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "VADSLB03.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "1797",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "986",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "1006",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadslb01.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "1004",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadslb02.voestalpine.root.local",
                    "log.source": "/var/log/messages"
                  },
                  {
                    "count": "82",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender.log"
                  },
                  {
                    "count": "597",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender.log"
                  },
                  {
                    "count": "387",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender.log"
                  },
                  {
                    "count": "380",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core.log"
                  },
                  {
                    "count": "616",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core.log"
                  },
                  {
                    "count": "619",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core.log"
                  },
                  {
                    "count": "11",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core_err.log"
                  },
                  {
                    "count": "964",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core_err.log"
                  },
                  {
                    "count": "552",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_core_err.log"
                  },
                  {
                    "count": "3153",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise.log"
                  },
                  {
                    "count": "1016",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise.log"
                  },
                  {
                    "count": "1261",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise.log"
                  },
                  {
                    "count": "940",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise_err.log"
                  },
                  {
                    "count": "414",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise_err.log"
                  },
                  {
                    "count": "403",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_enterprise_err.log"
                  },
                  {
                    "count": "21",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_err.log"
                  },
                  {
                    "count": "453",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_err.log"
                  },
                  {
                    "count": "205",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_err.log"
                  },
                  {
                    "count": "224",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_mplog.log"
                  },
                  {
                    "count": "1170",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_mplog.log"
                  },
                  {
                    "count": "1181",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/microsoft/mdatp/microsoft_defender_mplog.log"
                  },
                  {
                    "count": "1039",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": "/var/log/rabbitmq/rabbit@2217sqmserv#.log"
                  },
                  {
                    "count": "978",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms01.voestalpine.root.local",
                    "log.source": "/var/log/sssd/ldap_child.log"
                  },
                  {
                    "count": "934",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadsjms02.voestalpine.root.local",
                    "log.source": "/var/log/sssd/ldap_child.log"
                  },
                  {
                    "count": "957",
                    "dt.openpipeline.source": "oneagent",
                    "host.name": "vadslb02.voestalpine.root.local",
                    "log.source": "/var/log/sssd/ldap_child.log"
                  },
                  {
                    "count": "264",
                    "dt.openpipeline.source": "/api/v2/otlp/v1/logs",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "log.source": null
                  },
                  {
                    "count": "159",
                    "dt.openpipeline.source": "/api/v2/otlp/v1/logs",
                    "host.name": "VADSLB03.voestalpine.root.local",
                    "log.source": null
                  },
                  {
                    "count": "136081",
                    "dt.openpipeline.source": "/api/v2/otlp/v1/logs",
                    "host.name": "vadslb01.voestalpine.root.local",
                    "log.source": null
                  },
                  {
                    "count": "714",
                    "dt.openpipeline.source": "/api/v2/otlp/v1/logs",
                    "host.name": "vadslb02.voestalpine.root.local",
                    "log.source": null
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      56
                    ],
                    "mappings": {
                      "count": {
                        "type": "long"
                      },
                      "dt.openpipeline.source": {
                        "type": "string"
                      },
                      "host.name": {
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
                "columnTypeOverrides": [
                  {
                    "disableRemoval": true,
                    "fields": [
                      "content"
                    ],
                    "id": 1777376695496,
                    "value": "log-content"
                  }
                ],
                "columnWidths": {
                  "[\"count\"]": 133.8
                },
                "hideColumnsForLargeResults": true
              }
            }
          },
          "title": "Explore logs",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "ff1a9c43-501e-445f-ad55-28ec5d5b8fe8",
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
              "value": "timeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName = \"Messages delivered\", dt.security_context"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 400,
              "dateTime": "2026-05-19T05:45:30.052Z",
              "error": "The field dt.security_context doesn't exist.",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName = \"Messages delivered\", dt.security_context"
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
                "error": {
                  "code": 400,
                  "details": {
                    "arguments": [
                      "dt.security_context"
                    ],
                    "errorMessage": "The field dt.security_context doesn't exist.",
                    "errorMessageFormat": "The field %1$s doesn't exist.",
                    "errorMessageFormatSpecifierTypes": [
                      "FIELD_NAME"
                    ],
                    "errorType": "FIELD_DOES_NOT_EXIST",
                    "exceptionType": "DQL-RESULT_TYPE",
                    "queryId": "db36ad9e-5a30-4049-8fc3-9d6d7bd21eec",
                    "queryString": "timeseries SNMPpacketsIn=avg(`com.dynatrace.extension.snmp-generic-device.snmp.in.pkts.count`),\n           filter: {`dt.entity.snmp:com_dynatrace_extension_snmp_generic_device` == \"CUSTOM_DEVICE-459D8E027D425254\"}\n | fieldsAdd metricName = \"Messages delivered\", dt.security_context",
                    "syntaxErrorPosition": {
                      "end": {
                        "column": 67,
                        "index": 280,
                        "line": 3
                      },
                      "start": {
                        "column": 49,
                        "index": 262,
                        "line": 3
                      }
                    }
                  },
                  "message": "FIELD_DOES_NOT_EXIST"
                }
              }
            },
            "state": "error",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {}
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "8b6b0c18-d5de-4360-bc3d-15589f860d40",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"pipeline_Nedcon_Spans_3153\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-05-20T10:48:47.515Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"pipeline_Nedcon_Spans_3153\"}, from: -30m, to: -1m"
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
                      "end": "2026-05-20T10:48:00.000000000Z",
                      "start": "2026-05-20T10:18:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"metrics\" AND pipeline_id == \"pipeline_Nedcon_Spans_3153\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "executionTimeMilliseconds": 28,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"pipeline_Nedcon_Spans_3153\"}, from: -30m, to: -1m",
                    "queryId": "eb28ba31-e7ac-4b80-9841-063d70a28f85",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 90,
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
                      8216,
                      8262,
                      8245,
                      8271,
                      8261,
                      8314,
                      8297,
                      8328,
                      8301,
                      8435,
                      8228,
                      8267,
                      8276,
                      8233,
                      8252,
                      8261,
                      8330,
                      8317,
                      8254,
                      8369,
                      8224,
                      8304,
                      8276,
                      8268,
                      8241,
                      8241,
                      8299,
                      8339,
                      8302,
                      8375
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "pipeline_Nedcon_Spans_3153",
                    "timeframe": {
                      "end": "2026-05-20T12:48:00.000000000+02:00",
                      "start": "2026-05-20T12:18:00.000000000+02:00"
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
          "title": "Records over time of Metrics for Nedcon Metrics",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "98464070-d3dc-4357-a266-8fc5fb7f6d2b",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\"}, from: -3h, to: -1m"
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
              "dateTime": "2026-05-20T10:59:02.647Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\"}, from: -3h, to: -1m"
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
                      "end": "2026-05-20T10:59:00.000000000Z",
                      "start": "2026-05-20T07:59:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-3h, to:-1m, by:{configuration, route_name}, filter:configuration == \"metrics\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "executionTimeMilliseconds": 23,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\"}, from: -3h, to: -1m",
                    "queryId": "c4c61f37-229f-4f07-aa3c-47087eb03082",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 1514,
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
                      66,
                      72,
                      72,
                      69,
                      75,
                      72,
                      72,
                      72,
                      69,
                      72,
                      69,
                      72,
                      72,
                      66,
                      66,
                      72,
                      66,
                      63,
                      66,
                      63,
                      66,
                      69,
                      66,
                      66,
                      66,
                      69,
                      78,
                      435,
                      349,
                      114,
                      69,
                      69,
                      69,
                      69,
                      72,
                      69,
                      66,
                      72,
                      66,
                      69,
                      66,
                      72,
                      66,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      66,
                      63,
                      69,
                      69,
                      69,
                      72,
                      422,
                      342,
                      146,
                      72,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      69,
                      72,
                      72,
                      69,
                      66,
                      69,
                      66,
                      69,
                      66,
                      66,
                      69,
                      69,
                      72,
                      66,
                      72,
                      69,
                      69,
                      66,
                      92,
                      435,
                      348,
                      107,
                      69,
                      69,
                      69,
                      66,
                      69,
                      66,
                      69,
                      66,
                      69,
                      69,
                      66,
                      69,
                      69,
                      69,
                      66,
                      69,
                      66,
                      72,
                      72,
                      66,
                      69,
                      72,
                      66,
                      66,
                      66,
                      69,
                      69,
                      385,
                      378,
                      155,
                      72,
                      69,
                      66,
                      69,
                      69,
                      69,
                      69,
                      69,
                      72,
                      72,
                      72,
                      69,
                      69,
                      69,
                      69,
                      69,
                      72,
                      69,
                      66,
                      69,
                      69,
                      69,
                      69,
                      72,
                      72,
                      66,
                      66,
                      461,
                      366,
                      91,
                      72,
                      66,
                      69,
                      72,
                      63,
                      69,
                      72,
                      72,
                      69,
                      72,
                      69,
                      69,
                      66,
                      66,
                      69,
                      69,
                      69,
                      66,
                      69,
                      60,
                      69,
                      69,
                      72,
                      66,
                      63,
                      63,
                      72,
                      468,
                      358,
                      0
                    ],
                    "interval": "60000000000",
                    "route_name": "HPM_VMES_Test",
                    "timeframe": {
                      "end": "2026-05-20T12:59:00.000000000+02:00",
                      "start": "2026-05-20T09:59:00.000000000+02:00"
                    }
                  },
                  {
                    "configuration": "metrics",
                    "datapoints": [
                      16069,
                      16078,
                      16026,
                      16001,
                      16028,
                      16105,
                      16084,
                      16059,
                      16159,
                      16031,
                      16025,
                      16008,
                      16010,
                      16000,
                      15976,
                      16097,
                      16108,
                      16050,
                      16136,
                      15989,
                      16002,
                      16068,
                      16027,
                      15951,
                      16047,
                      16148,
                      16144,
                      16044,
                      16164,
                      16034,
                      16013,
                      16029,
                      15981,
                      15971,
                      15971,
                      16063,
                      16075,
                      16039,
                      16112,
                      15975,
                      16015,
                      16050,
                      16014,
                      15975,
                      15983,
                      16098,
                      16083,
                      16062,
                      16109,
                      16000,
                      15986,
                      15993,
                      16013,
                      15987,
                      15988,
                      16081,
                      16100,
                      16017,
                      16128,
                      15991,
                      15998,
                      16057,
                      15999,
                      15967,
                      16002,
                      16077,
                      16052,
                      16052,
                      16121,
                      16012,
                      16010,
                      16031,
                      16024,
                      15993,
                      15978,
                      16057,
                      16085,
                      16049,
                      16118,
                      15996,
                      16005,
                      16035,
                      16035,
                      15967,
                      16031,
                      16132,
                      16137,
                      8325,
                      8413,
                      8272,
                      8286,
                      8267,
                      8263,
                      8226,
                      8228,
                      8304,
                      8354,
                      8288,
                      8383,
                      8251,
                      8279,
                      8283,
                      8279,
                      8242,
                      8303,
                      8331,
                      8387,
                      8304,
                      8362,
                      8256,
                      8231,
                      8269,
                      8236,
                      8214,
                      8234,
                      8303,
                      8567,
                      8271,
                      8140,
                      8242,
                      8291,
                      8299,
                      8481,
                      8205,
                      8244,
                      8271,
                      8045,
                      8311,
                      8382,
                      8271,
                      8512,
                      8224,
                      8244,
                      8259,
                      7979,
                      8292,
                      8571,
                      8271,
                      8409,
                      8216,
                      8262,
                      8245,
                      8271,
                      8261,
                      8314,
                      8297,
                      8328,
                      8301,
                      8435,
                      8228,
                      8267,
                      8276,
                      8233,
                      8252,
                      8261,
                      8330,
                      8317,
                      8254,
                      8369,
                      8224,
                      8304,
                      8276,
                      8268,
                      8241,
                      8241,
                      8299,
                      8339,
                      8302,
                      8375,
                      8239,
                      8274,
                      8274,
                      8258,
                      8269,
                      8292,
                      8350,
                      8360,
                      8302,
                      8447,
                      0
                    ],
                    "interval": "60000000000",
                    "route_name": "Nedcon POC",
                    "timeframe": {
                      "end": "2026-05-20T12:59:00.000000000+02:00",
                      "start": "2026-05-20T09:59:00.000000000+02:00"
                    }
                  },
                  {
                    "configuration": "metrics",
                    "datapoints": [
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
                      0,
                      0,
                      7755,
                      7757,
                      7755,
                      7755,
                      7755,
                      7755,
                      7754,
                      7755,
                      7733,
                      0
                    ],
                    "interval": "60000000000",
                    "route_name": "Network POC",
                    "timeframe": {
                      "end": "2026-05-20T12:59:00.000000000+02:00",
                      "start": "2026-05-20T09:59:00.000000000+02:00"
                    }
                  },
                  {
                    "configuration": "metrics",
                    "datapoints": [
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      9,
                      0
                    ],
                    "interval": "60000000000",
                    "route_name": "TPI Messaging",
                    "timeframe": {
                      "end": "2026-05-20T12:59:00.000000000+02:00",
                      "start": "2026-05-20T09:59:00.000000000+02:00"
                    }
                  },
                  {
                    "configuration": "metrics",
                    "datapoints": [
                      36,
                      36,
                      444,
                      36,
                      36,
                      36,
                      44,
                      444,
                      36,
                      36,
                      36,
                      36,
                      444,
                      36,
                      36,
                      36,
                      36,
                      444,
                      36,
                      36,
                      36,
                      44,
                      445,
                      36,
                      36,
                      36,
                      36,
                      445,
                      36,
                      36,
                      36,
                      36,
                      446,
                      36,
                      36,
                      36,
                      44,
                      442,
                      36,
                      36,
                      36,
                      36,
                      444,
                      36,
                      36,
                      36,
                      36,
                      443,
                      36,
                      36,
                      36,
                      44,
                      442,
                      36,
                      36,
                      36,
                      36,
                      447,
                      36,
                      36,
                      36,
                      36,
                      447,
                      36,
                      36,
                      36,
                      44,
                      445,
                      36,
                      36,
                      36,
                      36,
                      443,
                      36,
                      36,
                      36,
                      36,
                      445,
                      36,
                      36,
                      36,
                      44,
                      446,
                      36,
                      36,
                      36,
                      36,
                      443,
                      36,
                      36,
                      36,
                      36,
                      441,
                      36,
                      36,
                      36,
                      44,
                      442,
                      36,
                      36,
                      36,
                      36,
                      442,
                      36,
                      36,
                      36,
                      36,
                      445,
                      36,
                      36,
                      36,
                      44,
                      443,
                      36,
                      36,
                      36,
                      36,
                      442,
                      36,
                      36,
                      36,
                      36,
                      443,
                      36,
                      36,
                      36,
                      44,
                      444,
                      36,
                      36,
                      36,
                      36,
                      444,
                      36,
                      36,
                      36,
                      36,
                      446,
                      36,
                      36,
                      36,
                      1594,
                      8197,
                      7790,
                      7790,
                      7790,
                      7790,
                      8174,
                      7791,
                      7791,
                      7791,
                      7747,
                      8198,
                      7788,
                      7791,
                      7790,
                      7798,
                      8199,
                      7789,
                      7791,
                      7790,
                      7792,
                      8196,
                      7788,
                      7790,
                      7791,
                      7791,
                      8197,
                      7791,
                      7791,
                      36,
                      44,
                      442,
                      36,
                      36,
                      36,
                      36,
                      445,
                      36,
                      0
                    ],
                    "interval": "60000000000",
                    "route_name": "default",
                    "timeframe": {
                      "end": "2026-05-20T12:59:00.000000000+02:00",
                      "start": "2026-05-20T09:59:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      4
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
                              179
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
                      "route_name": {
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
          "title": "Records over time for default",
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
