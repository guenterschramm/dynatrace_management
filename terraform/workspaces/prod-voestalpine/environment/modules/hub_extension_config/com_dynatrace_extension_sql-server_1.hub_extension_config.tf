resource "dynatrace_hub_extension_config" "com_dynatrace_extension_sql-server_1" {
  name              = "com.dynatrace.extension.sql-server"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Bee4IT Production",
      "dtAttributes": {
        "dt.cost.costcenter": "P223100000_bee4it",
        "dt.cost.product": "bee4it_production",
        "dt.security_context": "Bee4IT"
      },
      "enabled": true,
      "featureSets": [
        "Locks",
        "Memory",
        "Sessions",
        "Transaction Logs",
        "Agent",
        "Always On",
        "Backups",
        "Database files",
        "Latches",
        "Queries",
        "Replication"
      ],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "credentialVaultId": "CREDENTIALS_VAULT-613313DA871BC6CD",
              "scheme": "basic",
              "useCredentialVault": true
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
      "version": "3.1.2"
    })
}
