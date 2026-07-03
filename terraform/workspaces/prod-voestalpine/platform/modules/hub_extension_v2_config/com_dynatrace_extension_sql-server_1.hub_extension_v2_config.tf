resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_sql-server_1" {
  name  = "com.dynatrace.extension.sql-server"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "xECM Steel - Content Server PROD (CSSDP)",
      "dtAttributes": {
        "dt.cost.costcenter": "xecm",
        "dt.cost.product": "xecm_production",
        "dt.security_context": "xECM_Steel"
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
        "Transaction logs"
      ],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "password": "***48ddf5e0a2009966***",
              "scheme": "ntlm",
              "useCredentialVault": false,
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
      "version": "2.11.8"
    })
}
