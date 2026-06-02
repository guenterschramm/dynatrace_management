resource "dynatrace_document" "Databases_overview" {
  name      = "Databases overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 5
        },
        "10": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 5
        },
        "12": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "15": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "17": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 5
        },
        "19": {
          "h": 6,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "21": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "29": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "30": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "9": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 1
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Vendors of Extensions Framework 2.0–monitored database instances.",
          "query": "//Getting all DB entities\ndata json:\"[]\"\n| append [fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`]\n| append [fetch `dt.entity.sql:db2_instance`]\n| append [fetch `dt.entity.sql:sql_server_instance`]\n| append [fetch `dt.entity.sql:snowflake_account`]\n| append [fetch `dt.entity.sql:postgres_instance`]\n| append [fetch `dt.entity.mysql:instance`]\n| append [fetch `dt.entity.sql:hana_db_database`]\n| append [fetch `dt.entity.mariadb:instance`]\n| fields entityType = entity.type\n\n//Mapping human readable DB types\n| join [\n  data record(entityType=\"sql:com_dynatrace_extension_sql-oracle_instance\", display_name=\"Oracle Database\"),\n       record(entityType=\"sql:db2_instance\", display_name=\"IBM DB2\"),\n       record(entityType=\"sql:sql_server_instance\", display_name=\"MS SQL\"),\n       record(entityType=\"sql:snowflake_account\", display_name=\"Snowflake\"),\n       record(entityType=\"sql:postgres_instance\", display_name=\"PostgreSQL\"),\n       record(entityType=\"mysql:instance\", display_name=\"MySQL\"),\n       record(entityType=\"sql:hana_db_database\", display_name=\"HANA DB\"), \n       record(entityType=\"mariadb:instance\", display_name=\"MariaDB\")   \n], on: { entityType }, kind: leftOuter\n\n| fieldsAdd dbType=coalesce(right.display_name, \"Other\")\n\n//Create chart by type\n| summarize by:{dbType}, count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances by vendor",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "dbType"
                ]
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              }
            },
            "coloring": {
              "thresholdRules": []
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Databases with/without active Davis problems.",
          "query": "// Fetch entities in Databases app\ndata json: \"[]\"\n| append [\n    fetch `dt.entity.sql:hana_db_database`\n    | fieldsAdd vendor_icon = \"sap\"\n]\n| append [\n    fetch `dt.entity.sql:postgres_instance`\n    | fieldsAdd vendor_icon = \"postgre\"\n]\n| append [\n    fetch `dt.entity.mariadb:instance`\n    | fieldsAdd vendor_icon = \"mariadb\"\n]\n| append [\n    fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`\n    | fieldsAdd vendor_icon = \"oracledatabase\"\n]\n| append [\n    fetch `dt.entity.mysql:instance`\n    | fieldsAdd vendor_icon = \"mysql\"\n]\n| append [\n    fetch `dt.entity.sql:sql_server_instance`\n    | fieldsAdd vendor_icon = \"sql-microsoft\"\n]\n| filterOut isNull(id)\n| fieldsKeep  vendor_icon\n| dedup vendor_icon\n\n//Joining with services using the supported vendor icon\n| join [\n  fetch dt.entity.service\n  | filter serviceType == \"DATABASE_SERVICE\"\n  | fields vendor_icon = icon[primaryIconType], id, entity.name\n], on:{vendor_icon}, fields:{entity.name, id}\n\n// Check any active problem\n| lookup [\n  fetch dt.davis.problems\n  | filter event.status == \"ACTIVE\"\n  | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"problems\", else: \"healthy\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database services health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "affected",
                  "value": "healthy"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "affected",
                  "value": "problems"
                }
              ]
            },
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "comparator": "=",
                  "id": 101365.5,
                  "value": "healthy"
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "comparator": "=",
                  "id": 111885.79999999702,
                  "value": "problems"
                }
              ],
              "dataMappings": {
                "value": "affected"
              },
              "displayedFields": [
                "name"
              ],
              "labels": {
                "showLabels": true
              },
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total amount of calling services.",
          "query": "// Fetch entities in Databases app\ndata json: \"[]\"\n| append [\n    fetch `dt.entity.sql:hana_db_database`\n    | fieldsAdd vendor_icon = \"sap\"\n]\n| append [\n    fetch `dt.entity.sql:postgres_instance`\n    | fieldsAdd vendor_icon = \"postgre\"\n]\n| append [\n    fetch `dt.entity.mariadb:instance`\n    | fieldsAdd vendor_icon = \"mariadb\"\n]\n| append [\n    fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`\n    | fieldsAdd vendor_icon = \"oracledatabase\"\n]\n| append [\n    fetch `dt.entity.mysql:instance`\n    | fieldsAdd vendor_icon = \"mysql\"\n]\n| append [\n    fetch `dt.entity.sql:sql_server_instance`\n    | fieldsAdd vendor_icon = \"sql-microsoft\"\n]\n| filterOut isNull(id)\n| fieldsKeep  vendor_icon\n| dedup vendor_icon\n\n//Joining with services using the supported vendor icon\n| join [\n    fetch dt.entity.service\n    | filter serviceType == \"DATABASE_SERVICE\"\n    | fields vendor_icon = icon[primaryIconType] \n  ], on:{vendor_icon}, kind:inner\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "DatabaseIcon"
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
          "description": "Amount of database services with active Davis problems.",
          "query": "// Fetch entities in Databases app\ndata json: \"[]\"\n| append [\n    fetch `dt.entity.sql:hana_db_database`\n    | fieldsAdd vendor_icon = \"sap\"\n]\n| append [\n    fetch `dt.entity.sql:postgres_instance`\n    | fieldsAdd vendor_icon = \"postgre\"\n]\n| append [\n    fetch `dt.entity.mariadb:instance`\n    | fieldsAdd vendor_icon = \"mariadb\"\n]\n| append [\n    fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`\n    | fieldsAdd vendor_icon = \"oracledatabase\"\n]\n| append [\n    fetch `dt.entity.mysql:instance`\n    | fieldsAdd vendor_icon = \"mysql\"\n]\n| append [\n    fetch `dt.entity.sql:sql_server_instance`\n    | fieldsAdd vendor_icon = \"sql-microsoft\"\n]\n| filterOut isNull(id)\n| fieldsKeep  vendor_icon\n| dedup vendor_icon\n\n//Joining with services using the supported vendor icon\n| join [\n    fetch dt.entity.service\n    | filter serviceType == \"DATABASE_SERVICE\"\n    | fields vendor_icon = icon[primaryIconType], id, entity.name\n], on:{vendor_icon}, fields:{entity.name, id}\n\n// Check any active problem\n| lookup [\n    fetch dt.davis.problems\n    | filter event.status == \"ACTIVE\"\n    | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind\n| summarize countif(affected==\"yes\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database services with problems",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "countIf(affected == \"yes\")",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "countIf(affected == \"yes\")",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "ConnectorIcon"
            }
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "// Fetch entities in Databases app\ndata json: \"[]\"\n| append [\n    fetch `dt.entity.sql:hana_db_database`\n    | fieldsAdd vendor_icon = \"sap\"\n]\n| append [\n    fetch `dt.entity.sql:postgres_instance`\n    | fieldsAdd vendor_icon = \"postgre\"\n]\n| append [\n    fetch `dt.entity.mariadb:instance`\n    | fieldsAdd vendor_icon = \"mariadb\"\n]\n| append [\n    fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`\n    | fieldsAdd vendor_icon = \"oracledatabase\"\n]\n| append [\n    fetch `dt.entity.mysql:instance`\n    | fieldsAdd vendor_icon = \"mysql\"\n]\n| append [\n    fetch `dt.entity.sql:sql_server_instance`\n    | fieldsAdd vendor_icon = \"sql-microsoft\"\n]\n| filterOut isNull(id)\n| fieldsKeep  vendor_icon\n| dedup vendor_icon\n\n//Joining with services using the supported vendor icon\n| join [\n    fetch dt.entity.service\n    | filter serviceType == \"DATABASE_SERVICE\"\n    | fields vendor_icon = icon[primaryIconType], databaseVendor\n], on:{vendor_icon}, kind:inner, fields:{databaseVendor}\n| summarize count(), by:{databaseVendor}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database services by vendor",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Status of Extensions Framework 2.0–monitored database instances.",
          "query": "// Fetch entities\ndata json: \"[]\"\n| append [\n    fetch `dt.entity.sql:hana_db_database`\n    | lookup [\n        timeseries avg(`sap.hana.db.service.status`),\n        by: {`dt.entity.sql:hana_db_database`, db_status_hanadb = status},\n        from: -10m\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.sql:hana_db_database`,\n    fields: {db_status_hanadb}\n]\n| append [\n    fetch `dt.entity.sql:postgres_instance`\n    | lookup [\n        timeseries avg(`postgres.uptime`),\n        by: {`dt.entity.sql:postgres_instance`},\n        from: -10m\n        | fieldsAdd db_status_postgresql = \"UP\"\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.sql:postgres_instance`,\n    fields: {db_status_postgresql}\n]\n| append [\n    fetch `dt.entity.mariadb:instance`\n    | lookup [\n        timeseries avg(`mariadb.global_status.status`),\n        by: {`dt.entity.mariadb:instance`, db_status_mariadb = status},\n        from: -10m\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.mariadb:instance`,\n    fields: {db_status_mariadb}\n]\n| append [\n    fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`\n    | lookup [\n        timeseries avg(`com.dynatrace.extension.sql-oracle.status`),\n        by: {`dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`, db_status_oracle = status},\n        from: -10m\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`,\n    fields: {db_status_oracle}\n]\n| append [\n    fetch `dt.entity.mysql:instance`\n    | lookup [\n        timeseries avg(`mysql.global_status.status`),\n        by: {`dt.entity.mysql:instance`, db_status_mysql = status},\n        from: -10m\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.mysql:instance`,\n    fields: {db_status_mysql}\n]\n| append [\n    fetch `dt.entity.sql:sql_server_instance`\n    | lookup [\n        timeseries avg(`sql-server.databases.state`),\n        by: {`dt.entity.sql:sql_server_instance`, db_status_mssql = database.state},\n        from: -10m\n    ],\n    sourceField: id,\n    lookupField: `dt.entity.sql:sql_server_instance`,\n    fields: {db_status_mssql}\n]\n| fieldsAdd status_of_db = coalesce(db_status_oracle, db_status_db2, db_status_mssql, db_status_postgresql, db_status_mysql, db_status_mariadb, db_status_hanadb)\n| fieldsRemove db_status_oracle, db_status_db2, db_status_mssql, db_status_postgresql, db_status_mysql, db_status_mariadb, db_status_hanadb\n\n//Mapping into 3 cathegories      \n| fieldsAdd unified_status = if(in(status_of_db, {\"OPEN\", \"OPEN MIGRATE\", \"ACTIVE\", \"ONLINE\", \"UP\", \"AVAILABLE\", \"AVAILABLE\", \"YES\"}), \"AVAILABLE\")\n| fieldsAdd unified_status = if(in(status_of_db, {\"OFFLINE\", \"EMERGENCY\", \"NO\"}), \"ERROR\", else: unified_status)\n| fieldsAdd unified_status = if(in(status_of_db, {\"STARTED\", \"MOUNTED\", \"QUIESCE_PEND\", \"QUIESCED\", \"ROLLFWD\", \"ACTIVE_STANDBY\", \"STANDBY\", \"RESTORING\", \"RECOVERING\", \"RECOVERY PENDING\", \"SUSPECT\", \"STARTING\", \"STOPPING\", \"UNKNOWN\"}), \"WARNING\", else: unified_status) //| append\n| filterOut  isNull(unified_status)\n| summarize count = count(), by: {unified_status}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances availability",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoryOverrides": {
                "AVAILABLE": {
                  "added": 319953.200000003,
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  }
                },
                "OTHER": {
                  "added": 325881.30000000075,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-02-default, #84859a)"
                  }
                }
              },
              "circleChartSettings": {
                "valueType": "relative"
              },
              "colorPalette": "apdex"
            },
            "coloring": {
              "thresholdRules": []
            },
            "legend": {
              "ratio": 32
            },
            "unitsOverrides": [
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "activeSessions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "userCalls",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "description": "Total amount of Extensions Framework 2.0–monitored database instances.",
          "query": "// Fetch entities\ndata json:\"[]\"\n| append [fetch `dt.entity.sql:snowflake_account`]\n| append [fetch `dt.entity.sql:hana_db_database`]\n| append [fetch `dt.entity.sql:postgres_instance`]\n| append [fetch `dt.entity.sql:db2_instance`]\n| append [fetch `dt.entity.mariadb:instance`]\n| append [fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`]\n| append [fetch `dt.entity.mysql:instance`]\n| append [fetch `dt.entity.sql:sql_server_instance`]\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total database instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-threshold-bad-default, #cd3741)"
                  },
                  "field": "eventsThreshold",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "field": "eventsThreshold",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "DatabaseIcon"
            },
            "unitsOverrides": [
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "activeSessions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "userCalls",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "29": {
          "content": "**Data is missing or you want to learn more? Please follow the links below to complete your data onboarding:**\n\n* [Learn more about Database Observability](https://docs.dynatrace.com/docs/observe/applications-and-microservices/databases) \n* [Observe database services using extensions framework 2.0](https://docs.dynatrace.com/docs/observe/applications-and-microservices/databases/database-app)",
          "type": "markdown"
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": " Extensions Framework 2.0–monitored database instances with potentially problematic availability.",
          "query": "// Fetch entities\ndata json:\"[]\"\n| append [fetch `dt.entity.sql:snowflake_account`]\n| append [fetch `dt.entity.sql:hana_db_database`]\n| append [fetch `dt.entity.sql:postgres_instance`]\n| append [fetch `dt.entity.sql:db2_instance`]\n| append [fetch `dt.entity.sql:com_dynatrace_extension_sql-oracle_instance`]\n| append [fetch `dt.entity.mysql:instance` ]\n| append [fetch `dt.entity.mariadb:instance` ]\n| append [fetch `dt.entity.sql:sql_server_instance`]\n| fields entityName = entity.name, entityId = id\n| filterOut isNull(entityId)\n| fields entityId\n\n//Check if any of the entities have open alerts\n|  lookup [\n  fetch dt.davis.problems.snapshots\n      | sort timestamp\n      | summarize {\n        event.status = takeLast(event.status),\n        dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate),\n        affected_entity_ids=takeLast(affected_entity_ids)\n      }, by: {event.id}\n      | expand affected_entity_ids\n      | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n      | filter event.status == \"ACTIVE\"\n      | summarize problemsCount = count(), by:{affected_entity_ids}],\n      sourceField: entityId,\n      lookupField: affected_entity_ids,\n      fields:{problemsCount}\n| filter problemsCount \u003e 0\n| summarize count()\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances with alerts",
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
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "count()",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "ConnectorIcon",
              "recordField": "count()"
            },
            "unitsOverrides": [
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "activeSessions",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1757333237005,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "identifier": "userCalls",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "8": {
          "content": "### Database Availability and Health",
          "type": "markdown"
        },
        "9": {
          "content": "Get an overview about database performance and monitoring status. For deeper analysis of all your Extensions Framework 2.0–monitored databases, please use the [Databases](/ui/apps/dynatrace.database.overview/home) app. If you don´t see data, start monitoring databases using the [extensions framework 2.0](https://docs.dynatrace.com/docs/observe/applications-and-microservices/databases/database-app) or explore this dashboard in our [playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.database.overview.database-overview).",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.database.overview.database-overview"
  # private = false
}
