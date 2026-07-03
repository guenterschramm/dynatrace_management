resource "dynatrace_document" "SQL_Debug" {
  name    = "SQL Debug"
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
          "id": "5d17ab37-b68c-4f39-ad38-7711edd156af",
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
              "value": "fetch logs, from:-30m, to:now() |filter in(\"logs:extension.sql-server-logs\", dt.openpipeline.pipelines)"
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
              "dateTime": "2026-06-23T08:01:20.501Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch logs, from:-30m, to:now() |filter in(\"logs:extension.sql-server-logs\", dt.openpipeline.pipelines)"
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
                      "end": "2026-06-23T08:01:19.470519234Z",
                      "start": "2026-06-23T07:31:19.470519234Z"
                    },
                    "canonicalQuery": "fetch logs, from:-30m, to:now()\n| filter in(\"logs:extension.sql-server-logs\", dt.openpipeline.pipelines)",
                    "contributions": {
                      "buckets": [
                        {
                          "matchedRecordsRatio": 0,
                          "name": "bee4it_logs",
                          "scannedBytes": 59747499,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "pam_logs",
                          "scannedBytes": 39826887,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "xecm_steel_logs_short",
                          "scannedBytes": 37670761,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "xecm_steel_logs",
                          "scannedBytes": 9968517,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "webhosting_logs",
                          "scannedBytes": 231234,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 0,
                          "name": "default_logs",
                          "scannedBytes": 118268,
                          "table": "logs"
                        },
                        {
                          "matchedRecordsRatio": 1,
                          "name": "default_database_monitoring",
                          "scannedBytes": 10249,
                          "table": "logs"
                        }
                      ]
                    },
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 171,
                    "locale": "de",
                    "notifications": [],
                    "query": "fetch logs, from:-30m, to:now() |filter in(\"logs:extension.sql-server-logs\", dt.openpipeline.pipelines)",
                    "queryId": "5ae4b7d6-cb66-4738-80ab-f8961cd3fe16",
                    "sampled": false,
                    "scannedBytes": 147573415,
                    "scannedDataPoints": 0,
                    "scannedRecords": 5350164,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6224",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2160",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:59:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL\\Bee4ITP.mdf",
                    "data_space_id": "1",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "437658624",
                    "file_id": "1",
                    "file_name": "beeprm_blank_de",
                    "file_size": "1138263168",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "700604544",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_LOG\\MSSQL\\Bee4ITP_log.ldf",
                    "data_space_id": "0",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "394463360",
                    "file_id": "2",
                    "file_name": "beeprm_blank_de_log",
                    "file_size": "394735616",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "272256",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "18240",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "242688",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "6272",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "13311488",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8232960",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "14307328",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "76736",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "258432",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:55:54.436000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6224",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2160",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:54:47.896000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL\\Bee4ITP.mdf",
                    "data_space_id": "1",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "437659328",
                    "file_id": "1",
                    "file_name": "beeprm_blank_de",
                    "file_size": "1138263168",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "700603840",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_LOG\\MSSQL\\Bee4ITP_log.ldf",
                    "data_space_id": "0",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "394464848",
                    "file_id": "2",
                    "file_name": "beeprm_blank_de_log",
                    "file_size": "394735616",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "270768",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "18240",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "242688",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "6272",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "13311488",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8232960",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "14307328",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "76736",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "258432",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:50:54.479000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6224",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2160",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:49:47.895000000+02:00"
                  },
                  {
                    "backup_finish_date": "2026-06-23 09:41:12.0",
                    "backup_size": "25052762112",
                    "backup_start_date": "2026-06-23 09:40:23.0",
                    "beings_log_chain": "0",
                    "checkpoint_lsn": "13949161000017778400156",
                    "compatibility_level": "SQL Server 2019 (15.x)",
                    "compressed_backup_size": "25052762112",
                    "content": "Transaction log",
                    "database": "Bee4ITP",
                    "database_backup_lsn": "13940788000016096000040",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "device_type": "Virtual device",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "backups_managed",
                    "extension": "sql_mssql",
                    "instance": "BEE4ITP",
                    "is_password_protected": "0",
                    "loglevel": "INFO",
                    "physical_device_name": "e93d9fc6-ce24-4874-a811-52a277d27b86",
                    "recovery_model": "FULL",
                    "server": "2217DBSQLBEE4IT",
                    "software_name": "Microsoft SQL Server",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:53.127000000+02:00"
                  },
                  {
                    "backup_finish_date": "2026-06-23 09:41:12.0",
                    "backup_size": "25052762112",
                    "backup_start_date": "2026-06-23 09:40:23.0",
                    "beings_log_chain": "0",
                    "checkpoint_lsn": "13949161000017778400156",
                    "compatibility_level": "SQL Server 2019 (15.x)",
                    "compressed_backup_size": "25052762112",
                    "content": "Transaction log",
                    "database": "Bee4ITP",
                    "database_backup_lsn": "13940788000016096000040",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "device_type": "Virtual device",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "backups_managed",
                    "extension": "sql_mssql",
                    "instance": "BEE4ITP",
                    "is_password_protected": "0",
                    "loglevel": "INFO",
                    "physical_device_name": "e93d9fc6-ce24-4874-a811-52a277d27b86_1",
                    "recovery_model": "FULL",
                    "server": "2217DBSQLBEE4IT",
                    "software_name": "Microsoft SQL Server",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:53.127000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL\\Bee4ITP.mdf",
                    "data_space_id": "1",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "437659968",
                    "file_id": "1",
                    "file_name": "beeprm_blank_de",
                    "file_size": "1138263168",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "700603200",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_LOG\\MSSQL\\Bee4ITP_log.ldf",
                    "data_space_id": "0",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "394467072",
                    "file_id": "2",
                    "file_name": "beeprm_blank_de_log",
                    "file_size": "394735616",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "268544",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "18240",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "242688",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "6272",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "13311488",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8232960",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "14307328",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "76736",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "258432",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:45:54.437000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6224",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2160",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:44:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL\\Bee4ITP.mdf",
                    "data_space_id": "1",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "437660416",
                    "file_id": "1",
                    "file_name": "beeprm_blank_de",
                    "file_size": "1138263168",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "700602752",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_LOG\\MSSQL\\Bee4ITP_log.ldf",
                    "data_space_id": "0",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "370186744",
                    "file_id": "2",
                    "file_name": "beeprm_blank_de_log",
                    "file_size": "394735616",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "24548872",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "18240",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "242688",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "6272",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "13311488",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8232960",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "14307328",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "76736",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "258432",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:40:54.431000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6288",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2096",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:39:47.894000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL\\Bee4ITP.mdf",
                    "data_space_id": "1",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "437660608",
                    "file_id": "1",
                    "file_name": "beeprm_blank_de",
                    "file_size": "1138263168",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "700602560",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_LOG\\MSSQL\\Bee4ITP_log.ldf",
                    "data_space_id": "0",
                    "database": "Bee4ITP",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "370187776",
                    "file_id": "2",
                    "file_name": "beeprm_blank_de_log",
                    "file_size": "394735616",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "24547840",
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "18240",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "242688",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "6272",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "13311488",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "G:\\BEE4ITP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "F:\\BEE4ITP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "13312000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "H:\\BEE4ITP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8232960",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "E:\\BEE4ITP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "14307328",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "76736",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_01_BEE4ITP_DATA\\MSSQL15.BEE4ITP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "device.address": "164.3.12.183",
                    "device.name": "2217dbsqlbee4it",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "dt.extension.config.id": "5d9a1b75-9aaf-3463-a246-ee3251174d5c",
                    "dt.extension.endpoint.hints": [
                      "Bee4ITP",
                      "bee4itp",
                      "2217dbsqlbee4it"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "Bee4IT",
                    "dt.source_entity": "CUSTOM_DEVICE-1EF4F4B26E9773ED",
                    "endpoint": "2217dbsqlbee4it\\bee4itp/Bee4ITP",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "258432",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "BEE4ITP",
                    "loglevel": "INFO",
                    "server": "2217DBSQLBEE4IT",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:35:54.467000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\master.mdf",
                    "data_space_id": "1",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "210560",
                    "file_id": "1",
                    "file_name": "master",
                    "file_size": "221184",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": "10624",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\mastlog.ldf",
                    "data_space_id": "0",
                    "database": "master",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-3755E0F65D24006C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": "6288",
                    "file_id": "2",
                    "file_name": "mastlog",
                    "file_size": "8384",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": "2096",
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\Monitoring_log.ldf",
                    "data_space_id": "0",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "Monitoring_log",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\Monitoring.mdf",
                    "data_space_id": "1",
                    "database": "Monitoring",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-812182D851CA78C2",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "Monitoring",
                    "file_size": "212992",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\PerfTest_log.ldf",
                    "data_space_id": "0",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "PerfTest_log",
                    "file_size": "25480",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\PerfTest.mdf",
                    "data_space_id": "1",
                    "database": "PerfTest",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-DC19D7E9FD2FFBFE",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "PerfTest",
                    "file_size": "8192000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\DVM_log.ldf",
                    "data_space_id": "0",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "DVM_log",
                    "file_size": "22344",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\DVM.mdf",
                    "data_space_id": "1",
                    "database": "DVM",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-2E180868B2377713",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "DVM",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_2.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "CSSDP_2",
                    "file_size": "525320192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP_1.ndf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "CSSDP_1",
                    "file_size": "522760192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_LS\\MSSQL\\CSSDP_log.ldf",
                    "data_space_id": "0",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "CSSDP_log.ldf",
                    "file_size": "944931456",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL\\CSSDP.mdf",
                    "data_space_id": "1",
                    "database": "CSSDP",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-CA768285182E18B3",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "CSSDP",
                    "file_size": "5734785024",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBLog.ldf",
                    "data_space_id": "0",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "MSDBLog",
                    "file_size": "32448",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\MSDBData.mdf",
                    "data_space_id": "1",
                    "database": "msdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-56D77D8E9255120C",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "MSDBData",
                    "file_size": "520512",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\modellog.ldf",
                    "data_space_id": "0",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "modellog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "C:\\ClusterStorage\\SDS_0010_DC0_HI_HA_01_XECM_DS\\MSSQL15.SXECMP\\MSSQL\\DATA\\model.mdf",
                    "data_space_id": "1",
                    "database": "model",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-F7823DB4E486F11F",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "modeldev",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_8.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "9",
                    "file_name": "temp8",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_7.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "8",
                    "file_name": "temp7",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_6.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "7",
                    "file_name": "temp6",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_5.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "6",
                    "file_name": "temp5",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_4.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "5",
                    "file_name": "temp4",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_3.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "4",
                    "file_name": "temp3",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb_mssql_2.ndf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "3",
                    "file_name": "temp2",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\templog.ldf",
                    "data_space_id": "0",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "2",
                    "file_name": "templog",
                    "file_size": "8192",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "1",
                    "file_type_desc": "LOG",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  },
                  {
                    "content": "E:\\SXECMP\\MSSQL\\tempdb.mdf",
                    "data_space_id": "1",
                    "database": "tempdb",
                    "device": "2236DBXALIASP1\\SXECMP:14301",
                    "device.address": "164.3.13.235",
                    "device.name": "2236DBXALIASP1",
                    "device.port": "14301",
                    "dt.cost.costcenter": "xecm",
                    "dt.cost.product": "xecm_production",
                    "dt.entity.sql:sql_server_instance": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "dt.extension.config.id": "13f1477d-73dd-31b5-91b5-8028e8c12a49",
                    "dt.extension.endpoint.hints": [
                      "SXECMP",
                      "2236DBXALIASP1",
                      "14301"
                    ],
                    "dt.extension.name": "com.dynatrace.extension.sql-server",
                    "dt.openpipeline.pipelines": [
                      "logs:extension.sql-server-logs"
                    ],
                    "dt.openpipeline.source": "extension:com.dynatrace.extension.sql-server",
                    "dt.security_context": "xECM_Steel",
                    "dt.smartscape.db_database_mssql": "DB_DATABASE_MSSQL-42003C6AA0EBCB2A",
                    "dt.smartscape.db_instance_mssql": "DB_INSTANCE_MSSQL-411F67FCFD7E562F",
                    "dt.source_entity": "CUSTOM_DEVICE-BAB1B5D087308CE6",
                    "endpoint": "2236DBXALIASP1\\SXECMP:14301",
                    "event.group": "largest_files",
                    "extension": "sql_mssql",
                    "file_empty_space": null,
                    "file_id": "1",
                    "file_name": "tempdev",
                    "file_size": "102400000",
                    "file_state": "0",
                    "file_state_desc": "ONLINE",
                    "file_type": "0",
                    "file_type_desc": "ROWS",
                    "file_used_space": null,
                    "instance": "SXECMP",
                    "loglevel": "INFO",
                    "server": "2236DBXECMP01",
                    "status": "INFO",
                    "timestamp": "2026-06-23T09:34:47.895000000+02:00"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      24
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      25,
                      41
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      42,
                      66
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      67,
                      83
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      84,
                      108
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      109,
                      110
                    ],
                    "mappings": {
                      "backup_finish_date": {
                        "type": "string"
                      },
                      "backup_size": {
                        "type": "string"
                      },
                      "backup_start_date": {
                        "type": "string"
                      },
                      "beings_log_chain": {
                        "type": "string"
                      },
                      "checkpoint_lsn": {
                        "type": "string"
                      },
                      "compatibility_level": {
                        "type": "string"
                      },
                      "compressed_backup_size": {
                        "type": "string"
                      },
                      "content": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "database_backup_lsn": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device_type": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "is_password_protected": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "physical_device_name": {
                        "type": "string"
                      },
                      "recovery_model": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "software_name": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      111,
                      127
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      128,
                      152
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      153,
                      169
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      170,
                      194
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      195,
                      211
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
                        "type": "string"
                      },
                      "timestamp": {
                        "type": "timestamp"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      212,
                      236
                    ],
                    "mappings": {
                      "content": {
                        "type": "string"
                      },
                      "data_space_id": {
                        "type": "string"
                      },
                      "database": {
                        "type": "string"
                      },
                      "device": {
                        "type": "string"
                      },
                      "device.address": {
                        "type": "string"
                      },
                      "device.name": {
                        "type": "string"
                      },
                      "device.port": {
                        "type": "string"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.entity.sql:sql_server_instance": {
                        "type": "string"
                      },
                      "dt.extension.config.id": {
                        "type": "string"
                      },
                      "dt.extension.endpoint.hints": {
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
                      "dt.extension.name": {
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
                      "dt.security_context": {
                        "type": "string"
                      },
                      "dt.smartscape.db_database_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.smartscape.db_instance_mssql": {
                        "type": "smartscape_id"
                      },
                      "dt.source_entity": {
                        "type": "string"
                      },
                      "endpoint": {
                        "type": "string"
                      },
                      "event.group": {
                        "type": "string"
                      },
                      "extension": {
                        "type": "string"
                      },
                      "file_empty_space": {
                        "type": "string"
                      },
                      "file_id": {
                        "type": "string"
                      },
                      "file_name": {
                        "type": "string"
                      },
                      "file_size": {
                        "type": "string"
                      },
                      "file_state": {
                        "type": "string"
                      },
                      "file_state_desc": {
                        "type": "string"
                      },
                      "file_type": {
                        "type": "string"
                      },
                      "file_type_desc": {
                        "type": "string"
                      },
                      "file_used_space": {
                        "type": "string"
                      },
                      "instance": {
                        "type": "string"
                      },
                      "loglevel": {
                        "type": "string"
                      },
                      "server": {
                        "type": "string"
                      },
                      "status": {
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
              "chartSettings": {},
              "table": {
                "columnTypeOverrides": [
                  {
                    "disableRemoval": true,
                    "fields": [
                      "content"
                    ],
                    "id": 1782192570302,
                    "value": "log-content"
                  }
                ],
                "hideColumnsForLargeResults": true
              }
            }
          },
          "title": "Records ingested from Logs for SQL Server",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "623e69a1-47ce-4b3e-bf17-ffd12a037c07",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension.sql-server-logs\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-06-23T05:30:03.635Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension.sql-server-logs\"}, from: -30m, to: -1m"
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
                      "end": "2026-06-23T05:30:00.000000000Z",
                      "start": "2026-06-23T05:00:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"logs\" AND pipeline_id == \"extension.sql-server-logs\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"logs\" AND pipeline_id == \"extension.sql-server-logs\"}, from: -30m, to: -1m",
                    "queryId": "90b47ae0-90be-41f3-aea2-a535021dba93",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 29,
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
                      2,
                      26,
                      27,
                      1,
                      1,
                      1,
                      26,
                      27,
                      1,
                      1,
                      1,
                      26,
                      27,
                      1,
                      1,
                      26,
                      1,
                      27,
                      18,
                      1,
                      34,
                      17,
                      0,
                      0,
                      0,
                      42,
                      0,
                      17,
                      0,
                      0
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "extension.sql-server-logs",
                    "timeframe": {
                      "end": "2026-06-23T07:30:00.000000000+02:00",
                      "start": "2026-06-23T07:00:00.000000000+02:00"
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
          "title": "Records over time of Logs for SQL Server",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "79a18784-7f32-4468-9616-32a550cb0d70",
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
              "dateTime": "2026-06-23T05:30:40.851Z",
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
                      "end": "2026-06-23T05:30:00.000000000Z",
                      "start": "2026-06-23T05:00:00.000000000Z"
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
                    "executionTimeMilliseconds": 16,
                    "locale": "de",
                    "notifications": [],
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"extension.sql-server-metrics\"}, from: -30m, to: -1m",
                    "queryId": "2dfa881f-30db-42bc-b016-0ab0e10458b5",
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
                      189,
                      474,
                      330,
                      276,
                      234,
                      422,
                      235,
                      571,
                      88,
                      327,
                      328,
                      329,
                      477,
                      184,
                      476,
                      183,
                      570,
                      427,
                      228,
                      468,
                      471,
                      474,
                      183,
                      328,
                      327,
                      330,
                      476,
                      184,
                      474,
                      182
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "extension.sql-server-metrics",
                    "timeframe": {
                      "end": "2026-06-23T07:30:00.000000000+02:00",
                      "start": "2026-06-23T07:00:00.000000000+02:00"
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
          "id": "585235d5-f527-4890-b702-8f6f831c13c0",
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"default\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-06-24T06:13:46.530Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"default\"}, from: -30m, to: -1m"
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
                      "end": "2026-06-24T06:13:00.000000000Z",
                      "start": "2026-06-24T05:43:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, pipeline_id}, filter:configuration == \"metrics\" AND pipeline_id == \"default\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, pipeline_id}, filter:{ configuration == \"metrics\" AND pipeline_id == \"default\"}, from: -30m, to: -1m",
                    "queryId": "fc83474b-3cdd-470e-b9cb-2c5fb4455389",
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
                      1843,
                      1636,
                      1852,
                      484009,
                      2198,
                      1767,
                      1944,
                      1672,
                      483601,
                      2180,
                      1783,
                      1916,
                      1774,
                      484010,
                      2262,
                      1815,
                      1694,
                      1805,
                      483599,
                      2329,
                      1915,
                      1804,
                      1916,
                      483936,
                      2258,
                      1847,
                      1655,
                      1787,
                      483621,
                      2309
                    ],
                    "interval": "60000000000",
                    "pipeline_id": "default",
                    "timeframe": {
                      "end": "2026-06-24T08:13:00.000000000+02:00",
                      "start": "2026-06-24T07:43:00.000000000+02:00"
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
          "title": "Records over time of Metrics for default",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "7d8f6da9-106e-4bca-8fdb-44dccfaf2c8e",
          "previousFilterSegments": [],
          "showInput": false,
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
              "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\" AND route_name == \"default\"}, from: -30m, to: -1m"
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
              "dateTime": "2026-06-24T06:14:50.018Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\" AND route_name == \"default\"}, from: -30m, to: -1m"
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
                      "end": "2026-06-24T06:14:00.000000000Z",
                      "start": "2026-06-24T05:44:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries from:-30m, to:-1m, by:{configuration, route_name}, filter:configuration == \"metrics\" AND route_name == \"default\", datapoints = sum(dt.sfm.openpipeline.routing.records, default:0)",
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
                    "query": "timeseries datapoints=sum(dt.sfm.openpipeline.routing.records, default: 0), by:{configuration, route_name}, filter:{ configuration == \"metrics\" AND route_name == \"default\"}, from: -30m, to: -1m",
                    "queryId": "ae7caadc-932b-4d21-a812-be51cc60bf78",
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
                      1636,
                      1852,
                      484009,
                      2198,
                      1767,
                      1944,
                      1672,
                      483601,
                      2180,
                      1783,
                      1916,
                      1774,
                      484010,
                      2262,
                      1815,
                      1694,
                      1805,
                      483599,
                      2329,
                      1915,
                      1804,
                      1916,
                      483936,
                      2258,
                      1847,
                      1655,
                      1787,
                      483621,
                      2309,
                      1788
                    ],
                    "interval": "60000000000",
                    "route_name": "default",
                    "timeframe": {
                      "end": "2026-06-24T08:14:00.000000000+02:00",
                      "start": "2026-06-24T07:44:00.000000000+02:00"
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
