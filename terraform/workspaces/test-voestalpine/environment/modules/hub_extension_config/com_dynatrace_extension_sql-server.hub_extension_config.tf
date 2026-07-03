resource "dynatrace_hub_extension_config" "com_dynatrace_extension_sql-server" {
  name              = "com.dynatrace.extension.sql-server"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon POC SQL Server",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2157",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "Nedcon_POC"
      },
      "enabled": true,
      "featureSets": [
        "Locks",
        "Memory",
        "Sessions",
        "Transaction Logs",
        "Queries",
        "Latches",
        "Agent"
      ],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "password": "***19e09f865c77579d***",
              "scheme": "basic",
              "useCredentialVault": false,
              "username": "dynatrace_monitor"
            },
            "databaseName": "",
            "host": "2161dbus2001.voestalpine.root.local",
            "instanceName": "",
            "ssl": true,
            "useConnectionString": false,
            "validateCertificates": false
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
