resource "dynatrace_document" "Smartscape_Troubleshooting_1" {
  name    = "Smartscape Troubleshooting"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-7d",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 223,
          "id": "a1f22ec5-c6eb-4d78-a37e-8a5b464504dd",
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "smartscapeNodes \"*\"\n|summarize count(), by:{type}"
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
              "dateTime": "2026-04-22T06:21:36.948Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "smartscapeNodes \"*\"\n|summarize count(), by:{type}"
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
                      "end": "2026-04-22T06:21:35.945000000Z",
                      "start": "2026-04-21T06:21:35.945000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes \"*\"\n| summarize by:{type}, count()",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 17,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes \"*\"\n|summarize count(), by:{type}",
                    "queryId": "d88077df-0b18-4a36-9626-ab950de46da8",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 174,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "count()": "17",
                    "type": "DISK"
                  },
                  {
                    "count()": "4",
                    "type": "HOST"
                  },
                  {
                    "count()": "7",
                    "type": "NETWORK_INTERFACE"
                  },
                  {
                    "count()": "4",
                    "type": "ONEAGENT"
                  },
                  {
                    "count()": "128",
                    "type": "PROCESS"
                  },
                  {
                    "count()": "13",
                    "type": "SERVICE"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      5
                    ],
                    "mappings": {
                      "count()": {
                        "type": "long"
                      },
                      "type": {
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
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 326,
          "id": "4eccd660-7bae-418c-803c-bcd92dc61d6e",
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "smartscapeNodes \"PROCESS\"\n"
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
              "dateTime": "2026-04-22T06:44:17.702Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "smartscapeNodes \"PROCESS\"\n"
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
                      "end": "2026-04-22T06:44:17.169000000Z",
                      "start": "2026-04-21T06:44:17.169000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes \"PROCESS\"",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 18,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes \"PROCESS\"\n",
                    "queryId": "ac098610-251b-4cfa-9eff-38472ee2c560",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 129,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "csc.exe",
                    "dt.process_group.id": "PROCESS_GROUP-823C1BB64545AD61",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-004EC72C0DBC3586",
                    "id_classic": "PROCESS_GROUP_INSTANCE-004EC72C0DBC3586",
                    "lifetime": {
                      "end": "2026-04-22T04:02:00.000000000+02:00",
                      "start": "2026-04-09T07:46:00.000000000+02:00"
                    },
                    "name": "csc.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\csc.exe /noconfig /fullpaths @C:\\WINDOWS\\SystemTemp\\ge2xoqdw\\ge2xoqdw.cmdline",
                      "EXE_NAME": "csc.exe",
                      "EXE_PATH": "C:\\WINDOWS\\MICROSOFT.NET\\FRAMEWORK*\\V*\\CSC.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.RoslynCodeAnalysisService*.exe",
                    "dt.process_group.id": "PROCESS_GROUP-4B3B52CC12FE9BFC",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-02D90F1AB5B46346",
                    "id_classic": "PROCESS_GROUP_INSTANCE-02D90F1AB5B46346",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.RoslynCodeAnalysisService*.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.x86\\ServiceHub.RoslynCodeAnalysisService32.exe desktopClr.x86$RoslynCodeAnalysisService32$$VS\\ (10660)\\ (1) 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.RoslynCodeAnalysisService*.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.X*\\SERVICEHUB.ROSLYNCODEANALYSISSERVICE*.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      },
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.tti.TTIReceive",
                    "dt.process_group.id": "PROCESS_GROUP-ED41B15DE813EB3A",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-12EBDBA5DF884EE9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-12EBDBA5DF884EE9",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-09T14:52:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.tti.TTIReceive",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaQW_002 -Xbatch -Dlog4j2.configurationFile=/appl/TGRuntime/bin/log4j2.properties -DlogFilename=TTIR_QW_002 -Xmx200m -Xms40m -XX:OnOutOfMemoryError=/appl/TGRuntime/bin/LogOoMError.sh\\ TTI\\ QW_002 -DAPP_ID=QW_002 -Djava.security.egd=file:/dev/../dev/urandom -Djava.library.path=/etc/vacoms/vacoms -DDBTreiber=oracle.jdbc.driver.OracleDriver -Dthin=jdbc:oracle:thin:@//2217dboracs08t:1521/QSTG -classpath /appl/TGRuntime/java/lib/ojdbc8-12.2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.mail-2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.activation-2.0.1.jar:/appl/TGRuntime/java/lib/log4j-core-2.20.0.jar:/appl/TGRuntime/java/lib/log4j-api-2.20.0.jar:/appl/TGRuntime/java/lib/datedFileAppender-1.0.2.jar:/appl/TGRuntime/java/lib/jdom.jar:/appl/TGRuntime/java/lib/appinfoApi-2.0.1.jar:/appl/TGRuntime/java/lib/amqp-client-5.19.0.jar:/appl/TGRuntime/java/lib/slf4j-api-2.0.9.jar:/appl/TGRuntime/java/lib/log4j-slf4j2-impl-2.20.0.jar:/appl/TGRuntime/java/class/tti-2.0.3-all.jar com.voestalpine.tgsys.tti.TTIReceive TGRUN TGRUN QSTG QW\\ 002",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.tti.TTIReceive"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Erlang Port Mapper",
                    "dt.process_group.id": "PROCESS_GROUP-AEC00D4B8B17467E",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-162C678E69AB31AE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-162C678E69AB31AE",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "Erlang Port Mapper",
                    "port": [
                      "4369"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib64/erlang/erts-15.2.7.7/bin/epmd -daemon",
                      "EXE_NAME": "epmd",
                      "EXE_PATH": "/usr/lib64/erlang/erts-15.2.7.7/bin/epmd",
                      "OSAGENT_GROUPID_NAME": "Erlang Port Mapper",
                      "OSAGENT_INSTANCEID_NAME": "Erlang Port Mapper /"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "fsi.exe",
                    "dt.process_group.id": "PROCESS_GROUP-F687B87AE80F9B1F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-17567FD5EE3E5BFE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-17567FD5EE3E5BFE",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "fsi.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\CommonExtensions\\Microsoft\\FSharp\\fsi.exe --fsi-server-output-codepage:65001 --fsi-server-input-codepage:65001 --fsi-server-lcid:1033 --fsi-server:FSIChannel_10660_96417968_2044664349 --optimize --shadowcopyreferences+",
                      "EXE_NAME": "fsi.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\COMMONEXTENSIONS\\MICROSOFT\\FSHARP\\FSI.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "index.js",
                    "dt.process_group.id": "PROCESS_GROUP-3DFED2BF7E277F4F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-1EBD63367674FD49",
                    "id_classic": "PROCESS_GROUP_INSTANCE-1EBD63367674FD49",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "index.js",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Web\\External\\node.exe vs-task-server\\index.js 2d27f0af76d4426e8ef3bda6c5d4d8b3 4 devenv.exe 10660",
                      "EXE_NAME": "Node.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\WEB\\EXTERNAL\\NODE.EXE",
                      "NODE_JS_SCRIPT_NAME": "C:/Program Files (x*)/Microsoft Visual Studio/*/Professional/Web/External/vs-task-server/index.js"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Node.js",
                        "type": "NODE_JS",
                        "version": "5.4.1"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.abnahmeportal.AbnahmeportalOdataService",
                    "dt.process_group.id": "PROCESS_GROUP-7303084D341933E2",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-241B97AC2B6E0A2C",
                    "id_classic": "PROCESS_GROUP_INSTANCE-241B97AC2B6E0A2C",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "/appl/gb/abnahmeportal-odata-service-1.0.0.jar",
                    "port": [
                      "12000"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "java -Dserver.port=12000 -jar /appl/gb/abnahmeportal-odata-service-1.0.0.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*.b*-*.el*_*.x*_*/jre/bin/java",
                      "JAVA_JAR_FILE": "abnahmeportal-odata-service-*.jar",
                      "JAVA_JAR_PATH": "/appl/gb/abnahmeportal-odata-service-*.jar",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.abnahmeportal.AbnahmeportalOdataService"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "vstest.console.exe",
                    "dt.process_group.id": "PROCESS_GROUP-012A07589C3AEB03",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-2D2F1CA074032101",
                    "id_classic": "PROCESS_GROUP_INSTANCE-2D2F1CA074032101",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "vstest.console.exe",
                    "port": [
                      "54926"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\PROGRAM\\ FILES\\ (X86)\\MICROSOFT\\ VISUAL\\ STUDIO\\2017\\PROFESSIONAL\\COMMON7\\IDE\\EXTENSIONS\\TESTPLATFORM\\vstest.console.exe /parentprocessid:10660 /port:54924",
                      "EXE_NAME": "vstest.console.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\EXTENSIONS\\TESTPLATFORM\\VSTEST.CONSOLE.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "typingsInstaller.js",
                    "dt.process_group.id": "PROCESS_GROUP-16177049800141F2",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-3554C1C08852C3F4",
                    "id_classic": "PROCESS_GROUP_INSTANCE-3554C1C08852C3F4",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "typingsInstaller.js",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Web\\External\\x86\\node.exe C:\\Program\\ Files\\ (x86)\\Microsoft\\ SDKs\\TypeScript\\2.5/typingsInstaller.js --globalTypingsCacheLocation C:/Users/U109307/AppData/Local/Microsoft/TypeScript/2.5 --typingSafeListLocation C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\CommonExtensions\\Microsoft\\TypeScript\\typingSafeList.json",
                      "EXE_NAME": "Node.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\WEB\\EXTERNAL\\X*\\NODE.EXE",
                      "NODE_JS_SCRIPT_NAME": "C:/Program Files (x*)/Microsoft SDKs/TypeScript/*/typingsInstaller.js"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Node.js",
                        "type": "NODE_JS",
                        "version": "5.4.1"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "tcpgate",
                    "dt.process_group.id": "PROCESS_GROUP-420BE9E5A5A23D89",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-4385F5EE85149293",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4385F5EE85149293",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "tcpgate",
                    "port": [
                      "9227"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "./tcpgate tcpgate.ini",
                      "EXE_NAME": "tcpgate",
                      "EXE_PATH": "/appl/vacoms/gateway/tcpgate"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent network monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-13C5CAC121EAF766",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-558A683BE97D340D",
                    "id_classic": "PROCESS_GROUP_INSTANCE-558A683BE97D340D",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:41:00.000000000+02:00"
                    },
                    "name": "OneAgent network monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentnetwork -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentnetwork_pipe_63260",
                      "EXE_NAME": "oneagentnetwork",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentnetwork",
                      "OSAGENT_GROUPID_NAME": "ruxit network monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit network monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Source StatsD",
                    "dt.process_group.id": "PROCESS_GROUP-FE8B717AC18157A3",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-5720F226F63E71DA",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5720F226F63E71DA",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:41:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Source StatsD",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd --dsid=statsd_0 --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=statsd_listener",
                      "EXE_NAME": "oneagentsourcestatsd",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd",
                      "PG_ID_CALC_INPUT_KEY_LINKAGE": "dynamic"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "GO",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent network monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-13C5CAC121EAF766",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-5CC00F47E822DAE3",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5CC00F47E822DAE3",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:49:00.000000000+02:00"
                    },
                    "name": "OneAgent network monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentnetwork.exe -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=\\\\.\\pipe\\oneagentnetwork_pipe_16264",
                      "EXE_NAME": "oneagentnetwork.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\DYNATRACE\\ONEAGENT\\AGENT\\LIB64\\ONEAGENTNETWORK.EXE",
                      "OSAGENT_GROUPID_NAME": "ruxit network monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit network monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.VSDetouredHost.exe",
                    "dt.process_group.id": "PROCESS_GROUP-E211F51AB97FDB9D",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-62C52BCFFB9DAAA9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-62C52BCFFB9DAAA9",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.VSDetouredHost.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.x86\\ServiceHub.VSDetouredHost.exe desktopClr.x86$VSDetouredHost 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.VSDetouredHost.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.X*\\SERVICEHUB.VSDETOUREDHOST.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Erlang Port Mapper",
                    "dt.process_group.id": "PROCESS_GROUP-AEC00D4B8B17467E",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-66C0C6FE37C20B02",
                    "id_classic": "PROCESS_GROUP_INSTANCE-66C0C6FE37C20B02",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "Erlang Port Mapper",
                    "port": [
                      "4369"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib64/erlang/erts-15.2.6/bin/epmd -daemon",
                      "EXE_NAME": "epmd",
                      "EXE_PATH": "/usr/lib64/erlang/erts-15.2.6/bin/epmd",
                      "OSAGENT_GROUPID_NAME": "Erlang Port Mapper",
                      "OSAGENT_INSTANCEID_NAME": "Erlang Port Mapper /"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent Python",
                    "dt.process_group.id": "PROCESS_GROUP-599F101F5882D809",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-7720AC8B21A044F1",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7720AC8B21A044F1",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:46:00.000000000+02:00"
                    },
                    "name": "OneAgent Python",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/var/lib/dynatrace/oneagent/agent/runtime/extensions/python_venvs/com.dynatrace.rabbitmq_2.1.7/bin/python3 -u -m rabbitmq_extension --dsid=python-8aac8ac8-29dd-3886-a2fd-65b2cbc3844d --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=8aac8ac8-29dd-3886-a2fd-65b2cbc3844d",
                      "EXE_NAME": "python3",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/res/dsruntime/python3.10/bin/python3",
                      "OSAGENT_GROUPID_NAME": "OneAgent Python",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent Python"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "PYTHON",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent system monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-5F2B1615975F58A9",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-7981410D65A0C3DC",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7981410D65A0C3DC",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "OneAgent system monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\dynatrace\\oneagent\\agent\\lib64\\oneagentwatchdog.exe -config=C:\\Program Files\\dynatrace\\oneagent\\agent\\conf\\watchdog.conf",
                      "EXE_NAME": "oneagentwatchdog.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\DYNATRACE\\ONEAGENT\\AGENT\\LIB64\\ONEAGENTWATCHDOG.EXE",
                      "OSAGENT_GROUPID_NAME": "ruxit system monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit system monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "WrappShovel.exe",
                    "dt.process_group.id": "PROCESS_GROUP-AA6DD472F15C0922",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-7983E571D2917F4B",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7983E571D2917F4B",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "WrappShovel.exe",
                    "port": [
                      "32000"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "D:\\vacoms\\shovel\\Wrapper\\WrappShovel.exe -s wrappShovel.conf",
                      "EXE_NAME": "WrappShovel.exe",
                      "EXE_PATH": "D:\\VACOMS\\SHOVEL\\WRAPPER\\WRAPPSHOVEL.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Linux System",
                    "dt.process_group.id": "PROCESS_GROUP-18D1B321C123F5BE",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-7DBFB588DC577190",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7DBFB588DC577190",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "Linux System",
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "Linux System",
                      "OSAGENT_INSTANCEID_NAME": "Linux System"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "LINUX_SYSTEM",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "iisexpress.exe",
                    "dt.process_group.id": "PROCESS_GROUP-5ACDAEC0FE1A72BF",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-8266DF95604B2FA3",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8266DF95604B2FA3",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "iisexpress.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\IIS\\ Express\\iisexpress.exe /config:C:\\Users\\U109307\\source\\repos\\LogWeb\\trunk\\solutions\\implementation\\.vs\\config\\applicationhost.config /site:com.voestalpine.LogWeb.FrontEnd(1) /apppool:Clr4IntegratedAppPool",
                      "EXE_NAME": "iisexpress.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\IIS EXPRESS\\IISEXPRESS.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "run.py",
                    "dt.process_group.id": "PROCESS_GROUP-AD7A434758487875",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-838BA9DC51E37917",
                    "id_classic": "PROCESS_GROUP_INSTANCE-838BA9DC51E37917",
                    "lifetime": {
                      "end": "2026-04-22T03:14:00.000000000+02:00",
                      "start": "2026-02-27T03:19:00.000000000+01:00"
                    },
                    "name": "run.py",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/bin/python /usr/lib/python2.7/site-packages/insights_client/run.py --retry 3",
                      "EXE_NAME": "python*",
                      "EXE_PATH": "/usr/bin/python*",
                      "OSAGENT_GROUPID_NAME": "run.py",
                      "OSAGENT_INSTANCEID_NAME": "/usr/lib/python2.7/site-packages/insights_client/run.py",
                      "PYTHON_SCRIPT": "run.py",
                      "PYTHON_SCRIPT_PATH": "/usr/lib/python2.7/site-packages/insights_client/run.py"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "PYTHON",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Windows System",
                    "dt.process_group.id": "PROCESS_GROUP-B2CAE9449B4747A5",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-842816EA6CFB96AE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-842816EA6CFB96AE",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "Windows System",
                    "port": [
                      "135",
                      "139",
                      "445",
                      "3389",
                      "5985",
                      "47001",
                      "49664",
                      "49665",
                      "49666",
                      "49667",
                      "49668",
                      "49669",
                      "49671",
                      "60194",
                      "61834",
                      "61850",
                      "62022"
                    ],
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "Windows System",
                      "OSAGENT_INSTANCEID_NAME": "Windows System"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "WINDOWS_SYSTEM",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "vstest.discoveryengine.x*.exe",
                    "dt.process_group.id": "PROCESS_GROUP-8C89F215ABFECABB",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-8E4D6D4EFBF07ECE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8E4D6D4EFBF07ECE",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "vstest.discoveryengine.x*.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\PROGRAM\\ FILES\\ (X86)\\MICROSOFT\\ VISUAL\\ STUDIO\\2017\\PROFESSIONAL\\COMMON7\\IDE\\COMMONEXTENSIONS\\MICROSOFT\\TESTWINDOW\\vstest.discoveryengine.x86.exe /parentProcessId 10660",
                      "EXE_NAME": "vstest.discoveryengine.x*.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\COMMONEXTENSIONS\\MICROSOFT\\TESTWINDOW\\VSTEST.DISCOVERYENGINE.X*.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent log analytics",
                    "dt.process_group.id": "PROCESS_GROUP-824F5CD9FB5ACA4B",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-8F89D073F02E0CD0",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8F89D073F02E0CD0",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:49:00.000000000+02:00"
                    },
                    "name": "OneAgent log analytics",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentloganalytics.exe -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=\\\\.\\pipe\\oneagentloganalytics_pipe_16264",
                      "EXE_NAME": "oneagentloganalytics.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\DYNATRACE\\ONEAGENT\\AGENT\\LIB*\\ONEAGENTLOGANALYTICS.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.shovel.Shovel",
                    "dt.process_group.id": "PROCESS_GROUP-6918A240A3273C61",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-96B2C8B894BC99B2",
                    "id_classic": "PROCESS_GROUP_INSTANCE-96B2C8B894BC99B2",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.shovel.Shovel",
                    "port": [
                      "9885",
                      "19887"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/etc/alternatives/jre_17_openjdk/bin/java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=19887 -classpath /etc/vacoms/shovel/bufferutil-2.0.3-SNAPSHOT-all.jar:/etc/vacoms/shovel/log4j-api-2.20.0.jar:/etc/vacoms/shovel/log4j-core-2.20.0.jar:/etc/vacoms/shovel/log4j-slf4j2-impl-2.20.0.jar:/etc/vacoms/shovel/jakarta.mail-2.0.1.jar:/etc/vacoms/shovel/jakarta.activation-2.0.1.jar:/etc/vacoms/shovel/amqp-client-5.19.0.jar:/etc/vacoms/shovel/slf4j-api-2.0.9.jar:/etc/vacoms/shovel/jackson-annotations-2.17.2.jar:/etc/vacoms/shovel/jackson-core-2.17.2.jar:/etc/vacoms/shovel/jackson-databind-2.17.2.jar:/etc/vacoms/shovel/appinfoApi-2.0.0.jar -Dlog4j2.configurationFile=/etc/vacoms/shovel/shovel_log4j2.properties -Djava.library.path=/etc/vacoms/shovel com.voestalpine.tgsys.shovel.Shovel /etc/vacoms/shovel/shovel.properties",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.shovel.Shovel"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "IIS",
                    "dt.process_group.id": "PROCESS_GROUP-E702AA64662B8BC7",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-993E6D5DC45155E7",
                    "id_classic": "PROCESS_GROUP_INSTANCE-993E6D5DC45155E7",
                    "lifetime": {
                      "end": "2026-04-22T08:40:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "IIS",
                    "port": [
                      "80",
                      "81",
                      "83",
                      "1443",
                      "8011"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\WINDOWS\\system32\\svchost.exe -k iissvcs",
                      "EXE_NAME": "svchost.exe",
                      "EXE_PATH": "C:\\WINDOWS\\SYSTEM32\\SVCHOST.EXE",
                      "OSAGENT_GROUPID_NAME": "IIS",
                      "OSAGENT_INSTANCEID_NAME": "IIS"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "IIS",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Short-lived processes",
                    "dt.process_group.id": "PROCESS_GROUP-E64B6EB6CA7CECD0",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-99BAE04100C57A62",
                    "id_classic": "PROCESS_GROUP_INSTANCE-99BAE04100C57A62",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-09T06:49:00.000000000+02:00"
                    },
                    "name": "Short-lived processes",
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "SLP",
                      "OSAGENT_INSTANCEID_NAME": "SLP"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ClMgrS",
                    "dt.process_group.id": "PROCESS_GROUP-2A536C5A7A1BAD35",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-AA224F155412CE9D",
                    "id_classic": "PROCESS_GROUP_INSTANCE-AA224F155412CE9D",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "ClMgrS",
                    "port": [
                      "53325"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "53325"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/Base/ClMgrS",
                      "EXE_NAME": "ClMgrS",
                      "EXE_PATH": "/opt/commvault/Base64/ClMgrS"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "tcpgate",
                    "dt.process_group.id": "PROCESS_GROUP-420BE9E5A5A23D89",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-AACED300FCD99A0D",
                    "id_classic": "PROCESS_GROUP_INSTANCE-AACED300FCD99A0D",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "tcpgate",
                    "port": [
                      "9227"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "./tcpgate tcpgate.ini",
                      "EXE_NAME": "tcpgate",
                      "EXE_PATH": "/appl/vacoms/gateway/tcpgate"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent NetTracer",
                    "dt.process_group.id": "PROCESS_GROUP-97CC268FE52986DE",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-AB1BBCA1CEB08586",
                    "id_classic": "PROCESS_GROUP_INSTANCE-AB1BBCA1CEB08586",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-09T14:50:00.000000000+02:00"
                    },
                    "name": "OneAgent NetTracer",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/lib64/oneagentnettracer -p /opt/dynatrace/oneagent/agent/lib64/nettracer-bpf.o -n -i -l /var/log/dynatrace/oneagent/os/ -m 4096",
                      "EXE_NAME": "oneagentnettracer",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentnettracer",
                      "OSAGENT_GROUPID_NAME": "OneAgent NetTracer",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent NetTracer"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent log analytics",
                    "dt.process_group.id": "PROCESS_GROUP-8095419AE080B640",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-BC99F0C02974C63A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-BC99F0C02974C63A",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:50:00.000000000+02:00"
                    },
                    "name": "OneAgent log analytics",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentloganalytics -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentloganalytics_pipe_1316628",
                      "EXE_NAME": "oneagentloganalytics",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib*/oneagentloganalytics"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.converter.Del2ConverterAp (sim)",
                    "dt.process_group.id": "PROCESS_GROUP-43748ECC9AFDF949",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-BCDEE434AD665C9A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-BCDEE434AD665C9A",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:53:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2ConverterApplication-3.0.5-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/etc/alternatives/jre_17/bin/java -Xmx128m -jar -Dspring.profiles.active=sim -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2ConverterApplication-3.0.5-SNAPSHOT.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*ConverterApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*ConverterApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "sim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.converter.Del2ConverterAp"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "rpc.statd",
                    "dt.process_group.id": "PROCESS_GROUP-07A0BBC859361D09",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-BEB7699063675E53",
                    "id_classic": "PROCESS_GROUP_INSTANCE-BEB7699063675E53",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "rpc.statd",
                    "port": [
                      "44638",
                      "47877"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "35058",
                      "55796"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/sbin/rpc.statd",
                      "EXE_NAME": "rpc.statd",
                      "EXE_PATH": "/usr/sbin/rpc.statd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "pvsw.exe",
                    "dt.process_group.id": "PROCESS_GROUP-D0C69E8B0F63F0CA",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-C3ED4FE37318B3EF",
                    "id_classic": "PROCESS_GROUP_INSTANCE-C3ED4FE37318B3EF",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "pvsw.exe",
                    "port": [
                      "61901"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "d:\\vacoms\\PVSW",
                      "EXE_NAME": "pvsw.exe",
                      "EXE_PATH": "D:\\VACOMS\\PVSW.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent Python",
                    "dt.process_group.id": "PROCESS_GROUP-599F101F5882D809",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-C4F8FC2717C6C22F",
                    "id_classic": "PROCESS_GROUP_INSTANCE-C4F8FC2717C6C22F",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-09T14:56:00.000000000+02:00"
                    },
                    "name": "OneAgent Python",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/var/lib/dynatrace/oneagent/agent/runtime/extensions/python_venvs/com.dynatrace.rabbitmq_2.1.7/bin/python3 -u -m rabbitmq_extension --dsid=python-8aac8ac8-29dd-3886-a2fd-65b2cbc3844d --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=8aac8ac8-29dd-3886-a2fd-65b2cbc3844d",
                      "EXE_NAME": "python3",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/res/dsruntime/python3.10/bin/python3",
                      "OSAGENT_GROUPID_NAME": "OneAgent Python",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent Python"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "PYTHON",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "tsserver.js",
                    "dt.process_group.id": "PROCESS_GROUP-E902BBC45711B256",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-CA410A4D5F423050",
                    "id_classic": "PROCESS_GROUP_INSTANCE-CA410A4D5F423050",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "tsserver.js",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Web\\External\\x86\\node.exe --expose-gc C:\\Program\\ Files\\ (x86)\\Microsoft\\ SDKs\\TypeScript\\2.5\\tsserver.js --cancellationPipeName \\\\.\\pipe\\tsserver-cancellation-10660 --useSingleInferredProject --locale en-US --typingSafeListLocation C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\CommonExtensions\\Microsoft\\TypeScript\\typingSafeList.json --allowLocalPluginLoads --eventPort 64318",
                      "EXE_NAME": "Node.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\WEB\\EXTERNAL\\X*\\NODE.EXE",
                      "NODE_JS_SCRIPT_NAME": "C:/Program Files (x*)/Microsoft SDKs/TypeScript/*/tsserver.js"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Node.js",
                        "type": "NODE_JS",
                        "version": "5.4.1"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot pvse-shovel-lb01d com.voestalpine.eai.pvseshovel.PvseShovelApplication",
                    "dt.process_group.id": "PROCESS_GROUP-9D43C6115F6DF20C",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-CA5B59F0401ACBC2",
                    "id_classic": "PROCESS_GROUP_INSTANCE-CA5B59F0401ACBC2",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "/appl/vacoms/shovels/lb01d/../lib/pvse-shovel-1.0-SNAPSHOT.jar",
                    "port": [
                      "9885"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/vacoms/shovels/lb01d/../lib/javaPvseShovelLb01d -Dspring.config.location=file:/appl/vacoms/shovels/lb01d/application.properties -Dlogging.config=file:/appl/vacoms/shovels/lb01d/../config/log4j2-spring.xml -Dlogging.dir.path=/appl/vacoms/shovels/lb01d/log -Djava.library.path=/appl/vacoms/vacoms -jar /appl/vacoms/shovels/lb01d/../lib/pvse-shovel-1.0-SNAPSHOT.jar org.springframework.boot.loader.JarLauncher",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*.b*-*.el*_*.x*_*/jre/bin/java",
                      "JAVA_JAR_FILE": "pvse-shovel-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/vacoms/shovels/lb*d/../lib/pvse-shovel-*-SNAPSHOT.jar",
                      "SPRINGBOOT_APP_NAME": "pvse-shovel-lb01d",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.eai.pvseshovel.PvseShovelApplication"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Short-lived processes",
                    "dt.process_group.id": "PROCESS_GROUP-E64B6EB6CA7CECD0",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-CCC83A16DD0FCAB4",
                    "id_classic": "PROCESS_GROUP_INSTANCE-CCC83A16DD0FCAB4",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:41:00.000000000+02:00"
                    },
                    "name": "Short-lived processes",
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "SLP",
                      "OSAGENT_INSTANCEID_NAME": "SLP"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent Python",
                    "dt.process_group.id": "PROCESS_GROUP-599F101F5882D809",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-D256F251A8E80B1C",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D256F251A8E80B1C",
                    "lifetime": {
                      "end": "2026-04-22T08:40:00.000000000+02:00",
                      "start": "2026-03-03T07:23:00.000000000+01:00"
                    },
                    "name": "OneAgent Python",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/var/lib/dynatrace/oneagent/agent/runtime/extensions/python_venvs/com.dynatrace.extension.tibcoems_1.4.10/bin/python3 -u -m tibcoems --dsid=python-6d149c3c-d5bc-3829-99ab-b6479a44820a --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=6d149c3c-d5bc-3829-99ab-b6479a44820a",
                      "EXE_NAME": "python3",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/res/dsruntime/python3.14/bin/python3",
                      "OSAGENT_GROUPID_NAME": "OneAgent Python",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent Python"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "PYTHON",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "WrappQuartz.exe",
                    "dt.process_group.id": "PROCESS_GROUP-8528D6D4C045ACAC",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-D4C49887F2A0BD11",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D4C49887F2A0BD11",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "WrappQuartz.exe",
                    "port": [
                      "32002"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "D:\\TGRuntime\\wrapper-windows-x86-32-3.3.1\\bin\\WrappQuartz.exe -s D:\\TGRuntime\\wrapper-windows-x86-32-3.3.1\\bin\\LOGWEBT_Quartz.conf",
                      "EXE_NAME": "WrappQuartz.exe",
                      "EXE_PATH": "D:\\TGRUNTIME\\WRAPPER-WINDOWS-X86-32-3.3.1\\BIN\\WRAPPQUARTZ.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent system monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-5F2B1615975F58A9",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-D68952E5C452A8C4",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D68952E5C452A8C4",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "OneAgent system monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog -bg -config=/opt/dynatrace/oneagent/agent/conf/watchdog.conf",
                      "EXE_NAME": "oneagentwatchdog",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog",
                      "OSAGENT_GROUPID_NAME": "ruxit system monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit system monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Ivanti Endpoint Security Agent Patch Module Service",
                    "dt.process_group.id": "PROCESS_GROUP-699F2C34C964DD1A",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-DCDA339913B4A8B5",
                    "id_classic": "PROCESS_GROUP_INSTANCE-DCDA339913B4A8B5",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "Ivanti Endpoint Security Agent Patch Module Service",
                    "port": [
                      "62036"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\HEAT Software\\EMSSAgent\\01\\patch\\GravitixService.exe",
                      "EXE_NAME": "GravitixService.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\HEAT SOFTWARE\\EMSSAGENT\\01\\PATCH\\GRAVITIXSERVICE.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "iisexpresstray.exe",
                    "dt.process_group.id": "PROCESS_GROUP-E1A627475F9F3627",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-E5169F4FA42A822E",
                    "id_classic": "PROCESS_GROUP_INSTANCE-E5169F4FA42A822E",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "iisexpresstray.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\IIS\\ Express\\iisexpresstray.exe 11884",
                      "EXE_NAME": "iisexpresstray.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\IIS EXPRESS\\IISEXPRESSTRAY.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "epmd.exe",
                    "dt.process_group.id": "PROCESS_GROUP-BCA15824C1CEB9BA",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-E84C0311466D8316",
                    "id_classic": "PROCESS_GROUP_INSTANCE-E84C0311466D8316",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "epmd.exe",
                    "port": [
                      "4369"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\Erlang OTP\\erts-16.0.2\\bin\\epmd -daemon",
                      "EXE_NAME": "epmd.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\ERLANG OTP\\ERTS-16.0.2\\BIN\\EPMD.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent log analytics",
                    "dt.process_group.id": "PROCESS_GROUP-8095419AE080B640",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-EB012049DA327032",
                    "id_classic": "PROCESS_GROUP_INSTANCE-EB012049DA327032",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:02:00.000000000+01:00"
                    },
                    "name": "OneAgent log analytics",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentloganalytics -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentloganalytics_pipe_28048",
                      "EXE_NAME": "oneagentloganalytics",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib*/oneagentloganalytics"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "rpc.statd",
                    "dt.process_group.id": "PROCESS_GROUP-07A0BBC859361D09",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-F1CE9286A9941F69",
                    "id_classic": "PROCESS_GROUP_INSTANCE-F1CE9286A9941F69",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "rpc.statd",
                    "port": [
                      "37018",
                      "54090"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/sbin/rpc.statd",
                      "EXE_NAME": "rpc.statd",
                      "EXE_PATH": "/usr/sbin/rpc.statd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "TCPGATE.EXE",
                    "dt.process_group.id": "PROCESS_GROUP-ADABFF1736046CAC",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-F58BBCC36D94AA8B",
                    "id_classic": "PROCESS_GROUP_INSTANCE-F58BBCC36D94AA8B",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "TCPGATE.EXE",
                    "port": [
                      "9227",
                      "61902"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "d:\\vacoms\\TCPGATE d:\\vacoms\\TCPGAT.INI",
                      "EXE_NAME": "TCPGATE.EXE",
                      "EXE_PATH": "D:\\VACOMS\\TCPGATE.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Windows Defender Advanced Threat Protection Service Executable",
                    "dt.process_group.id": "PROCESS_GROUP-7FE9135E9B6B3876",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-031E8D83B9FB0EAD",
                    "id_classic": "PROCESS_GROUP_INSTANCE-031E8D83B9FB0EAD",
                    "lifetime": {
                      "end": "2026-04-21T15:24:00.000000000+02:00",
                      "start": "2026-04-09T08:10:00.000000000+02:00"
                    },
                    "name": "Windows Defender Advanced Threat Protection Service Executable",
                    "process.metadata": {
                      "EXE_NAME": "MsSense.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\WINDOWS DEFENDER ADVANCED THREAT PROTECTION\\MSSENSE.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "gzip",
                    "dt.process_group.id": "PROCESS_GROUP-29B226B65E1955E4",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-4053F32C3DC47A67",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4053F32C3DC47A67",
                    "lifetime": {
                      "end": "2026-04-21T19:40:00.000000000+02:00",
                      "start": "2026-02-26T19:44:00.000000000+01:00"
                    },
                    "name": "gzip",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "gzip -f -v9 ./initrd",
                      "EXE_NAME": "gzip",
                      "EXE_PATH": "/usr/bin/gzip"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "sshd",
                    "dt.process_group.id": "PROCESS_GROUP-0EB93103F61C28CE",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-70D9CD5C1FAB53B5",
                    "id_classic": "PROCESS_GROUP_INSTANCE-70D9CD5C1FAB53B5",
                    "lifetime": {
                      "end": "2026-04-21T09:34:00.000000000+02:00",
                      "start": "2026-04-17T08:04:00.000000000+02:00"
                    },
                    "name": "sshd",
                    "port": [
                      "22"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/sbin/sshd -D",
                      "EXE_NAME": "sshd",
                      "EXE_PATH": "/usr/sbin/sshd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "clBackup.exe",
                    "dt.process_group.id": "PROCESS_GROUP-424C633108BD6040",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-778A673A45D79D82",
                    "id_classic": "PROCESS_GROUP_INSTANCE-778A673A45D79D82",
                    "lifetime": {
                      "end": "2026-04-21T21:41:00.000000000+02:00",
                      "start": "2026-04-09T20:05:00.000000000+02:00"
                    },
                    "name": "clBackup.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "clBackup.exe -j 97825971 -a 2:11203 -t 2 -i 3 -d 2217ma0010at002.voestalpine.root.local*2217ma0010at002*8400 -io 1 -jt 97825971:7:1:0:0:17492 -idxma 2217ma0010at002.voestalpine.root.local*2217ma0010at002*8400 -OSInfo -h -w -ot 0 -numstreams 2 -CLN -SYS -ab 0 -r 1776794417 -c 0 -appType 33 -incimage -aftersynth -lf 12680694 -li 97792869 -lbRefTime 1776715222 -CFI -TJ -TJC 125 -lsf 0 -ICLO -size 3920805096 -id V1|FSIDA|\u003cSS\u003e17263dc1-3e46-4516-8a58-38e99241cc81 -cn 2236dblogwebt -vm Instance001",
                      "EXE_NAME": "clBackup.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\COMMVAULT\\CONTENTSTORE\\BASE\\CLBACKUP.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "PerfWatson*.exe",
                    "dt.process_group.id": "PROCESS_GROUP-AC61B1D2C91EF60E",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-0338D619E3E465CB",
                    "id_classic": "PROCESS_GROUP_INSTANCE-0338D619E3E465CB",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "PerfWatson*.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\PerfWatson2.exe 10660 -version 1 -user U109307 -userappdir C:\\Users\\U109307\\AppData\\Local -clientndx 1",
                      "EXE_NAME": "PerfWatson*.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\PERFWATSON*.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.qtmerge.Del2QtMergerApp (sim)",
                    "dt.process_group.id": "PROCESS_GROUP-F0727570794671F4",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-0FD81F884EDDD427",
                    "id_classic": "PROCESS_GROUP_INSTANCE-0FD81F884EDDD427",
                    "lifetime": {
                      "end": "2026-04-22T08:35:00.000000000+02:00",
                      "start": "2026-04-09T14:52:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2QtMergerApplication-3.0.0-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -Xmx128m -jar -Dspring.profiles.active=sim -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2QtMergerApplication-3.0.0-SNAPSHOT.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*QtMergerApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*QtMergerApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "sim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.qtmerge.Del2QtMergerApp"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent log analytics",
                    "dt.process_group.id": "PROCESS_GROUP-8095419AE080B640",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-142B05D901985A27",
                    "id_classic": "PROCESS_GROUP_INSTANCE-142B05D901985A27",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:41:00.000000000+02:00"
                    },
                    "name": "OneAgent log analytics",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentloganalytics -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentloganalytics_pipe_63260",
                      "EXE_NAME": "oneagentloganalytics",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib*/oneagentloganalytics"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.xprimdatanf.Del2XMLPrim (messim)",
                    "dt.process_group.id": "PROCESS_GROUP-E529CF0AF7870099",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-1A83A5F2C01CA54A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-1A83A5F2C01CA54A",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2XMLPrimaerdatenAnforderungApplication-3.0.4.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -Xmx512m -jar -Dspring.profiles.active=sim,messim -Dlog.suffix=mes -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2XMLPrimaerdatenAnforderungApplication-3.0.4.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*XMLPrimaerdatenAnforderungApplication-*.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*XMLPrimaerdatenAnforderungApplication-*.jar",
                      "SPRINGBOOT_PROFILE_NAME": "messim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.xprimdatanf.Del2XMLPrim"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "IIS app pool 2236berichtsassistent",
                    "dt.process_group.id": "PROCESS_GROUP-3CCF8F72D8F8C762",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-1F8C3EFBD0AB4564",
                    "id_classic": "PROCESS_GROUP_INSTANCE-1F8C3EFBD0AB4564",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "IIS app pool 2236berichtsassistent",
                    "port": [
                      "88"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "c:\\windows\\system32\\inetsrv\\w3wp.exe -ap 2236berichtsassistent -v v4.0 -l webengine4.dll -a \\\\.\\pipe\\iisipmc500aa24-d23a-4be4-8568-642b381b907c -h C:\\inetpub\\temp\\apppools\\2236berichtsassistent\\2236berichtsassistent.config -w  -m 0 -t 20 -ta 0",
                      "EXE_NAME": "w*wp.exe",
                      "EXE_PATH": "c:/windows/system*/inetsrv/w*wp.exe",
                      "IIS_APP_POOL": "2236berichtsassistent"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "IIS_APP_POOL",
                        "version": "10.0.20348.1"
                      },
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvd",
                    "dt.process_group.id": "PROCESS_GROUP-D2935558F3FA544A",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-212E1BAB50E6A3F4",
                    "id_classic": "PROCESS_GROUP_INSTANCE-212E1BAB50E6A3F4",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "cvd",
                    "port": [
                      "8400",
                      "45423"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/Base/cvd",
                      "EXE_NAME": "cvd",
                      "EXE_PATH": "/opt/commvault/Base64/cvd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Linux System",
                    "dt.process_group.id": "PROCESS_GROUP-18D1B321C123F5BE",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-2508D318EC8935FD",
                    "id_classic": "PROCESS_GROUP_INSTANCE-2508D318EC8935FD",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "Linux System",
                    "port": [
                      "6969",
                      "8969",
                      "38837",
                      "41435"
                    ],
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "Linux System",
                      "OSAGENT_INSTANCEID_NAME": "Linux System"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "LINUX_SYSTEM",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent network monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-13C5CAC121EAF766",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-2BD4DFC45D7EF8A2",
                    "id_classic": "PROCESS_GROUP_INSTANCE-2BD4DFC45D7EF8A2",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:50:00.000000000+02:00"
                    },
                    "name": "OneAgent network monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentnetwork -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentnetwork_pipe_1316628",
                      "EXE_NAME": "oneagentnetwork",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentnetwork",
                      "OSAGENT_GROUPID_NAME": "ruxit network monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit network monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "wdavdaemon",
                    "dt.process_group.id": "PROCESS_GROUP-67F73DBC237A94D6",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-2E1E57C4134E78AD",
                    "id_classic": "PROCESS_GROUP_INSTANCE-2E1E57C4134E78AD",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-02-26T09:03:00.000000000+01:00"
                    },
                    "name": "wdavdaemon",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/microsoft/mdatp/sbin/wdavdaemon",
                      "EXE_NAME": "wdavdaemon",
                      "EXE_PATH": "/opt/microsoft/mdatp/sbin/wdavdaemon"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.SettingsHost.exe",
                    "dt.process_group.id": "PROCESS_GROUP-100372A20995DB92",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-341FC5091F5368AE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-341FC5091F5368AE",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.SettingsHost.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.x86\\ServiceHub.SettingsHost.exe desktopClr.x86$SettingsHost 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.SettingsHost.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.X*\\SERVICEHUB.SETTINGSHOST.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      },
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.berichtsassistent.BerichtsassistentApplicat (stage)",
                    "dt.process_group.id": "PROCESS_GROUP-64AFC27F3ABED653",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-47EC73F632ED5455",
                    "id_classic": "PROCESS_GROUP_INSTANCE-47EC73F632ED5455",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "D:\\2236berichtsassistent_backend\\berichtsassistent-backend.jar",
                    "port": [
                      "8080"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "D:\\2236berichtsassistent_backend\\jdk-21.0.5+11-jre\\bin\\java.exe -Xrs -Xmx256m -Dspring.profiles.active=stage -jar D:\\2236berichtsassistent_backend\\berichtsassistent-backend.jar",
                      "EXE_NAME": "java.exe",
                      "EXE_PATH": "D:\\*BERICHTSASSISTENT_BACKEND\\JDK-*+*-JRE\\BIN\\JAVA.EXE",
                      "JAVA_JAR_FILE": "berichtsassistent-backend.jar",
                      "JAVA_JAR_PATH": "D:/*berichtsassistent_backend/berichtsassistent-backend.jar",
                      "SPRINGBOOT_PROFILE_NAME": "stage",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.berichtsassistent.BerichtsassistentApplicat"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Eclipse Adoptium",
                        "type": "JAVA",
                        "version": "21.0.5.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Extensions Controller",
                    "dt.process_group.id": "PROCESS_GROUP-1D438716A25E8535",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-4C8F3B8D1BE3ECEE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4C8F3B8D1BE3ECEE",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:50:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Extensions Controller",
                    "port": [
                      "14499"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentextensions -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentextensions_pipe_1316628",
                      "EXE_NAME": "oneagentextensions",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentextensions",
                      "OSAGENT_GROUPID_NAME": "Dynatrace OneAgent Extensions Controller",
                      "OSAGENT_INSTANCEID_NAME": "Dynatrace OneAgent Extensions Controller"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent Python",
                    "dt.process_group.id": "PROCESS_GROUP-599F101F5882D809",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-5688AA829D6D4D11",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5688AA829D6D4D11",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-09T13:46:00.000000000+02:00"
                    },
                    "name": "OneAgent Python",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "\\\\?\\C:\\ProgramData\\dynatrace\\oneagent\\agent\\runtime\\extensions\\python_venvs\\com.dynatrace.rabbitmq_2.1.7\\Scripts\\python.exe -u -m rabbitmq_extension --dsid=python-8aac8ac8-29dd-3886-a2fd-65b2cbc3844d --url=http://127.0.0.1:14499 --idtoken=C:/ProgramData/dynatrace/oneagent/agent\\runtime\\datasources\\dsauthtoken --monitoring_config_id=8aac8ac8-29dd-3886-a2fd-65b2cbc3844d",
                      "EXE_NAME": "python.exe",
                      "EXE_PATH": "C:\\PROGRAMDATA\\DYNATRACE\\ONEAGENT\\AGENT\\RUNTIME\\EXTENSIONS\\PYTHON_VENVS\\COM.DYNATRACE.RABBITMQ_2.1.7\\SCRIPTS\\PYTHON.EXE",
                      "OSAGENT_GROUPID_NAME": "OneAgent Python",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent Python"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      },
                      {
                        "edition": "Python Software Foundation",
                        "type": "PYTHON",
                        "version": "3.10.19"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "org.quartz.impl.QuartzServer",
                    "dt.process_group.id": "PROCESS_GROUP-A355233C16FEFC43",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-5CFF49C421655990",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5CFF49C421655990",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "org.quartz.impl.QuartzServer",
                    "port": [
                      "9945",
                      "32001",
                      "46677"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaQuartz -Djava.security.policy=../../quartz-2.2.3/examples/java.policy -Dorg.quartz.properties=../../quartz-2.2.3/examples/quartzServer.properties -Dlog4j.configuration=log4j.xml -Dlog4j2.configurationFile=/appl/TGRuntime/Wrapper-3.2.3/bin/log4j2.xml -Xms20m -Xmx128m -Djava.library.path=../lib:/etc/vacoms/vacoms -classpath ../../quartz-2.2.3/lib/quartz-2.2.3.jar:../../quartz-2.2.3/lib/core/commons-collections-3.1.jar:../../quartz-2.2.3/lib/core/commons-logging.jar:../../quartz-2.2.3/lib/core/commons-logging-api.jar:../../quartz-2.2.3/lib/optional/commons-beanutils.jar:../../quartz-2.2.3/lib/optional/commons-beanutils-bean-collections.jar:../../quartz-2.2.3/lib/optional/commons-beanutils-core.jar:../../quartz-2.2.3/lib/optional/commons-beanutils.jar:../../quartz-2.2.3/lib/optional/commons-dbcp-1.2.1.jar:../../quartz-2.2.3/lib/optional/commons-digester-1.7.jar:../../quartz-2.2.3/lib/optional/commons-pool-1.2.jar:../../quartz-2.2.3/lib/optional/commons-validator-1.1.4.jar:../../quartz-2.2.3/lib/javax.mail-1.6.2.jar:../../quartz-2.2.3/lib/activation-1.1.1.jar:.:../../quartz-2.2.3/lib/quartzadditions-1.3.jar:../../quartz-2.2.3/lib/voestalpineMail-1.8.jar:* -Dwrapper.key=kPfckFQtM88r0rhS -Dwrapper.port=32001 -Dwrapper.jvm.port.min=31000 -Dwrapper.jvm.port.max=31999 -Dwrapper.pid=6286 -Dwrapper.version=3.2.3 -Dwrapper.native_library=wrapper -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=10 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperSimpleApp org.quartz.impl.QuartzServer",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "org.quartz.impl.QuartzServer"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ClMgrS.exe",
                    "dt.process_group.id": "PROCESS_GROUP-933918FDFDB08558",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-6E855D2156E8B768",
                    "id_classic": "PROCESS_GROUP_INSTANCE-6E855D2156E8B768",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ClMgrS.exe",
                    "port": [
                      "51230"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\Commvault\\ContentStore\\Base\\ClMgrS.exe -vm Instance001",
                      "EXE_NAME": "ClMgrS.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\COMMVAULT\\CONTENTSTORE\\BASE\\CLMGRS.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Short-lived processes",
                    "dt.process_group.id": "PROCESS_GROUP-E64B6EB6CA7CECD0",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-7012CA6D5DD98746",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7012CA6D5DD98746",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-02-26T09:02:00.000000000+01:00"
                    },
                    "name": "Short-lived processes",
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "SLP",
                      "OSAGENT_INSTANCEID_NAME": "SLP"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvfwd.exe",
                    "dt.process_group.id": "PROCESS_GROUP-C2D98E398CA0120F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-80C5C17686281C10",
                    "id_classic": "PROCESS_GROUP_INSTANCE-80C5C17686281C10",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "cvfwd.exe",
                    "port": [
                      "8403",
                      "61812",
                      "61813"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\Commvault\\ContentStore\\Base\\cvfwd.exe -vm Instance001",
                      "EXE_NAME": "cvfwd.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\COMMVAULT\\CONTENTSTORE\\BASE\\CVFWD.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "javaHSQL.exe",
                    "dt.process_group.id": "PROCESS_GROUP-E4FB9B2C1E8C482B",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-865AC2E5C12AFB29",
                    "id_classic": "PROCESS_GROUP_INSTANCE-865AC2E5C12AFB29",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "javaHSQL.exe",
                    "port": [
                      "9001"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "..\\..\\java\\java-1.8.0-openjdk-1.8.0.212-3.b04.redhat.windows.x86_64\\jre\\bin\\javaHSQL -Xms20m -Xmx64m -Djava.library.path=../lib;../../bin -classpath ../../HSQLDB/hsqldb.jar;../lib/wrapper.jar;. -Dwrapper.key=Zhjrtx9sBD48m0Oi -Dwrapper.port=32001 -Dwrapper.jvm.port.min=31000 -Dwrapper.jvm.port.max=31999 -Dwrapper.pid=3320 -Dwrapper.version=3.3.1 -Dwrapper.native_library=wrapper -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=10 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperSimpleApp org.hsqldb.Server -database ../../HSQLDB/LOGWEBTQuartz port 9001",
                      "EXE_NAME": "javaHSQL.exe",
                      "EXE_PATH": "D:\\TGRUNTIME\\JAVA\\JAVA-*-OPENJDK-*-*.B*.REDHAT.WINDOWS.X*_*\\JRE\\BIN\\JAVAHSQL.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "JAVA",
                        "version": "8.0.2120.4"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.bufferutil.TGMQReader",
                    "dt.process_group.id": "PROCESS_GROUP-6F5D8802A4CEFA8F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-90F7E2FA93555F5C",
                    "id_classic": "PROCESS_GROUP_INSTANCE-90F7E2FA93555F5C",
                    "lifetime": {
                      "end": "2026-04-22T08:38:00.000000000+02:00",
                      "start": "2026-04-09T14:52:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.bufferutil.TGMQReader",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaTGrmqRead -Xmx128m -Xms20m -DAPP_ID= -Djava.security.egd=file:/dev/../dev/urandom -Djava.library.path=/etc/vacoms/vacoms -Dlog4j2.configurationFile=/appl/TGRuntime/bin/log4j2.properties -DlogFilename=TGrmqRead_DynatraceTEST_HBDE -javaagent:/appl/TGRuntime/java/lib/opentelemetry-javaagent.jar -Dotel.service.name=tg-rmq-read-hbde -Dotel.resource.attributes=deployment.environment=test,team=2217_BSP,region=eu,dt.security_context=TPI_Messaging,dt.cost.costcenter=tpi_messaging,dt.cost.product=tpi_messaging_test -Dotel.exporter.otlp.endpoint=http://10.164.18.36:4317 -Dotel.exporter.otlp.headers=Authorization=Api-Token\\ * -Dotel.exporter.otlp.protocol=grpc -Dotel.exporter.otlp.insecure=true -Dotel.traces.exporter=otlp -Dotel.metrics.exporter=otlp -Dotel.logs.exporter=otlp -classpath /appl/TGRuntime/java/lib/ojdbc8-12.2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.mail-2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.activation-2.0.1.jar:/appl/TGRuntime/java/lib/log4j-core-2.20.0.jar:/appl/TGRuntime/java/lib/log4j-api-2.20.0.jar:/appl/TGRuntime/java/lib/datedFileAppender-1.0.2.jar:/appl/TGRuntime/java/lib/jdom.jar:/appl/TGRuntime/java/lib/appinfoApi-2.0.1.jar:/appl/TGRuntime/java/lib/amqp-client-5.19.0.jar:/appl/TGRuntime/java/lib/slf4j-api-2.0.9.jar:/appl/TGRuntime/java/lib/log4j-slf4j2-impl-2.20.0.jar:/appl/TGRuntime/java/class/bufferutil-2.0.3-all.jar com.voestalpine.tgsys.bufferutil.TGMQReader jdbc:oracle:thin:@//2217dboracs08t:1521/QSTG tgrun tgrun HBDE",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.bufferutil.TGMQReader"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Tibco EMS",
                    "dt.process_group.id": "PROCESS_GROUP-E69EEB739B27EEA2",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-934CA0AAC3E8C520",
                    "id_classic": "PROCESS_GROUP_INSTANCE-934CA0AAC3E8C520",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "Tibco EMS",
                    "port": [
                      "7222",
                      "7322"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "7222",
                      "7322"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/tibco/ems/8.5/bin/tibemsd64 -config /appl/MUSI-VEX/tibco/cfgmgmt/ems/data/musi-vex.json",
                      "EXE_NAME": "tibemsd64",
                      "EXE_PATH": "/appl/tibco/ems/8.5/bin/tibemsd",
                      "OSAGENT_GROUPID_NAME": "Tibco EMS",
                      "OSAGENT_INSTANCEID_NAME": "Tibco EMS "
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "TIBCO_EMS",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvd.exe",
                    "dt.process_group.id": "PROCESS_GROUP-53461402914E6788",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-958D51762ED2F17D",
                    "id_classic": "PROCESS_GROUP_INSTANCE-958D51762ED2F17D",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "cvd.exe",
                    "port": [
                      "8400",
                      "50943",
                      "51191",
                      "61835"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\Commvault\\ContentStore\\Base\\cvd.exe -vm Instance001",
                      "EXE_NAME": "cvd.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\COMMVAULT\\CONTENTSTORE\\BASE\\CVD.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "RabbitMQ",
                    "dt.process_group.id": "PROCESS_GROUP-DBD841F4642235ED",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-9B6EDFABC15702D9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-9B6EDFABC15702D9",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "RabbitMQ",
                    "port": [
                      "5672",
                      "15672",
                      "15692",
                      "25672"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program Files\\Erlang OTP\\erts-16.0.2\\bin\\erl.exe -service_event ErlSrv_RabbitMQ -nohup -sname rabbit@2236DBLOGWEBT -s rabbit boot -boot start_sasl +W w +MBas ageffcbf +MHas ageffcbf +MBlmbcs 512 +MHlmbcs 512 +MMmcs 30 +pc unicode +P 1048576 +t 5000000 +stbt db +zdbbl 128000 +sbwt none +sbwtdcpu none +sbwtdio none -kernel inet_dist_listen_min 25672 -kernel inet_dist_listen_max 25672 -syslog logger [] -syslog syslog_error_logger false -kernel prevent_overlapping_partitions false",
                      "EXE_NAME": "erl.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\ERLANG OTP\\ERTS-16.0.2\\BIN\\ERL.EXE",
                      "OSAGENT_GROUPID_NAME": "RabbitMQ",
                      "OSAGENT_INSTANCEID_NAME": "RabbitMQ C:\\Program Files\\RabbitMQ Server\\Config\\"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "AMQP",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "RABBIT_MQ",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.Host.CLR.x*.exe",
                    "dt.process_group.id": "PROCESS_GROUP-2E761B932932E990",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-A315B6AD706E92C2",
                    "id_classic": "PROCESS_GROUP_INSTANCE-A315B6AD706E92C2",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.Host.CLR.x*.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.x86\\ServiceHub.Host.CLR.x86.exe desktopClr.x86$C94B8CFE-E3FD-4BAF-A941-2866DBB566FE 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.Host.CLR.x*.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.X*\\SERVICEHUB.HOST.CLR.X*.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.IdentityHost.exe",
                    "dt.process_group.id": "PROCESS_GROUP-7FC4B7C4680A5909",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-AC03B546EEA8A503",
                    "id_classic": "PROCESS_GROUP_INSTANCE-AC03B546EEA8A503",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.IdentityHost.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.x86\\ServiceHub.IdentityHost.exe desktopClr.x86$IdentityHost 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.IdentityHost.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.X*\\SERVICEHUB.IDENTITYHOST.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.lb.dki.DkiIllWebserviceApplication (linz3)",
                    "dt.process_group.id": "PROCESS_GROUP-FAE7CDB710F5CC7F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-ADFF52560F82F5B1",
                    "id_classic": "PROCESS_GROUP_INSTANCE-ADFF52560F82F5B1",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "/appl/lb/dki/DkiIllWebservice-0.1.2-spring-boot.jar",
                    "port": [
                      "10003"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-17-amazon-corretto/bin/java -Dspring.profiles.active=linz3 -jar /appl/lb/dki/DkiIllWebservice-0.1.2-spring-boot.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-amazon-corretto/bin/java",
                      "JAVA_JAR_FILE": "DkiIllWebservice-*-spring-boot.jar",
                      "JAVA_JAR_PATH": "/appl/lb/dki/DkiIllWebservice-*-spring-boot.jar",
                      "SPRINGBOOT_PROFILE_NAME": "linz3",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.lb.dki.DkiIllWebserviceApplication"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Amazon.com Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Source StatsD",
                    "dt.process_group.id": "PROCESS_GROUP-AB9502B211DC4882",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-D2D597426DFFF5C3",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D2D597426DFFF5C3",
                    "lifetime": {
                      "end": "2026-04-22T08:40:00.000000000+02:00",
                      "start": "2026-04-09T06:49:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Source StatsD",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:/Program\\ Files/dynatrace/oneagent/agent/datasources\\statsd/oneagentsourcestatsd.exe --dsid=statsd_0 --url=http://127.0.0.1:14499 --idtoken=C:/ProgramData/dynatrace/oneagent/agent\\runtime\\datasources\\dsauthtoken --monitoring_config_id=statsd_listener",
                      "EXE_NAME": "oneagentsourcestatsd.exe",
                      "EXE_PATH": "C:/Program Files/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd.exe",
                      "PG_ID_CALC_INPUT_KEY_LINKAGE": "dynamic"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "GO",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "wdavdaemon",
                    "dt.process_group.id": "PROCESS_GROUP-67F73DBC237A94D6",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-D73AE244E0F00C45",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D73AE244E0F00C45",
                    "lifetime": {
                      "end": "2026-04-22T08:40:00.000000000+02:00",
                      "start": "2026-04-09T14:52:00.000000000+02:00"
                    },
                    "name": "wdavdaemon",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/microsoft/mdatp/sbin/wdavdaemon",
                      "EXE_NAME": "wdavdaemon",
                      "EXE_PATH": "/opt/microsoft/mdatp/sbin/wdavdaemon"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.lb.core.ServerBoot",
                    "dt.process_group.id": "PROCESS_GROUP-8B93C3F3C1BE8CF0",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-DC8B5C12DEC9B53E",
                    "id_classic": "PROCESS_GROUP_INSTANCE-DC8B5C12DEC9B53E",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.lb.core.ServerBoot",
                    "port": [
                      "6968",
                      "6969",
                      "6970",
                      "6979",
                      "6985",
                      "6986",
                      "6995",
                      "6996",
                      "8968",
                      "8969",
                      "8970",
                      "8979",
                      "8985",
                      "8986",
                      "8995",
                      "8996",
                      "33059",
                      "33105",
                      "33113",
                      "33703",
                      "34089",
                      "35321",
                      "35983",
                      "37733",
                      "38309",
                      "38837",
                      "39786",
                      "39917",
                      "40655",
                      "41435",
                      "45569",
                      "45971"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-17-amazon-corretto/bin/java -DjavaCommandLineKeyword=lb-server_MuSI-default-VQX_PVSE-vqx -Djava.library.path=/appl/vacoms/vacoms -Dcom.sun.management.jmxremote=true -Djava.rmi.server.hostname=10.164.195.84 -Dcom.sun.management.jmxremote.port=6986 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dspring.profiles.active=vqx -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom -Dotel.service.name=lb-MuSI-default-VQX_PVSE-vqx -Dotel.resource.attributes=deployment.environment=test,team=2217_BSP,region=eu,dt.security_context=TPI_Messaging,dt.cost.costcenter=tpi_messaging,dt.cost.product=tpi_messaging_test -Dotel.exporter.otlp.endpoint=http://10.164.18.36:4317 -Dotel.exporter.otlp.headers=Authorization=Api-Token%20dt0c01.PVQGHBKSTPGJHSQGIVPST3QB.G2NHLAYBESP5SKZHF2KCDPCZ2DYSKFAP26C4WERKMEA5TIG6AQGTM45XXQZEFJSE * -Dotel.exporter.otlp.insecure=true -Dotel.traces.exporter=otlp -Dotel.metrics.exporter=otlp -Dotel.logs.exporter=otlp -javaagent:/appl/lb/dynatrace/opentelemetry-javaagent.jar -cp lib/amqp-client-5.14.2.jar:lib/antlr4-runtime-4.7.2.jar:lib/aopalliance-repackaged-2.6.1.jar:lib/aqapi-12.2.0.1.0.jar:lib/asm-9.1.jar:lib/asm-analysis-7.1.jar:lib/asm-commons-7.1.jar:lib/asm-tree-7.1.jar:lib/asm-util-7.1.jar:lib/cache-api-1.1.1.jar:lib/cglib-nodep-3.3.0.jar:lib/checker-qual-3.12.0.jar:lib/classgraph-4.8.165.jar:lib/classmate-1.5.1.jar:lib/class-model-2.6.1.jar:lib/commons-collections4-4.4.jar:lib/commons-dbcp2-2.9.0.jar:lib/commons-io-2.11.0.jar:lib/commons-lang3-3.12.0.jar:lib/commons-logging-1.2.jar:lib/commons-pool2-2.11.1.jar:lib/connector-api-1.5.jar:lib/ehcache-3.10.0.jar:lib/error_prone_annotations-2.11.0.jar:lib/failureaccess-1.0.1.jar:lib/guava-31.1-jre.jar:lib/HdrHistogram-2.1.12.jar:lib/hibernate-validator-6.2.4.Final.jar:lib/hk2-2.6.1.jar:lib/hk2-api-2.6.1.jar:lib/hk2-core-2.6.1.jar:lib/hk2-locator-2.6.1.jar:lib/hk2-runlevel-2.6.1.jar:lib/hk2-utils-2.6.1.jar:lib/istack-commons-runtime-3.0.12.jar:lib/j2objc-annotations-1.3.jar:lib/jackson-annotations-2.13.3.jar:lib/jackson-core-2.13.3.jar:lib/jackson-databind-2.13.3.jar:lib/jackson-dataformat-yaml-2.13.3.jar:lib/jackson-datatype-jdk8-2.13.3.jar:lib/jackson-datatype-jsr310-2.13.3.jar:lib/jackson-jaxrs-base-2.13.3.jar:lib/jackson-jaxrs-json-provider-2.13.3.jar:lib/jackson-module-jaxb-annotations-2.13.3.jar:lib/jackson-module-parameter-names-2.13.3.jar:lib/jakarta.activation-1.2.2.jar:lib/jakarta.activation-api-1.2.2.jar:lib/jakarta.annotation-api-1.3.5.jar:lib/jakarta.inject-2.6.1.jar:lib/jakarta.validation-api-2.0.2.jar:lib/jakarta.ws.rs-api-2.1.6.jar:lib/jakarta.xml.bind-api-2.3.3.jar:lib/javassist-3.30.1-GA.jar:lib/javax.activation-api-1.2.0.jar:lib/javax.jms-api-2.0.1.jar:lib/javax.transaction-api-1.3.jar:lib/jaxb-api-2.3.1.jar:lib/jaxb-runtime-2.3.6.jar:lib/jaybird-4.0.6.java8.jar:lib/jboss-logging-3.4.3.Final.jar:lib/jersey-bean-validation-2.35.jar:lib/jersey-client-2.35.jar:lib/jersey-common-2.35.jar:lib/jersey-container-servlet-2.35.jar:lib/jersey-container-servlet-core-2.35.jar:lib/jersey-entity-filtering-2.35.jar:lib/jersey-hk2-2.35.jar:lib/jersey-media-json-jackson-2.35.jar:lib/jersey-server-2.35.jar:lib/jersey-spring5-2.35.jar:lib/joox-1.6.2.jar:lib/jsr305-3.0.2.jar:lib/jtidy-r938.jar:lib/jul-to-slf4j-1.7.36.jar:lib/LatencyUtils-2.0.3.jar:lib/lb-core-6.0.0.jar:lib/lb-integration-extension-6.0.7.jar:lib/lb-musi-plugins-base-6.0.5.jar:lib/lb-plugins-l2-6.0.5.jar:lib/lb-plugins-optx-6.0.7.jar:lib/lb-plugins-qv-6.0.39.jar:lib/lb-runtime-core-6.0.6.jar:lib/lb-runtime-musi-default-6.0.61.jar:lib/lb-service-jdbc-6.0.1.jar:lib/lb-service-oxm-6.1.0.jar:lib/lb-service-tti-6.2.0.jar:lib/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar:lib/log4j-api-2.17.2.jar:lib/log4j-to-slf4j-2.17.2.jar:lib/logback-classic-1.2.11.jar:lib/logback-core-1.2.11.jar:lib/micrometer-core-1.9.3.jar:lib/mssql-jdbc-10.2.1.jre8.jar:lib/nvapispy2-5.3.3.2.jar:lib/nvjdbc2-5.3.3.2.jar:lib/nvlog2-5.3.3.2.jar:lib/ojdbc11-21.5.0.0.jar:lib/osgi-resource-lo(truncated)",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-amazon-corretto/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.lb.core.ServerBoot"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Amazon.com Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.lb.dki.DkiIllWebserviceApplication",
                    "dt.process_group.id": "PROCESS_GROUP-8943E2680CD4A79F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-DE5B7D8913A39E51",
                    "id_classic": "PROCESS_GROUP_INSTANCE-DE5B7D8913A39E51",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "/appl/lb/dki/DkiIllWebservice-0.1.3-spring-boot.jar",
                    "port": [
                      "10000"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-17-amazon-corretto/bin/java -Dserver.port=10000 -jar /appl/lb/dki/DkiIllWebservice-0.1.3-spring-boot.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-amazon-corretto/bin/java",
                      "JAVA_JAR_FILE": "DkiIllWebservice-*-spring-boot.jar",
                      "JAVA_JAR_PATH": "/appl/lb/dki/DkiIllWebservice-*-spring-boot.jar",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.lb.dki.DkiIllWebserviceApplication"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Amazon.com Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "sqldeveloper*W.exe",
                    "dt.process_group.id": "PROCESS_GROUP-2D2336E835089F23",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-E83CAEB533B948B4",
                    "id_classic": "PROCESS_GROUP_INSTANCE-E83CAEB533B948B4",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "sqldeveloper*W.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\sqldeveloper\\sqldeveloper\\bin\\sqldeveloper64W.exe",
                      "EXE_NAME": "sqldeveloper*W.exe",
                      "EXE_PATH": "C:\\SQLDEVELOPER\\SQLDEVELOPER\\BIN\\SQLDEVELOPER*W.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Oracle Corporation",
                        "type": "JAVA",
                        "version": "0.0.0.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Linux System",
                    "dt.process_group.id": "PROCESS_GROUP-18D1B321C123F5BE",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-F4CA9EB014C28C55",
                    "id_classic": "PROCESS_GROUP_INSTANCE-F4CA9EB014C28C55",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "Linux System",
                    "port": [
                      "111"
                    ],
                    "process.metadata": {
                      "OSAGENT_GROUPID_NAME": "Linux System",
                      "OSAGENT_INSTANCEID_NAME": "Linux System"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "LINUX_SYSTEM",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "IpOverUsbSvc.exe",
                    "dt.process_group.id": "PROCESS_GROUP-2A21DC716DF45C26",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-FC69CDC5BE28BD20",
                    "id_classic": "PROCESS_GROUP_INSTANCE-FC69CDC5BE28BD20",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "IpOverUsbSvc.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Common\\ Files\\Microsoft\\ Shared\\Phone\\ Tools\\CoreCon\\11.0\\bin\\IpOverUsbSvc.exe",
                      "EXE_NAME": "IpOverUsbSvc.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\COMMON FILES\\MICROSOFT SHARED\\PHONE TOOLS\\CORECON\\*\\BIN\\IPOVERUSBSVC.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OpenHandleCollector.exe",
                    "dt.process_group.id": "PROCESS_GROUP-FAF845F6EF21BD0F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-821C34B48FBDBED9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-821C34B48FBDBED9",
                    "lifetime": {
                      "end": "2026-04-22T02:26:00.000000000+02:00",
                      "start": "2026-04-09T12:00:00.000000000+02:00"
                    },
                    "name": "OpenHandleCollector.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\ProgramData\\Microsoft\\Windows\\ Defender\\ Advanced\\ Threat\\ Protection\\DataCollection\\8824.15337919.0.15337919-877b0ddab9c803005f20143d1b74196232d8c16d\\OpenHandleCollector.exe",
                      "EXE_NAME": "OpenHandleCollector.exe",
                      "EXE_PATH": "C:\\PROGRAMDATA\\MICROSOFT\\WINDOWS DEFENDER ADVANCED THREAT PROTECTION\\DATACOLLECTION\\*-*\\OPENHANDLECOLLECTOR.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "curl",
                    "dt.process_group.id": "PROCESS_GROUP-015643D50741EC6A",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-46763F2AA4BEFE80",
                    "id_classic": "PROCESS_GROUP_INSTANCE-46763F2AA4BEFE80",
                    "lifetime": {
                      "end": "2026-04-21T16:22:00.000000000+02:00",
                      "start": "2026-04-20T12:52:00.000000000+02:00"
                    },
                    "name": "curl",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "curl --fail -O https://nexus.voestalpine.net/repository//maven-releases/com/voestalpine/lb/IL3.FTA.PQS-S143.KollektivAbschliessen/6.0.0/IL3.FTA.PQS-S143.KollektivAbschliessen-6.0.0.jar",
                      "EXE_NAME": "curl",
                      "EXE_PATH": "/usr/bin/curl"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "SQLITE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ifind.exe",
                    "dt.process_group.id": "PROCESS_GROUP-C14C6321E62A18D5",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-5924049394752701",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5924049394752701",
                    "lifetime": {
                      "end": "2026-04-21T20:03:00.000000000+02:00",
                      "start": "2026-04-09T20:03:00.000000000+02:00"
                    },
                    "name": "ifind.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "ifind.exe -j 97825971 -a 2:11203 -t 2 -d 2217ma0010at002.voestalpine.root.local*2217ma0010at002*8400 -r 1776715222 -ab 0 -i 1 -cs 2217cs0010at01 -s default -jt 97825971:4:1:0:0:17492 -systemFiles -mountPath -seb -ffe 0 -aftersynth -lf 12680694 -li 97792869 -ls 97792869 -lsf 97795176 -attrEx 0 -amrCIFS -sct 1580902444 -cn 2236dblogwebt -vm Instance001",
                      "EXE_NAME": "ifind.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\COMMVAULT\\CONTENTSTORE\\BASE\\IFIND.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "smtpd",
                    "dt.process_group.id": "PROCESS_GROUP-ACBAEAD5118F93CA",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-8BC2EF92D13D7A95",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8BC2EF92D13D7A95",
                    "lifetime": {
                      "end": "2026-04-21T16:50:00.000000000+02:00",
                      "start": "2026-02-26T15:28:00.000000000+01:00"
                    },
                    "name": "smtpd",
                    "port": [
                      "25"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "25"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "smtpd -n smtp -t inet -u -o stress=",
                      "EXE_NAME": "smtpd",
                      "EXE_PATH": "/usr/libexec/postfix/smtpd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "smtpd",
                    "dt.process_group.id": "PROCESS_GROUP-ACBAEAD5118F93CA",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-A428366130F5D414",
                    "id_classic": "PROCESS_GROUP_INSTANCE-A428366130F5D414",
                    "lifetime": {
                      "end": "2026-04-21T16:50:00.000000000+02:00",
                      "start": "2026-04-21T16:50:00.000000000+02:00"
                    },
                    "name": "smtpd",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "smtpd -n smtp -t inet -u -o stress=",
                      "EXE_NAME": "smtpd",
                      "EXE_PATH": "/usr/libexec/postfix/smtpd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "get_react_component_versions.py",
                    "dt.process_group.id": "PROCESS_GROUP-763D6697A710271C",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-B4C68CB1FC90DCC7",
                    "id_classic": "PROCESS_GROUP_INSTANCE-B4C68CB1FC90DCC7",
                    "lifetime": {
                      "end": "2026-04-21T21:49:00.000000000+02:00",
                      "start": "2026-04-16T21:17:00.000000000+02:00"
                    },
                    "name": "get_react_component_versions.py",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/bin/python /opt/microsoft/mdatp/conf/scripts/get_react_component_versions.py --ScriptName get_react_component_versions.py --component-list react-server-dom-parcel,react-server-dom-turbopack,react-server-dom-webpack,next,n8n,axios,plain-crypto-js --search-path / --skip-dirs .git,__pycache__,.cache,.env --skip-paths /var/tmp,/tmp",
                      "EXE_NAME": "python*",
                      "EXE_PATH": "/usr/bin/python*",
                      "OSAGENT_GROUPID_NAME": "get_react_component_versions.py",
                      "OSAGENT_INSTANCEID_NAME": "/opt/microsoft/mdatp/conf/scripts/get_react_component_versions.py",
                      "PYTHON_SCRIPT": "get_react_component_versions.py",
                      "PYTHON_SCRIPT_PATH": "/opt/microsoft/mdatp/conf/scripts/get_react_component_versions.py"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "PYTHON",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "clBackup",
                    "dt.process_group.id": "PROCESS_GROUP-0846EFC95EE24290",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-D8B69738BADF0632",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D8B69738BADF0632",
                    "lifetime": {
                      "end": "2026-04-21T20:18:00.000000000+02:00",
                      "start": "2026-02-26T19:34:00.000000000+01:00"
                    },
                    "name": "clBackup",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/iDataAgent/clBackup -j 97826590 -a 2:5707 -t 2 -i 3 -d 2217ma0010at001.voestalpine.root.local*2217ma0010at001*8400 -io 1 -jt 97826590:7:1:0:0:7091 -idxma 2217ma0010at001.voestalpine.root.local*2217ma0010at001*8400 -numstreams 2 -ab 0 -parent 1 -c 22 -maxcolnum 3 -numcol 2 -numfolder 14 -size 6468509696 -incimage -incimage -idx2 -CLN -idx2 -new_scan -hloff -r 1776795313 -CLO -attrEx 0 -cn vadsjms01d -vm Instance001",
                      "EXE_NAME": "clBackup",
                      "EXE_PATH": "/opt/commvault/iDataAgent64/clBackup"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent eBPF service discovery",
                    "dt.process_group.id": "PROCESS_GROUP-57EEEE69BC36FE53",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-113E166B9404ADEE",
                    "id_classic": "PROCESS_GROUP_INSTANCE-113E166B9404ADEE",
                    "lifetime": {
                      "end": "2026-04-22T08:40:00.000000000+02:00",
                      "start": "2026-04-09T14:51:00.000000000+02:00"
                    },
                    "name": "OneAgent eBPF service discovery",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/lib64/oneagentebpfdiscovery --log-dir /var/log/dynatrace/oneagent/os/ --log-no-stdout --log-level info",
                      "EXE_NAME": "oneagentebpfdiscovery",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentebpfdiscovery",
                      "OSAGENT_GROUPID_NAME": "OneAgent eBPF service discovery",
                      "OSAGENT_INSTANCEID_NAME": "OneAgent eBPF service discovery"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Extensions Controller",
                    "dt.process_group.id": "PROCESS_GROUP-1D438716A25E8535",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-155429CB5FE42AC1",
                    "id_classic": "PROCESS_GROUP_INSTANCE-155429CB5FE42AC1",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:49:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Extensions Controller",
                    "port": [
                      "14499"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentextensions.exe -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=\\\\.\\pipe\\oneagentextensions_pipe_16264",
                      "EXE_NAME": "oneagentextensions.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\DYNATRACE\\ONEAGENT\\AGENT\\LIB64\\ONEAGENTEXTENSIONS.EXE",
                      "OSAGENT_GROUPID_NAME": "Dynatrace OneAgent Extensions Controller",
                      "OSAGENT_INSTANCEID_NAME": "Dynatrace OneAgent Extensions Controller"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent system monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-5F2B1615975F58A9",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-186675C0F768194A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-186675C0F768194A",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "OneAgent system monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog -bg -config=/opt/dynatrace/oneagent/agent/conf/watchdog.conf",
                      "EXE_NAME": "oneagentwatchdog",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog",
                      "OSAGENT_GROUPID_NAME": "ruxit system monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit system monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "RabbitMQ",
                    "dt.process_group.id": "PROCESS_GROUP-DBD841F4642235ED",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-23B7E72A62AEAD4B",
                    "id_classic": "PROCESS_GROUP_INSTANCE-23B7E72A62AEAD4B",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "RabbitMQ",
                    "port": [
                      "5672",
                      "15672",
                      "15692",
                      "25672"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib64/erlang/erts-15.2.6/bin/beam.smp -W w -MBas ageffcbf -MHas ageffcbf -MBlmbcs 512 -MHlmbcs 512 -MMmcs 30 -pc unicode -P 1048576 -t 5000000 -stbt db -zdbbl 128000 -sbwt none -sbwtdcpu none -sbwtdio none -- -root /usr/lib64/erlang -bindir /usr/lib64/erlang/erts-15.2.6/bin -progname erl -- -home /var/lib/rabbitmq -- -pa -noshell -noinput -s rabbit boot -boot start_sasl -syslog logger [] -syslog syslog_error_logger false -kernel prevent_overlapping_partitions false --",
                      "EXE_NAME": "beam.smp",
                      "EXE_PATH": "/usr/lib64/erlang/erts-15.2.6/bin/beam.smp",
                      "OSAGENT_GROUPID_NAME": "RabbitMQ",
                      "OSAGENT_INSTANCEID_NAME": "RabbitMQ /var/lib/rabbitmq"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "AMQP",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "RABBIT_MQ",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.util.sql.StoredProcedureRunner",
                    "dt.process_group.id": "PROCESS_GROUP-D7F85AB495099216",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-2852304CA29237C5",
                    "id_classic": "PROCESS_GROUP_INSTANCE-2852304CA29237C5",
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-04-09T15:18:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.util.sql.StoredProcedureRunner",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaRunStoredProc -Xbatch -mx50m -ms20m -DAPP_ID=RunStoredProc -Djava.security.egd=file:/dev/../dev/urandom -classpath /appl/TGRuntime/java/lib/appinfoApi-1.6.jar:/appl/TGRuntime/java/lib/ojdbc7.jar:/appl/TGRuntime/java/lib/javax.mail-1.6.2.jar:/appl/TGRuntime/java/lib/activation-1.1.1.jar:/appl/TGRuntime/java/lib/jdom.jar:/appl/TGRuntime/java/lib/log4j-core-2.17.1.jar:/appl/TGRuntime/java/lib/log4j-api-2.17.1.jar:/appl/TGRuntime/java/lib/quartzadditions-1.3.jar:/appl/TGRuntime/java/lib/quartz-2.2.3.jar:/appl/TGRuntime/java/lib/quartz-jobs-2.2.3.jar:/appl/TGRuntime/java/lib/c3p0-0.9.1.2.jar:/appl/TGRuntime/java/lib/slf4j-api-1.7.7.jar:/appl/TGRuntime/java/lib/slf4j-log4j12-1.7.7.jar:/appl/TGRuntime/java/lib/commons-logging.jar:/appl/TGRuntime/java/lib/commons-logging-api.jar:/appl/TGRuntime/java/lib/commons-collections-3.1.jar:/appl/TGRuntime/java/lib/amqp-client-5.19.0.jar:/appl/TGRuntime/java/class/SqlTools-1.7-all.jar com.voestalpine.util.sql.StoredProcedureRunner BA_DelAusBuf  QSTG tgrun tgrun FAPSchnittstellenSystem@voestalpine.com  TGrsp_DelAusbuf",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.util.sql.StoredProcedureRunner"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "master",
                    "dt.process_group.id": "PROCESS_GROUP-7DCA9FBFFA3A7773",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-285DABFEC6A57F60",
                    "id_classic": "PROCESS_GROUP_INSTANCE-285DABFEC6A57F60",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "master",
                    "port": [
                      "25"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/libexec/postfix/master -w",
                      "EXE_NAME": "master",
                      "EXE_PATH": "/usr/libexec/postfix/master"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Microsoft.VisualStudio.Web.Host.exe",
                    "dt.process_group.id": "PROCESS_GROUP-76E730ED08E52C0B",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-3236665A44316500",
                    "id_classic": "PROCESS_GROUP_INSTANCE-3236665A44316500",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "Microsoft.VisualStudio.Web.Host.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\Microsoft.VisualStudio.Web.Host.exe /endpointGuid:e3ab7588-c8a5-4def-bf60-99d28b7bdff3 /vsPid:10660 /authorisedUserSid:S-1-5-21-911618557-2501475664-2494579837-2714691 /readyEventName:VsCBMProcess:aada9541-6b5e-4279-816f-51fb56dd4afb /clientId:219ea27e-61eb-4cd6-ab18-48baeaf06653 /attachDebugger:False",
                      "EXE_NAME": "Microsoft.VisualStudio.Web.Host.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\MICROSOFT.VISUALSTUDIO.WEB.HOST.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.tti.TTISend",
                    "dt.process_group.id": "PROCESS_GROUP-C64ED8D3A50AE7F2",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-39E4B22B92914221",
                    "id_classic": "PROCESS_GROUP_INSTANCE-39E4B22B92914221",
                    "lifetime": {
                      "end": "2026-04-22T08:29:00.000000000+02:00",
                      "start": "2026-04-09T14:59:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.tti.TTISend",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaD2_S5513 -Xbatch -Dlog4j2.configurationFile=/appl/TGRuntime/bin/log4j2.properties -DlogFilename=TTIS_D2_S5513 -Xmx200m -Xms40m -XX:OnOutOfMemoryError=/appl/TGRuntime/bin/LogOoMError.sh\\ TTI\\ D2_S5513 -DAPP_ID=D2_S5513 -Djava.security.egd=file:/dev/../dev/urandom -Djava.library.path=/etc/vacoms/vacoms -DDBTreiber=oracle.jdbc.driver.OracleDriver -Dthin=jdbc:oracle:thin:@//2217dboracs08t:1521/QSTG -classpath /appl/TGRuntime/java/class/tti-2.0.3-all.jar:/appl/TGRuntime/java/lib/ojdbc8-12.2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.mail-2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.activation-2.0.1.jar:/appl/TGRuntime/java/lib/log4j-core-2.20.0.jar:/appl/TGRuntime/java/lib/log4j-api-2.20.0.jar:/appl/TGRuntime/java/lib/datedFileAppender-1.0.2.jar:/appl/TGRuntime/java/lib/jdom.jar:/appl/TGRuntime/java/lib/appinfoApi-2.0.1.jar:/appl/TGRuntime/java/lib/amqp-client-5.19.0.jar:/appl/TGRuntime/java/lib/slf4j-api-2.0.9.jar:/appl/TGRuntime/java/lib/log4j-slf4j2-impl-2.20.0.jar com.voestalpine.tgsys.tti.TTISend TGRUN TGRUN QSTG D2_S5513",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.tti.TTISend"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent system monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-5F2B1615975F58A9",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-3A9DE5A584FC55EB",
                    "id_classic": "PROCESS_GROUP_INSTANCE-3A9DE5A584FC55EB",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "OneAgent system monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog -bg -config=/opt/dynatrace/oneagent/agent/conf/watchdog.conf",
                      "EXE_NAME": "oneagentwatchdog",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentwatchdog",
                      "OSAGENT_GROUPID_NAME": "ruxit system monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit system monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Extensions Controller",
                    "dt.process_group.id": "PROCESS_GROUP-1D438716A25E8535",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-3B33DBF6E3D0F4E9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-3B33DBF6E3D0F4E9",
                    "lifetime": {
                      "end": "2026-04-22T08:41:00.000000000+02:00",
                      "start": "2026-04-16T13:41:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Extensions Controller",
                    "port": [
                      "14499"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentextensions -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentextensions_pipe_63260",
                      "EXE_NAME": "oneagentextensions",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentextensions",
                      "OSAGENT_GROUPID_NAME": "Dynatrace OneAgent Extensions Controller",
                      "OSAGENT_INSTANCEID_NAME": "Dynatrace OneAgent Extensions Controller"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "NotificationManager.exe",
                    "dt.process_group.id": "PROCESS_GROUP-CB8BAB31377BE954",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-4253A655DC36D0B7",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4253A655DC36D0B7",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "NotificationManager.exe",
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\HEAT\\ Software\\EMSSAgent\\01\\patch\\NotificationManager.exe",
                      "EXE_NAME": "NotificationManager.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES\\HEAT SOFTWARE\\EMSSAGENT\\*\\PATCH\\NOTIFICATIONMANAGER.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.arch.Del2ArchiveApplica (sim)",
                    "dt.process_group.id": "PROCESS_GROUP-B65E590FD35118C5",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-49F433F7E4CABD16",
                    "id_classic": "PROCESS_GROUP_INSTANCE-49F433F7E4CABD16",
                    "lifetime": {
                      "end": "2026-04-22T04:30:00.000000000+02:00",
                      "start": "2026-04-09T19:20:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2ArchiveApplication-3.0.0-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -Xmx128m -jar -Dspring.profiles.active=sim -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2ArchiveApplication-3.0.0-SNAPSHOT.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*ArchiveApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*ArchiveApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "sim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.arch.Del2ArchiveApplica"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.shovel.Shovel",
                    "dt.process_group.id": "PROCESS_GROUP-6918A240A3273C61",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-4A5B13C9AB74BE67",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4A5B13C9AB74BE67",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.shovel.Shovel",
                    "port": [
                      "9885",
                      "19888"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "..\\jdk17.0.15_6\\bin\\java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=19888 -Dlog4j2.configurationFile=..\\shovel_log4j2.properties -Djava.library.path=./lib;.. -classpath ./lib/wrapper.jar;../bufferutil-all-2.0.3-SNAPSHOT.jar;../log4j-api-2.17.1.jar;../log4j-core-2.17.1.jar;../jakarta.mail-2.0.1.jar;../jakarta.activation-2.0.1.jar;../amqp-client-5.19.0.jar;../slf4j-api-2.0.9.jar;../jackson-annotations-2.17.2.jar;../jackson-core-2.17.2.jar;../jackson-databind-2.17.2.jar;../appinfoApi-2.0.0.jar -Dwrapper.key=uEG2iOTjikfHtu_j -Dwrapper.port=32000 -Dwrapper.jvm.port.min=31000 -Dwrapper.jvm.port.max=31999 -Dwrapper.pid=3396 -Dwrapper.version=3.2.0 -Dwrapper.native_library=wrapper -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=10 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperStartStopApp com.voestalpine.tgsys.shovel.Shovel 1 ../shovel.properties com.voestalpine.tgsys.shovel.ShovelStop false 0",
                      "EXE_NAME": "java.exe",
                      "EXE_PATH": "D:\\VACOMS\\SHOVEL\\JDK*_*\\BIN\\JAVA.EXE",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.shovel.Shovel"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Amazon.com Inc.",
                        "type": "JAVA",
                        "version": "17.0.15.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Monitoring Agent",
                    "dt.process_group.id": "PROCESS_GROUP-90B3322F3C97559F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-4F34F60B2059BD25",
                    "id_classic": "PROCESS_GROUP_INSTANCE-4F34F60B2059BD25",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "Monitoring Agent",
                    "port": [
                      "5666"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\WotanAgent\\nscp.exe service --run",
                      "EXE_NAME": "nscp.exe",
                      "EXE_PATH": "C:\\WOTANAGENT\\NSCP.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "master",
                    "dt.process_group.id": "PROCESS_GROUP-7DCA9FBFFA3A7773",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-51B1BAAC69F07F29",
                    "id_classic": "PROCESS_GROUP_INSTANCE-51B1BAAC69F07F29",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "master",
                    "port": [
                      "25"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "25"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/libexec/postfix/master -w",
                      "EXE_NAME": "master",
                      "EXE_PATH": "/usr/libexec/postfix/master"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "javaLOG_*.exe",
                    "dt.process_group.id": "PROCESS_GROUP-5C1FCD66089A3621",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-5673896631282AF1",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5673896631282AF1",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "javaLOG_*.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "D:\\TGRuntime\\java\\jdk17.0.15_6\\bin\\javaLOG_010 -Dlog4j2.configurationFile=D:\\TGRuntime\\bin\\log4j2.properties -DlogFilename=TTIRS_LOG010 -mx256m -ms40m -Xbatch -classpath D:\\TGRuntime\\java\\lib\\ojdbc8_133000.jar;D:\\TGRuntime\\java\\lib\\jakarta.mail-2.0.1.jar;D:\\TGRuntime\\java\\lib\\jakarta.activation-2.0.1.jar;;D:\\TGRuntime\\java\\lib\\log4j-core-2.17.1.jar;;D:\\TGRuntime\\java\\lib\\log4j-api-2.17.1.jar;;D:\\TGRuntime\\java\\lib\\datedFileAppender-1.0.2.jar;;D:\\TGRuntime\\java\\lib\\jdom.jar;;D:\\TGRuntime\\java\\class\\appinfoApi-2.0.0.jar;D:\\TGRuntime\\java\\lib\\amqp-client-5.19.0.jar;D:\\TGRuntime\\java\\lib\\slf4j-api-2.0.9.jar;D:\\TGRuntime\\java\\class\\tti-all-2.0.3-SNAPSHOT.jar -Dmail_to_dba=OracleDBA@voestalpine.com -Dthin=jdbc:oracle:thin:@ldap://oraldap:389/LOGWEBT,cn=OracleContext,dc=world com.voestalpine.tgsys.tti.TTIReceiveServer TGRUN _%%R*n2023TG*%%_ LOGWEBT LOG010",
                      "EXE_NAME": "javaLOG_*.exe",
                      "EXE_PATH": "D:\\TGRUNTIME\\JAVA\\JDK*_*\\BIN\\JAVALOG_*.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Amazon.com Inc.",
                        "type": "JAVA",
                        "version": "17.0.15.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "RabbitMQ",
                    "dt.process_group.id": "PROCESS_GROUP-DBD841F4642235ED",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-673695F01D4056D6",
                    "id_classic": "PROCESS_GROUP_INSTANCE-673695F01D4056D6",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "RabbitMQ",
                    "port": [
                      "5672",
                      "15672",
                      "15692",
                      "25672"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib64/erlang/erts-15.2.7.7/bin/beam.smp -W w -MBas ageffcbf -MHas ageffcbf -MBlmbcs 512 -MHlmbcs 512 -MMmcs 30 -pc unicode -P 1048576 -t 5000000 -stbt db -zdbbl 128000 -sbwt none -sbwtdcpu none -sbwtdio none -- -root /usr/lib64/erlang -bindir /usr/lib64/erlang/erts-15.2.7.7/bin -progname erl -- -home /var/lib/rabbitmq -- -pa -noshell -noinput -s rabbit boot -boot start_sasl -syslog logger [] -syslog syslog_error_logger false -kernel prevent_overlapping_partitions false --",
                      "EXE_NAME": "beam.smp",
                      "EXE_PATH": "/usr/lib64/erlang/erts-15.2.7.7/bin/beam.smp",
                      "OSAGENT_GROUPID_NAME": "RabbitMQ",
                      "OSAGENT_INSTANCEID_NAME": "RabbitMQ /var/lib/rabbitmq"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "AMQP",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "RABBIT_MQ",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvd",
                    "dt.process_group.id": "PROCESS_GROUP-D2935558F3FA544A",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-7383FE9AB9591ECC",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7383FE9AB9591ECC",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "cvd",
                    "port": [
                      "8400",
                      "34480",
                      "44942",
                      "53642"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "8400",
                      "44942",
                      "48867",
                      "53642"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/Base/cvd",
                      "EXE_NAME": "cvd",
                      "EXE_PATH": "/opt/commvault/Base64/cvd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Antimalware Service Executable",
                    "dt.process_group.id": "PROCESS_GROUP-FA79838E7C6B2E57",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-776911866C972A50",
                    "id_classic": "PROCESS_GROUP_INSTANCE-776911866C972A50",
                    "lifetime": {
                      "end": "2026-04-22T05:04:00.000000000+02:00",
                      "start": "2026-04-14T04:49:00.000000000+02:00"
                    },
                    "name": "Antimalware Service Executable",
                    "process.metadata": {
                      "EXE_NAME": "MsMpEng.exe",
                      "EXE_PATH": "C:\\PROGRAMDATA\\MICROSOFT\\WINDOWS DEFENDER\\PLATFORM\\4.18.26030.3011-0\\MSMPENG.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.d2apanf.Del2ApAnforderu (apanf)",
                    "dt.process_group.id": "PROCESS_GROUP-824413BEB1C4936E",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-7DEE7946865F36BD",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7DEE7946865F36BD",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2ApAnforderungApplication-3.0.0-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -Xms512m -jar -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom -Doracle.jdbc.autoCommitSpecCompliant=false -Dspring.profiles.active=sim,tel,apanf -Djava.library.path=/appl/vacoms/vacoms Del2ApAnforderungApplication-3.0.0-SNAPSHOT.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*ApAnforderungApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*ApAnforderungApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "apanf",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.d2apanf.Del2ApAnforderu"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.d2primdatanf.Del2Primae (sim)",
                    "dt.process_group.id": "PROCESS_GROUP-80F7E174AD22B96F",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-7F5D8B8C9AB91CBC",
                    "id_classic": "PROCESS_GROUP_INSTANCE-7F5D8B8C9AB91CBC",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-09T14:51:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2PrimaerdatenAnforderungApplication-3.0.3-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -jar -Xmx128m -Dspring.profiles.active=sim -Dlog.suffix=2 -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2PrimaerdatenAnforderungApplication-3.0.3-SNAPSHOT.jar 2",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*PrimaerdatenAnforderungApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*PrimaerdatenAnforderungApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "sim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.d2primdatanf.Del2Primae"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "lsof",
                    "dt.process_group.id": "PROCESS_GROUP-3E75E381A27F7F74",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-8996F9778D482893",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8996F9778D482893",
                    "lifetime": {
                      "end": "2026-04-22T03:12:00.000000000+02:00",
                      "start": "2026-03-01T03:27:00.000000000+01:00"
                    },
                    "name": "lsof",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/sbin/lsof",
                      "EXE_NAME": "lsof",
                      "EXE_PATH": "/usr/sbin/lsof"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "WrappHSQL.exe",
                    "dt.process_group.id": "PROCESS_GROUP-1AFAB7A2B7669035",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-8B9D5B6CF07319B9",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8B9D5B6CF07319B9",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "WrappHSQL.exe",
                    "port": [
                      "32001"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "D:\\TGRuntime\\wrapper-windows-x86-32-3.3.1\\bin\\WrappHSQL.exe -s D:\\TGRuntime\\wrapper-windows-x86-32-3.3.1\\bin\\LOGWEBT_HSQL.conf",
                      "EXE_NAME": "WrappHSQL.exe",
                      "EXE_PATH": "D:\\TGRUNTIME\\WRAPPER-WINDOWS-X86-32-3.3.1\\BIN\\WRAPPHSQL.EXE"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvfwd",
                    "dt.process_group.id": "PROCESS_GROUP-E035217C58A91467",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-8CE4B95EC76CF9E0",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8CE4B95EC76CF9E0",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "cvfwd",
                    "port": [
                      "8403",
                      "49511",
                      "60814"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "8403",
                      "40815",
                      "59291"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/Base/cvfwd",
                      "EXE_NAME": "cvfwd",
                      "EXE_PATH": "/opt/commvault/Base64/cvfwd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "IIS app pool Logweb",
                    "dt.process_group.id": "PROCESS_GROUP-AD807CC6E4FC2D03",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-8EC3CD4FECAFAF05",
                    "id_classic": "PROCESS_GROUP_INSTANCE-8EC3CD4FECAFAF05",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "IIS app pool Logweb",
                    "port": [
                      "443"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\WINDOWS\\SysWOW64\\inetsrv\\w3wp.exe -ap Logweb -v v4.0 -l webengine4.dll -a \\\\.\\pipe\\iisipmfd96355e-e6f7-48b1-bbf1-e0e5c8630c6d -h C:\\inetpub\\temp\\apppools\\Logweb\\Logweb.config -w  -m 0",
                      "EXE_NAME": "w*wp.exe",
                      "EXE_PATH": "C:/WINDOWS/SysWOW*/inetsrv/w*wp.exe",
                      "IIS_APP_POOL": "Logweb"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "IIS_APP_POOL",
                        "version": "10.0.20348.1"
                      },
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Source StatsD",
                    "dt.process_group.id": "PROCESS_GROUP-FE8B717AC18157A3",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-A80AD7B62D945BCF",
                    "id_classic": "PROCESS_GROUP_INSTANCE-A80AD7B62D945BCF",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-03-03T07:22:00.000000000+01:00"
                    },
                    "name": "Dynatrace OneAgent Source StatsD",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd --dsid=statsd_0 --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=statsd_listener",
                      "EXE_NAME": "oneagentsourcestatsd",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd",
                      "PG_ID_CALC_INPUT_KEY_LINKAGE": "dynamic"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "GO",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "com.voestalpine.tgsys.bufferutil.TGMQSender",
                    "dt.process_group.id": "PROCESS_GROUP-5734F557F0E4C93C",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-A89E9FAFC77F6CEF",
                    "id_classic": "PROCESS_GROUP_INSTANCE-A89E9FAFC77F6CEF",
                    "lifetime": {
                      "end": "2026-04-22T08:42:00.000000000+02:00",
                      "start": "2026-04-09T14:57:00.000000000+02:00"
                    },
                    "name": "com.voestalpine.tgsys.bufferutil.TGMQSender",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaTGrmqSend -Xmx128m -Xms20m -DAPP_ID=QTINKR_LOCAL -Djava.security.egd=file:/dev/../dev/urandom -Djava.library.path=/etc/vacoms/vacoms -Dlog4j2.configurationFile=/appl/TGRuntime/bin/log4j2.properties -DlogFilename=TGrmqSend_QTINKR -classpath /appl/TGRuntime/java/lib/ojdbc8-12.2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.mail-2.0.1.jar:/appl/TGRuntime/java/lib/jakarta.activation-2.0.1.jar:/appl/TGRuntime/java/lib/log4j-core-2.20.0.jar:/appl/TGRuntime/java/lib/log4j-api-2.20.0.jar:/appl/TGRuntime/java/lib/datedFileAppender-1.0.2.jar:/appl/TGRuntime/java/lib/jdom.jar:/appl/TGRuntime/java/lib/appinfoApi-2.0.1.jar:/appl/TGRuntime/java/lib/amqp-client-5.19.0.jar:/appl/TGRuntime/java/lib/slf4j-api-2.0.9.jar:/appl/TGRuntime/java/lib/log4j-slf4j2-impl-2.20.0.jar:/appl/TGRuntime/java/class/bufferutil-2.0.3-all.jar com.voestalpine.tgsys.bufferutil.TGMQSender jdbc:oracle:thin:@//2217dboracs08t:1521/QSTG tgrun tgrun LOCAL QTINKR",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "com.voestalpine.tgsys.bufferutil.TGMQSender"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "ServiceHub.DataWarehouseHost.exe",
                    "dt.process_group.id": "PROCESS_GROUP-EC472BA26E07F4F8",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-A91FCE9E82184C7A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-A91FCE9E82184C7A",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "ServiceHub.DataWarehouseHost.exe",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\ServiceHub\\Hosts\\ServiceHub.Host.CLR.AnyCPU\\ServiceHub.DataWarehouseHost.exe desktopClr$DataWarehouseHost 19b9a15a79064e1531211333e61118b5",
                      "EXE_NAME": "ServiceHub.DataWarehouseHost.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\SERVICEHUB\\HOSTS\\SERVICEHUB.HOST.CLR.ANYCPU\\SERVICEHUB.DATAWAREHOUSEHOST.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "OneAgent network monitoring",
                    "dt.process_group.id": "PROCESS_GROUP-13C5CAC121EAF766",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-B0C58F17CF336731",
                    "id_classic": "PROCESS_GROUP_INSTANCE-B0C58F17CF336731",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-02-26T09:02:00.000000000+01:00"
                    },
                    "name": "OneAgent network monitoring",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentnetwork -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentnetwork_pipe_28048",
                      "EXE_NAME": "oneagentnetwork",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentnetwork",
                      "OSAGENT_GROUPID_NAME": "ruxit network monitoring",
                      "OSAGENT_INSTANCEID_NAME": "ruxit network monitoring"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "org.hsqldb.Server",
                    "dt.process_group.id": "PROCESS_GROUP-3A18003E3C85AB9D",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-C5B26AC60B1E0E4E",
                    "id_classic": "PROCESS_GROUP_INSTANCE-C5B26AC60B1E0E4E",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "org.hsqldb.Server",
                    "port": [
                      "9001",
                      "32000"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/appl/TGRuntime/java/javaQuartz -Xms128m -Xmx1024m -Djava.library.path=../lib:../../bin -classpath ../../HSQLDB/hsqldb.jar:../lib/wrapper.jar:. -Dwrapper.key=Uj48ZUuXq2GKM05P -Dwrapper.port=32000 -Dwrapper.jvm.port.min=31000 -Dwrapper.jvm.port.max=31999 -Dwrapper.pid=1429 -Dwrapper.version=3.2.3 -Dwrapper.native_library=wrapper -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=10 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperSimpleApp org.hsqldb.Server -database ../../HSQLDB/SQMQuartz -port 9001 -silent true -trace false",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_MAIN_CLASS": "org.hsqldb.Server"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "javaQuartz.exe",
                    "dt.process_group.id": "PROCESS_GROUP-56C985D3582ADB93",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-C7E8DD9DE5D32247",
                    "id_classic": "PROCESS_GROUP_INSTANCE-C7E8DD9DE5D32247",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "javaQuartz.exe",
                    "port": [
                      "9945",
                      "51574"
                    ],
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "..\\..\\java\\java-1.8.0-openjdk-1.8.0.212-3.b04.redhat.windows.x86_64\\jre\\bin\\javaQuartz -Djava.security.policy=../../quartz-2.2.3/examples/java.policy -Dorg.quartz.properties=../../quartz-2.2.3/examples/quartzServer.properties -Dlog4j.configuration=log4j.xml -Duser.timezone=UTC -Dlog4j2.configurationFile=log4j2.xml -Xms40m -Xmx128m -Djava.library.path=../lib;../../bin -classpath ../../quartz-2.2.3/lib/quartz-2.2.3.jar;../../quartz-2.2.3/lib/core/commons-collections-3.1.jar;../../quartz-2.2.3/lib/core/commons-logging.jar;../../quartz-2.2.3/lib/core/commons-logging-api.jar;../../quartz-2.2.3/lib/optional/commons-beanutils.jar;../../quartz-2.2.3/lib/optional/commons-beanutils-bean-collections.jar;../../quartz-2.2.3/lib/optional/commons-beanutils-core.jar;../../quartz-2.2.3/lib/optional/commons-beanutils.jar;../../quartz-2.2.3/lib/optional/commons-dbcp-1.2.1.jar;../../quartz-2.2.3/lib/optional/commons-digester-1.7.jar;../../quartz-2.2.3/lib/optional/commons-pool-1.2.jar;../../quartz-2.2.3/lib/optional/commons-validator-1.1.4.jar;../../quartz-2.2.3/lib/quartzadditions-1.1.jar;../../quartz-2.2.3/lib/activation.jar;../../HSQLDB/hsqldb.jar;../lib/wrapper.jar;.;../../quartz-2.2.3/lib/quartz-jobs-2.2.3.jar;../../quartz-2.2.3/lib/c3p0-0.9.1.1.jar;../../quartz-2.2.3/lib/log4j-api-2.17.1.jar;../../quartz-2.2.3/lib/log4j-core-2.17.1.jar;../../quartz-2.2.3/lib/log4j-jcl-2.17.1.jar;../../quartz-2.2.3/lib/log4j-slf4j-impl-2.17.1.jar;../../quartz-2.2.3/lib/slf4j-api-1.7.25.jar;../../quartz-2.2.3/lib/slf4j-simple-1.7.7.jar;../../quartz-2.2.3/lib/voestalpineUtil-1.8.jar;../../quartz-2.2.3/lib/voestalpineMail-1.8.jar;../../quartz-2.2.3/lib/javax.mail-1.6.2.jar;../../quartz-2.2.3/lib/activation-1.1.jar * -Dwrapper.port=32002 -Dwrapper.jvm.port.min=31000 -Dwrapper.jvm.port.max=31999 -Dwrapper.pid=14536 -Dwrapper.version=3.3.1 -Dwrapper.native_library=wrapper -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=10 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperSimpleApp org.quartz.impl.QuartzServer",
                      "EXE_NAME": "javaQuartz.exe",
                      "EXE_PATH": "D:\\TGRUNTIME\\JAVA\\JAVA-*-OPENJDK-*-*.B*.REDHAT.WINDOWS.X*_*\\JRE\\BIN\\JAVAQUARTZ.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "JAVA",
                        "version": "8.0.2120.4"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Extensions Controller",
                    "dt.process_group.id": "PROCESS_GROUP-1D438716A25E8535",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-D97AF041AC19E1EB",
                    "id_classic": "PROCESS_GROUP_INSTANCE-D97AF041AC19E1EB",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-03-03T07:22:00.000000000+01:00"
                    },
                    "name": "Dynatrace OneAgent Extensions Controller",
                    "port": [
                      "14499"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "14499"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "oneagentextensions -Dcom.compuware.apm.WatchDogTimeout=900 -Dcom.compuware.apm.WatchDogPipe=/var/lib/dynatrace/oneagent/agent/watchdog/oneagentextensions_pipe_28048",
                      "EXE_NAME": "oneagentextensions",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/lib64/oneagentextensions",
                      "OSAGENT_GROUPID_NAME": "Dynatrace OneAgent Extensions Controller",
                      "OSAGENT_INSTANCEID_NAME": "Dynatrace OneAgent Extensions Controller"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "devenv.exe",
                    "dt.process_group.id": "PROCESS_GROUP-8CA0A9D50A9D50A0",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "PROCESS-E3937360B73603E6",
                    "id_classic": "PROCESS_GROUP_INSTANCE-E3937360B73603E6",
                    "lifetime": {
                      "end": "2026-04-22T08:43:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "devenv.exe",
                    "port": [
                      "54924",
                      "64318"
                    ],
                    "process.bitness": "32",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "C:\\Program\\ Files\\ (x86)\\Microsoft\\ Visual\\ Studio\\2017\\Professional\\Common7\\IDE\\devenv.exe",
                      "EXE_NAME": "devenv.exe",
                      "EXE_PATH": "C:\\PROGRAM FILES (X*)\\MICROSOFT VISUAL STUDIO\\*\\PROFESSIONAL\\COMMON*\\IDE\\DEVENV.EXE"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "FullCLR",
                        "type": "CLR",
                        "version": "4.8.4795.0"
                      },
                      {
                        "edition": ".NET Framework",
                        "type": "DOTNET",
                        "version": "4.8.4795.0"
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "SpringBoot com.voestalpine.sqm.del2.services.dely.Del2DeleteYTablesA (sim)",
                    "dt.process_group.id": "PROCESS_GROUP-12699CA453559C59",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-EDC3F65C64CE398A",
                    "id_classic": "PROCESS_GROUP_INSTANCE-EDC3F65C64CE398A",
                    "lifetime": {
                      "end": "2026-04-22T08:14:00.000000000+02:00",
                      "start": "2026-04-09T15:14:00.000000000+02:00"
                    },
                    "name": "/appl/sqmdel2/Del2DeleteYTablesApplication-3.0.0-SNAPSHOT.jar",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/usr/lib/jvm/java-11-openjdk/bin/java -Xmx128m -jar -Dspring.profiles.active=sim -Djava.security.egd=file:/dev/./urandom -Dsecurerandom.source=file:/dev/./urandom Del2DeleteYTablesApplication-3.0.0-SNAPSHOT.jar",
                      "EXE_NAME": "java",
                      "EXE_PATH": "/usr/lib/jvm/java-*-openjdk-*-*.el*.x*_*/bin/java",
                      "JAVA_JAR_FILE": "Del*DeleteYTablesApplication-*-SNAPSHOT.jar",
                      "JAVA_JAR_PATH": "/appl/sqmdel*/Del*DeleteYTablesApplication-*-SNAPSHOT.jar",
                      "SPRINGBOOT_PROFILE_NAME": "sim",
                      "SPRINGBOOT_STARTUP_CLASS": "com.voestalpine.sqm.del2.services.dely.Del2DeleteYTablesA"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "Red Hat, Inc.",
                        "type": "JAVA",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "Dynatrace OneAgent Source StatsD",
                    "dt.process_group.id": "PROCESS_GROUP-FE8B717AC18157A3",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "PROCESS-FF92073FDED2EDC7",
                    "id_classic": "PROCESS_GROUP_INSTANCE-FF92073FDED2EDC7",
                    "lifetime": {
                      "end": "2026-04-22T08:39:00.000000000+02:00",
                      "start": "2026-04-09T14:50:00.000000000+02:00"
                    },
                    "name": "Dynatrace OneAgent Source StatsD",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd --dsid=statsd_0 --url=http://127.0.0.1:14499 --idtoken=/var/lib/dynatrace/oneagent/agent/runtime/datasources/dsauthtoken --monitoring_config_id=statsd_listener",
                      "EXE_NAME": "oneagentsourcestatsd",
                      "EXE_PATH": "/opt/dynatrace/oneagent/agent/datasources/statsd/oneagentsourcestatsd",
                      "PG_ID_CALC_INPUT_KEY_LINKAGE": "dynamic"
                    },
                    "process.software_technologies": [
                      {
                        "edition": "",
                        "type": "DYNATRACE",
                        "version": ""
                      },
                      {
                        "edition": "",
                        "type": "GO",
                        "version": ""
                      }
                    ],
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "cvlaunchd",
                    "dt.process_group.id": "PROCESS_GROUP-24850F1B4AC9176B",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-36E12E834E5C5410",
                    "id_classic": "PROCESS_GROUP_INSTANCE-36E12E834E5C5410",
                    "lifetime": {
                      "end": "2026-04-21T19:33:00.000000000+02:00",
                      "start": "2026-02-27T19:32:00.000000000+01:00"
                    },
                    "name": "cvlaunchd",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/opt/commvault/Base/cvlaunchd",
                      "EXE_NAME": "cvlaunchd",
                      "EXE_PATH": "/opt/commvault/Base64/cvlaunchd"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "get_iflist",
                    "dt.process_group.id": "PROCESS_GROUP-4BBC4E2500AC9998",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "id": "PROCESS-5D5C4D98176944D8",
                    "id_classic": "PROCESS_GROUP_INSTANCE-5D5C4D98176944D8",
                    "lifetime": {
                      "end": "2026-04-21T23:32:00.000000000+02:00",
                      "start": "2026-02-26T11:24:00.000000000+01:00"
                    },
                    "name": "get_iflist",
                    "port": [
                      "8403",
                      "49511",
                      "60814"
                    ],
                    "process.bitness": "64",
                    "process.listen_ports": [
                      "8403",
                      "40815",
                      "59291"
                    ],
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/bin/sh /opt/commvault/Base/get_iflist",
                      "EXE_NAME": "bash",
                      "EXE_PATH": "/usr/bin/bash"
                    },
                    "type": "PROCESS"
                  },
                  {
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.process_group.detected_name": "sh",
                    "dt.process_group.id": "PROCESS_GROUP-4BBC4E2500AC9998",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "id": "PROCESS-C98B3A14D8D88508",
                    "id_classic": "PROCESS_GROUP_INSTANCE-C98B3A14D8D88508",
                    "lifetime": {
                      "end": "2026-04-21T16:12:00.000000000+02:00",
                      "start": "2026-04-20T12:52:00.000000000+02:00"
                    },
                    "name": "sh",
                    "process.bitness": "64",
                    "process.metadata": {
                      "COMMAND_LINE_ARGS": "/bin/sh -c java -Dserver.port=12000 -jar /appl/gb/abnahmeportal-odata-service-1.0.0.jar \u003e\u003e /appl/gb/odata-service.log",
                      "EXE_NAME": "sh",
                      "EXE_PATH": "/usr/bin/bash"
                    },
                    "type": "PROCESS"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      2
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      3
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      4,
                      4
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "NODE_JS_SCRIPT_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      7,
                      7
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      8,
                      8
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "NODE_JS_SCRIPT_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      9,
                      9
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      10,
                      10
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      11,
                      11
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "PG_ID_CALC_INPUT_KEY_LINKAGE": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      12
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      13,
                      13
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      14,
                      14
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      15,
                      15
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      17,
                      17
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      18,
                      18
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      20,
                      20
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              },
                              "PYTHON_SCRIPT": {
                                "type": "string"
                              },
                              "PYTHON_SCRIPT_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      21,
                      21
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              16
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      22,
                      22
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      24,
                      24
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      25,
                      25
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              4
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      26,
                      26
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      28,
                      28
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      29,
                      29
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      30,
                      30
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      31,
                      31
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      32,
                      32
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      33,
                      33
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      34,
                      34
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      35,
                      35
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "NODE_JS_SCRIPT_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      36,
                      36
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_APP_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      39,
                      39
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      40,
                      40
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      41,
                      41
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      42,
                      42
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      45,
                      45
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      46,
                      46
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      47,
                      47
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      48,
                      48
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      49,
                      49
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      50,
                      50
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      51,
                      51
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      52,
                      52
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      53,
                      53
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      54,
                      54
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      55,
                      55
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "IIS_APP_POOL": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      56,
                      56
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      57,
                      57
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      60,
                      60
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      61,
                      61
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      62,
                      62
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      63,
                      63
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      64,
                      64
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      65,
                      65
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      66,
                      66
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      67,
                      67
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      68,
                      68
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      69,
                      69
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      70,
                      70
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      71,
                      71
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      72,
                      72
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      73,
                      74
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      75,
                      75
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      76,
                      76
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "PG_ID_CALC_INPUT_KEY_LINKAGE": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      77,
                      77
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      78,
                      78
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              31
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      79,
                      79
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      80,
                      80
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      81,
                      81
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      82,
                      82
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      83,
                      83
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      84,
                      84
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      85,
                      85
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      86,
                      86
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      87,
                      87
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      88,
                      88
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              },
                              "PYTHON_SCRIPT": {
                                "type": "string"
                              },
                              "PYTHON_SCRIPT_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      89,
                      89
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      90,
                      90
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      91,
                      91
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      92,
                      92
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      93,
                      93
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      94,
                      94
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      95,
                      95
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      96,
                      96
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      97,
                      97
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      98,
                      98
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      99,
                      99
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      100,
                      100
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      101,
                      101
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      102,
                      102
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      103,
                      103
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      104,
                      104
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      105,
                      105
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      106,
                      106
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      107,
                      107
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      108,
                      108
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      109,
                      110
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      111,
                      111
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      112,
                      112
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      113,
                      113
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      114,
                      114
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "IIS_APP_POOL": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      115,
                      115
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "PG_ID_CALC_INPUT_KEY_LINKAGE": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      116,
                      116
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      117,
                      117
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      118,
                      118
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      119,
                      119
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_MAIN_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      120,
                      120
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      121,
                      121
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "OSAGENT_GROUPID_NAME": {
                                "type": "string"
                              },
                              "OSAGENT_INSTANCEID_NAME": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      122,
                      122
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      123,
                      123
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "JAVA_JAR_FILE": {
                                "type": "string"
                              },
                              "JAVA_JAR_PATH": {
                                "type": "string"
                              },
                              "SPRINGBOOT_PROFILE_NAME": {
                                "type": "string"
                              },
                              "SPRINGBOOT_STARTUP_CLASS": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
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
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      124,
                      124
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              },
                              "PG_ID_CALC_INPUT_KEY_LINKAGE": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "process.software_technologies": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "record",
                                "types": [
                                  {
                                    "mappings": {
                                      "edition": {
                                        "type": "string"
                                      },
                                      "type": {
                                        "type": "string"
                                      },
                                      "version": {
                                        "type": "string"
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      125,
                      125
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      126,
                      126
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "port": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.listen_ports": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "long"
                              }
                            }
                          }
                        ]
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      127,
                      127
                    ],
                    "mappings": {
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.process_group.detected_name": {
                        "type": "string"
                      },
                      "dt.process_group.id": {
                        "type": "string"
                      },
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
                      "host.name": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "process.bitness": {
                        "type": "long"
                      },
                      "process.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "COMMAND_LINE_ARGS": {
                                "type": "string"
                              },
                              "EXE_NAME": {
                                "type": "string"
                              },
                              "EXE_PATH": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
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
                "columnWidths": {
                  "[\"dt.security_context\"]": 163.6,
                  "[\"tags:environment\"]": 380
                },
                "hiddenColumns": [
                  [
                    "lifetime",
                    "start"
                  ],
                  [
                    "lifetime",
                    "end"
                  ],
                  [
                    "type"
                  ],
                  [
                    "tags:environment"
                  ]
                ],
                "hideColumnsForLargeResults": false,
                "sortBy": [
                  {
                    "columnId": "[\"name\"]",
                    "direction": "ascending"
                  }
                ]
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 356,
          "id": "82cc08f7-9387-425c-9542-3a81afc7ef52",
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "smartscapeNodes \"SERVICE\" "
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
              "dateTime": "2026-04-22T07:00:53.318Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "smartscapeNodes \"SERVICE\" "
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
                      "end": "2026-04-22T07:00:52.935000000Z",
                      "start": "2026-04-21T07:00:52.935000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes \"SERVICE\"",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 14,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes \"SERVICE\" ",
                    "queryId": "03768cb7-022f-4550-ba46-0f481208c1ca",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 13,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": [
                      "2217-u407008-metar"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-3C89C68CF4B7346D",
                    "id_classic": "SERVICE-3C89C68CF4B7346D",
                    "lifetime": {
                      "end": "2026-04-22T08:56:00.000000000+02:00",
                      "start": "2026-04-03T12:27:00.000000000+02:00"
                    },
                    "name": "metar-ksvc-metar-crawler-00008-deployment",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-674DE57965DD5660",
                    "id_classic": "SERVICE-674DE57965DD5660",
                    "lifetime": {
                      "end": "2026-04-22T08:57:00.000000000+02:00",
                      "start": "2026-04-16T15:32:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-V2X_PVSE-v2x",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-7967D5EF7A162D99",
                    "id_classic": "SERVICE-7967D5EF7A162D99",
                    "lifetime": {
                      "end": "2026-04-22T09:00:00.000000000+02:00",
                      "start": "2026-04-16T15:30:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-V2X-v2x",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-B47031AAC0D1F6ED",
                    "id_classic": "SERVICE-B47031AAC0D1F6ED",
                    "lifetime": {
                      "end": "2026-04-22T08:56:00.000000000+02:00",
                      "start": "2026-04-16T15:06:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VTX-vtx",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "2217-u407008-metar"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-CEC7577A50D75A76",
                    "id_classic": "SERVICE-CEC7577A50D75A76",
                    "lifetime": {
                      "end": "2026-04-22T08:58:00.000000000+02:00",
                      "start": "2026-04-18T16:12:00.000000000+02:00"
                    },
                    "name": "metar-ksvc-metar-translator-00012-deployment",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-F399B1FF4C96BAC8",
                    "id_classic": "SERVICE-F399B1FF4C96BAC8",
                    "lifetime": {
                      "end": "2026-04-22T08:56:00.000000000+02:00",
                      "start": "2026-04-16T15:41:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VQX-vqx",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-27B937FCD0412504",
                    "id_classic": "SERVICE-27B937FCD0412504",
                    "lifetime": {
                      "end": "2026-04-22T09:00:00.000000000+02:00",
                      "start": "2026-04-16T14:55:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VEX-vex",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-4E76113DE34024E1",
                    "id_classic": "SERVICE-4E76113DE34024E1",
                    "lifetime": {
                      "end": "2026-04-22T08:56:00.000000000+02:00",
                      "start": "2026-04-16T15:36:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VQX_PVSE-vqx",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-7BCD075EA2BA02FF",
                    "id_classic": "SERVICE-7BCD075EA2BA02FF",
                    "lifetime": {
                      "end": "2026-04-22T09:00:00.000000000+02:00",
                      "start": "2026-04-16T14:59:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VBX-vbx",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-AF58A1A03AC584E0",
                    "id_classic": "SERVICE-AF58A1A03AC584E0",
                    "lifetime": {
                      "end": "2026-04-22T08:48:00.000000000+02:00",
                      "start": "2026-04-15T13:33:00.000000000+02:00"
                    },
                    "name": "tg-rmq-read-hbde",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "2217-u407008-metar"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-3DD70FA961B4C71B",
                    "id_classic": "SERVICE-3DD70FA961B4C71B",
                    "lifetime": {
                      "end": "2026-04-21T16:49:00.000000000+02:00",
                      "start": "2026-04-03T13:11:00.000000000+02:00"
                    },
                    "name": "metar-deploy-metar-cockpit",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "guenter_tomcat"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-D67D748E3C347458",
                    "id_classic": "SERVICE-D67D748E3C347458",
                    "lifetime": {
                      "end": "2026-04-21T09:01:00.000000000+02:00",
                      "start": "2026-03-31T10:53:00.000000000+02:00"
                    },
                    "name": "my-tomcat11",
                    "type": "SERVICE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "dt.service_detection.version": "2",
                    "id": "SERVICE-2106F8CE21DE820C",
                    "id_classic": "SERVICE-2106F8CE21DE820C",
                    "lifetime": {
                      "end": "2026-04-22T09:00:00.000000000+02:00",
                      "start": "2026-04-16T15:20:00.000000000+02:00"
                    },
                    "name": "lb-MuSI-default-VBX_PVSE-vbx",
                    "type": "SERVICE"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      12
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
                      "dt.service_detection.version": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "type": {
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
                "columnWidths": {
                  "[\"dt.security_context\"]": 262.6,
                  "[\"tags:environment\"]": 380
                },
                "hiddenColumns": [
                  [
                    "lifetime",
                    "start"
                  ],
                  [
                    "lifetime",
                    "end"
                  ],
                  [
                    "type"
                  ],
                  [
                    "tags:environment"
                  ]
                ],
                "hideColumnsForLargeResults": false,
                "sortBy": [
                  {
                    "columnId": "[\"name\"]",
                    "direction": "ascending"
                  }
                ]
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "37064aff-583c-405e-b43e-ff3b353cd22b",
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
                "from": "now()-7d",
                "to": "now()"
              },
              "value": "fetch dt.entity.service\n| filter id == \"SERVICE-B47031AAC0D1F6ED\"\n| fieldsAdd dt.security_context, entity.detected_name, runs_on, belongs_to, groups, oneAgentCustomHostName, managementZones"
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
              "dateTime": "2026-04-22T07:13:15.458Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-7d",
                  "to": "now()"
                },
                "value": "fetch dt.entity.service\n| filter id == \"SERVICE-B47031AAC0D1F6ED\"\n| fieldsAdd dt.security_context, entity.detected_name, runs_on, belongs_to, groups, oneAgentCustomHostName, managementZones"
              },
              "notifications": [
                {
                  "message": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                  "notificationType": "DEPRECATED_ENTITY_DATAOBJECT",
                  "severity": "info",
                  "syntaxPosition": {
                    "end": {
                      "column": 23,
                      "index": 22,
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
                      "end": "2026-04-22T07:13:15.044000000Z",
                      "start": "2026-04-15T07:13:15.044000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.service\n| filter id == \"SERVICE-B47031AAC0D1F6ED\"\n| fieldsAdd dt.security_context, entity.detected_name, runs_on, belongs_to, groups, oneAgentCustomHostName, managementZones",
                    "contributions": {
                      "buckets": []
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 69,
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
                            "column": 23,
                            "index": 22,
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
                    "query": "fetch dt.entity.service\n| filter id == \"SERVICE-B47031AAC0D1F6ED\"\n| fieldsAdd dt.security_context, entity.detected_name, runs_on, belongs_to, groups, oneAgentCustomHostName, managementZones",
                    "queryId": "0e5de32c-e77d-41a6-be29-b61b27d3ec98",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 1,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "belongs_to": null,
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "entity.detected_name": "lb-MuSI-default-VTX-vtx",
                    "entity.name": "lb-MuSI-default-VTX-vtx",
                    "groups": {
                      "dt.entity.service_method_group": [
                        "SERVICE_METHOD_GROUP-B47031AAC0D1F6ED"
                      ]
                    },
                    "id": "SERVICE-B47031AAC0D1F6ED",
                    "managementZones": [
                      "TPI_Messaging"
                    ],
                    "oneAgentCustomHostName": null,
                    "runs_on": null
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "belongs_to": {
                        "type": "undefined"
                      },
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
                      "entity.detected_name": {
                        "type": "string"
                      },
                      "entity.name": {
                        "type": "string"
                      },
                      "groups": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.entity.service_method_group": {
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
                          }
                        ]
                      },
                      "id": {
                        "type": "string"
                      },
                      "managementZones": {
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
                      "oneAgentCustomHostName": {
                        "type": "string"
                      },
                      "runs_on": {
                        "type": "undefined"
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
                "columnWidths": {
                  "[\"entity.name\"]": 198.3,
                  "[\"id\"]": 234.7
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
          "height": 219,
          "id": "af895e46-2a2c-44eb-b712-eda0d68a7c4f",
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
                "from": "now()-24h",
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
              "dateTime": "2026-04-22T06:21:36.893Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
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
                      "end": "2026-04-22T06:21:35.948000000Z",
                      "start": "2026-04-21T06:21:35.948000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.host\n| fieldsAdd dt.security_context\n| filter isMonitoringCandidate == FALSE",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 152,
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
                    "queryId": "18d46fde-6105-4205-b9c0-cbd037361a07",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 4,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": [
                      "TPI_Messaging",
                      "VMWare ESXi"
                    ],
                    "entity.name": "vadsjms01d.voestalpine.root.local",
                    "id": "HOST-A832BA71C4DD13DB"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging",
                      "VMWare ESXi"
                    ],
                    "entity.name": "2217sqmserv01.voestalpine.root.local",
                    "id": "HOST-FFAA6AF8379BA5D3"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging",
                      "VMWare ESXi"
                    ],
                    "entity.name": "vadslb01d.voestalpine.root.local",
                    "id": "HOST-57189FE11F7739CE"
                  },
                  {
                    "dt.security_context": [
                      "TPI_Messaging",
                      "VMWare ESXi"
                    ],
                    "entity.name": "2236dblogwebt.voestalpine.root.local",
                    "id": "HOST-2343B18908538206"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      3
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
              "autoSelectVisualization": true,
              "chartSettings": {},
              "table": {
                "columnOrder": [
                  "[\"entity.name\"]",
                  "[\"id\"]",
                  "[\"dt.security_context\"]"
                ],
                "columnWidths": {
                  "[\"dt.security_context\"]": 301.5
                },
                "hideColumnsForLargeResults": false,
                "sortBy": [
                  {
                    "columnId": "[\"entity.name\"]",
                    "direction": "ascending"
                  }
                ]
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 97,
          "id": "cd915e8f-be32-454d-a599-80b56d581401",
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "fetch dt.entity.process_group_instance \n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host], dt.security_context, tags\n| filter isNotNull(runs[dt.entity.service])"
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
              "dateTime": "2026-04-22T06:22:04.890Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "fetch dt.entity.process_group_instance \n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host], dt.security_context, tags\n| filter isNotNull(runs[dt.entity.service])"
              },
              "notifications": [
                {
                  "message": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                  "notificationType": "DEPRECATED_ENTITY_DATAOBJECT",
                  "severity": "info",
                  "syntaxPosition": {
                    "end": {
                      "column": 38,
                      "index": 37,
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
                      "end": "2026-04-22T06:22:04.471000000Z",
                      "start": "2026-04-21T06:22:04.470000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host], dt.security_context, tags\n| filter isNotNull(runs[dt.entity.service])",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 124,
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
                            "column": 38,
                            "index": 37,
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
                    "query": "fetch dt.entity.process_group_instance \n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host], dt.security_context, tags\n| filter isNotNull(runs[dt.entity.service])",
                    "queryId": "09f599be-c9fb-44f6-85ee-181299ee86c0",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 128,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {},
              "table": {
                "columnWidths": {
                  "[\"entity.name\"]": 249.4,
                  "[\"id\"]": 416,
                  "[\"tags\"]": 3293.47509765625
                },
                "hideColumnsForLargeResults": true,
                "sortBy": [
                  {
                    "columnId": "[\"entity.name\"]",
                    "direction": "ascending"
                  }
                ]
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 112,
          "id": "7c05cd2b-a4ef-40c5-b20d-73700445aa14",
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
              "value": "smartscapeNodes HOST\n| filter isNotNull(name) and name != \"\"\n//| filter name  == \"2217PSMP0010P01.voestalpine.root.local\""
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
              "dateTime": "2026-04-22T06:21:36.758Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "smartscapeNodes HOST\n| filter isNotNull(name) and name != \"\"\n//| filter name  == \"2217PSMP0010P01.voestalpine.root.local\""
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
                      "end": "2026-04-22T06:21:35.952000000Z",
                      "start": "2026-04-22T04:21:35.951000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes HOST\n| filter isNotNull(name) AND name != \"\"",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 15,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes HOST\n| filter isNotNull(name) and name != \"\"\n//| filter name  == \"2217PSMP0010P01.voestalpine.root.local\"",
                    "queryId": "49b49761-7552-406a-a38b-c49353a42327",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 4,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "tpi_messaging",
                      "dt.cost.product": "tpi_messaging_test",
                      "dt.security_context": "TPI_Messaging"
                    },
                    "host.logical.cpus": "4",
                    "host.name": "2236dblogwebt.voestalpine.root.local",
                    "host.physical.memory": "15031779328",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-2343B18908538206",
                    "id_classic": "HOST-2343B18908538206",
                    "ip": [
                      "192.168.104.49"
                    ],
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "mac": [
                      "00:50:56:85:34:6B"
                    ],
                    "memory": "15031779328",
                    "name": "2236dblogwebt.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "8053919744",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.serial": "VMware-42 05 b6 7e 50 61 2e cf-5b 34 da 31 df c5 ad 10",
                      "system.vendor": "VMware, Inc."
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "tpi_messaging",
                      "dt.cost.product": "tpi_messaging_test",
                      "dt.security_context": "TPI_Messaging"
                    },
                    "host.logical.cpus": "4",
                    "host.name": "2217sqmserv01.voestalpine.root.local",
                    "host.physical.memory": "8053919744",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-FFAA6AF8379BA5D3",
                    "id_classic": "HOST-FFAA6AF8379BA5D3",
                    "ip": [
                      "164.3.14.174"
                    ],
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "mac": [
                      "00:50:56:85:31:9C"
                    ],
                    "memory": "8053919744",
                    "name": "2217sqmserv01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 9.7 (Plow) (kernel 5.14.0-611.42.1.el9_7.x86_64)",
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "16637321216",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) CPU E5-2697 v3 @ 2.60GHz",
                      "system.serial": "VMware-42 05 51 42 aa 7b d8 16-24 a8 f6 75 85 ed 45 0d",
                      "system.vendor": "VMware, Inc."
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "tpi_messaging",
                      "dt.cost.product": "tpi_messaging_test",
                      "dt.security_context": "TPI_Messaging"
                    },
                    "host.logical.cpus": "4",
                    "host.name": "vadslb01d.voestalpine.root.local",
                    "host.physical.memory": "16637321216",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-57189FE11F7739CE",
                    "id_classic": "HOST-57189FE11F7739CE",
                    "ip": [
                      "10.164.195.84",
                      "10.190.1.84"
                    ],
                    "lifetime": {
                      "end": "2026-04-22T08:21:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "mac": [
                      "00:50:56:85:9C:C6",
                      "00:50:56:85:6A:A0"
                    ],
                    "memory": "16637321216",
                    "name": "vadslb01d.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux Server 7.9 (Maipo) (kernel 3.10.0-1160.147.1.el7.x86_64)",
                    "type": "HOST"
                  },
                  {
                    "cores": "1",
                    "dt.cost.costcenter": "tpi_messaging",
                    "dt.cost.product": "tpi_messaging_test",
                    "dt.host_group.id": "TPI_Messaging",
                    "dt.security_context": [
                      "TPI_Messaging"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "8181567488",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.serial": "VMware-42 05 9c f0 37 b2 11 41-cf 83 08 71 8c 98 9f 2c",
                      "system.vendor": "VMware, Inc."
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "tpi_messaging",
                      "dt.cost.product": "tpi_messaging_test",
                      "dt.security_context": "TPI_Messaging"
                    },
                    "host.logical.cpus": "1",
                    "host.mac": [
                      "00:50:56:85:E2:4B",
                      "00:50:56:85:32:BC",
                      "00:50:56:85:11:8B"
                    ],
                    "host.name": "vadsjms01d.voestalpine.root.local",
                    "host.physical.memory": "8181567488",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-A832BA71C4DD13DB",
                    "id_classic": "HOST-A832BA71C4DD13DB",
                    "ip": [
                      "10.190.1.71",
                      "10.164.195.71",
                      "10.34.11.120"
                    ],
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "mac": [
                      "00:50:56:85:E2:4B",
                      "00:50:56:85:32:BC",
                      "00:50:56:85:11:8B"
                    ],
                    "memory": "8181567488",
                    "name": "vadsjms01d.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux Server 7.9 (Maipo) (kernel 3.10.0-1160.147.1.el7.x86_64)",
                    "type": "HOST"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
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
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.name": {
                        "type": "string"
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "ip": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "ip_address"
                              }
                            }
                          }
                        ]
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "mac": {
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
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
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
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
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
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.name": {
                        "type": "string"
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "ip": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "ip_address"
                              }
                            }
                          }
                        ]
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "mac": {
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
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      2
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
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
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.name": {
                        "type": "string"
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "ip": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "ip_address"
                              }
                            }
                          }
                        ]
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "mac": {
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
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      3
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
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
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
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
                      "host.name": {
                        "type": "string"
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "ip": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "ip_address"
                              }
                            }
                          }
                        ]
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "mac": {
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
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
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
                "columnWidths": {
                  "[\"dt.traverse.history\"]": 978,
                  "[\"id\"]": 105.2,
                  "[\"name\"]": 201.4
                },
                "hideColumnsForLargeResults": true,
                "sortBy": [
                  {
                    "columnId": "[\"name\"]",
                    "direction": "ascending"
                  }
                ]
              }
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "e6e87afd-997a-4ca2-8f92-2e72f6479b1e",
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
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "smartscapeNodes \"ONEAGENT\""
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
              "dateTime": "2026-04-22T06:21:36.712Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "smartscapeNodes \"ONEAGENT\""
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
                      "end": "2026-04-22T06:21:35.953000000Z",
                      "start": "2026-04-21T06:21:35.953000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes \"ONEAGENT\"",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 14,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes \"ONEAGENT\"",
                    "queryId": "a271fee3-87ca-4ba8-bc3e-ca090ab91e27",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 4,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.agent.module.version": "1.335.51.20260417-071823",
                    "dt.agent.monitoring_mode": "INFRASTRUCTURE",
                    "dt.network_zone.id": "default",
                    "dt.security_context": [],
                    "dt.smartscape_source.sender": "dynatrace_osagent",
                    "id": "ONEAGENT-2343B18908538206",
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-04-09T06:48:00.000000000+02:00"
                    },
                    "name": "2236dblogwebt.voestalpine.root.local",
                    "type": "ONEAGENT"
                  },
                  {
                    "dt.agent.module.version": "1.335.51.20260417-071823",
                    "dt.agent.monitoring_mode": "INFRASTRUCTURE",
                    "dt.network_zone.id": "default",
                    "dt.security_context": [],
                    "dt.smartscape_source.sender": "dynatrace_osagent",
                    "id": "ONEAGENT-57189FE11F7739CE",
                    "lifetime": {
                      "end": "2026-04-22T08:21:00.000000000+02:00",
                      "start": "2026-04-16T13:39:00.000000000+02:00"
                    },
                    "name": "vadslb01d.voestalpine.root.local",
                    "type": "ONEAGENT"
                  },
                  {
                    "dt.agent.module.version": "1.335.51.20260417-071823",
                    "dt.agent.monitoring_mode": "INFRASTRUCTURE",
                    "dt.network_zone.id": "default",
                    "dt.security_context": [],
                    "dt.smartscape_source.sender": "dynatrace_osagent",
                    "id": "ONEAGENT-FFAA6AF8379BA5D3",
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-04-09T14:49:00.000000000+02:00"
                    },
                    "name": "2217sqmserv01.voestalpine.root.local",
                    "type": "ONEAGENT"
                  },
                  {
                    "dt.agent.module.version": "1.335.51.20260417-071823",
                    "dt.agent.monitoring_mode": "INFRASTRUCTURE",
                    "dt.network_zone.id": "default",
                    "dt.security_context": [],
                    "dt.smartscape.source": null,
                    "dt.smartscape_source.sender": "dynatrace_osagent",
                    "id": "ONEAGENT-A832BA71C4DD13DB",
                    "lifetime": {
                      "end": "2026-04-22T08:18:00.000000000+02:00",
                      "start": "2026-02-26T09:00:00.000000000+01:00"
                    },
                    "name": "vadsjms01d.voestalpine.root.local",
                    "type": "ONEAGENT"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      2
                    ],
                    "mappings": {
                      "dt.agent.module.version": {
                        "type": "string"
                      },
                      "dt.agent.monitoring_mode": {
                        "type": "string"
                      },
                      "dt.network_zone.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "dt.smartscape_source.sender": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      3
                    ],
                    "mappings": {
                      "dt.agent.module.version": {
                        "type": "string"
                      },
                      "dt.agent.monitoring_mode": {
                        "type": "string"
                      },
                      "dt.network_zone.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "dt.smartscape.source": {
                        "type": "undefined"
                      },
                      "dt.smartscape_source.sender": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "name": {
                        "type": "string"
                      },
                      "type": {
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
                "columnWidths": {
                  "[\"name\"]": 116.4
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
            "prompt": "\nfetch dt.entity.process_group_instance \n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host] \n| filter isNotNull(runs[dt.entity.service])",
            "response": {
              "data": {
                "dql": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host]\n| filter isNotNull(runs[dt.entity.service])",
                "messageToken": "8ff64d68-8d19-4093-a719-d595bd59af5a",
                "metadata": {
                  "notifications": []
                },
                "status": "SUCCESSFUL"
              },
              "prompt": "\nfetch dt.entity.process_group_instance \n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host] \n| filter isNotNull(runs[dt.entity.service])",
              "status": "success"
            },
            "showDqlSnippet": true
          },
          "drilldownPath": [],
          "filterSegments": [],
          "id": "ca70db74-ae68-46c4-9180-c5cd53a3cdf8",
          "previousFilterSegments": [],
          "showTitle": false,
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "davisCopilot": {
              "feedbackProvided": false,
              "prompt": "list auf all processgroup instances including the host and application they belong to\n",
              "response": {
                "status": "idle"
              },
              "showDqlSnippet": false
            },
            "input": {
              "timeframe": {
                "from": "now()-24h",
                "to": "now()"
              },
              "value": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host]\n| filter isNotNull(runs[dt.entity.service])"
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
              "dateTime": "2026-04-22T06:21:36.882Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-24h",
                  "to": "now()"
                },
                "value": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host]\n| filter isNotNull(runs[dt.entity.service])"
              },
              "notifications": [
                {
                  "message": "Give the new `smartscapeNodes` command a try to work with entities from the new Smartscape storage.",
                  "notificationType": "DEPRECATED_ENTITY_DATAOBJECT",
                  "severity": "info",
                  "syntaxPosition": {
                    "end": {
                      "column": 38,
                      "index": 37,
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
                      "end": "2026-04-22T06:21:35.955000000Z",
                      "start": "2026-04-21T06:21:35.955000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host]\n| filter isNotNull(runs[dt.entity.service])",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 238,
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
                            "column": 38,
                            "index": 37,
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
                    "query": "fetch dt.entity.process_group_instance\n| fieldsAdd entity.name, runs[dt.entity.service], belongs_to[dt.entity.host]\n| filter isNotNull(runs[dt.entity.service])",
                    "queryId": "10b46456-6fbd-482f-bce5-df71798247f5",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 128,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "chartSettings": {}
            }
          },
          "subType": "davis-copilot",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "f46f48c3-08df-4454-ace8-21d147737f95",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-06-09T08:19:25.377Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m"
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
                      "end": "2026-06-09T08:19:00.000000000Z",
                      "start": "2026-06-09T07:49:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "executionTimeMilliseconds": 39,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m",
                    "queryId": "1ade38f7-7935-4f8b-9b48-a098394a20bd",
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
                    "configuration": "logs",
                    "datapoints": [
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      45,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      45,
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
                      45,
                      0
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "extension:snmp-auto-discovery",
                    "timeframe": {
                      "end": "2026-06-09T10:19:00.000000000+02:00",
                      "start": "2026-06-09T09:49:00.000000000+02:00"
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
          "title": "Records over time of Logs for SNMP Autodiscovery",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "99f8ad08-a710-48cd-835b-139ee636b8f6",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-06-09T14:01:14.453Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m"
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
                      "end": "2026-06-09T14:01:00.000000000Z",
                      "start": "2026-06-09T13:31:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "executionTimeMilliseconds": 22,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension:snmp-auto-discovery\"}, from: -30m, to: -1m",
                    "queryId": "59cdcce9-b7e0-4f74-972f-d2be3e3b465f",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 31,
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
                    "configuration": "logs",
                    "datapoints": [
                      0,
                      0,
                      0,
                      0,
                      0,
                      3,
                      2,
                      0,
                      0,
                      0,
                      1,
                      66,
                      0,
                      0,
                      0,
                      0,
                      3,
                      0,
                      1,
                      66,
                      0,
                      0,
                      0,
                      0,
                      3,
                      0,
                      0,
                      0,
                      0,
                      0
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "extension:snmp-auto-discovery",
                    "timeframe": {
                      "end": "2026-06-09T16:01:00.000000000+02:00",
                      "start": "2026-06-09T15:31:00.000000000+02:00"
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
          "title": "Records over time of Logs for SNMP Autodiscovery",
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
