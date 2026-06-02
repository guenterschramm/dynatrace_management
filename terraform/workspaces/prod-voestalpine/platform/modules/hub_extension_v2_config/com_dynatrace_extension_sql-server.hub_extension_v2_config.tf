resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_sql-server" {
  name  = "com.dynatrace.extension.sql-server"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "Content Server PROD (CSSDP)",
      "dtAttributes": {
        "dt.cost.costcenter": "xecm",
        "dt.cost.product": "xecm_production"
      },
      "enabled": true,
      "featureSets": [
        "Agent",
        "Always On",
        "Backups",
        "Database files",
        "Jobs",
        "Latches",
        "Locks",
        "Memory",
        "Queries",
        "Replication",
        "Sessions",
        "Transaction logs",
        "Transaction Logs"
      ],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "password": "***48ddf5e0a2009966***",
              "scheme": "ntlm",
              "username": "2217_S_2236_DYNA_P"
            },
            "databaseName": "",
            "host": "2236DBXALIASP1",
            "instanceName": "SXECMP",
            "port": 14301,
            "ssl": false,
            "useConnectionString": false
          }
        ]
      },
      "vars": {
        "heavy-query-interval": "5",
        "longest-queries-timeout": "120",
        "query-interval": "1"
      },
      "version": "2.11.5"
    })
}
