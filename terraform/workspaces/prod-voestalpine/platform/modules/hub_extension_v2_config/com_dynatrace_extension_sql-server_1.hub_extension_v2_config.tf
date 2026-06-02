resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_sql-server_1" {
  name  = "com.dynatrace.extension.sql-server"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "Bee4IT Production",
      "dtAttributes": {
        "dt.cost.costcenter": "P223100000_bee4it",
        "dt.cost.product": "bee4it_production"
      },
      "enabled": true,
      "featureSets": [
        "Memory",
        "Agent",
        "Latches",
        "Database files",
        "Transaction logs",
        "Always On",
        "Transaction Logs",
        "Locks",
        "Jobs",
        "Sessions",
        "Queries",
        "Backups",
        "Replication"
      ],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "password": "***66057591ce02d880***",
              "scheme": "basic",
              "useCredentialVault": false,
              "username": "dynatrace"
            },
            "databaseName": "Bee4ITP",
            "host": "2217dbsqlbee4it",
            "instanceName": "bee4itp",
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
