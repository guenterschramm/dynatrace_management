resource "dynatrace_hub_extension_config" "com_dynatrace_extension_sql-server" {
  name              = "com.dynatrace.extension.sql-server"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Content Server (CSSDQ)",
      "enabled": false,
      "featureSets": [],
      "sqlServerRemote": {
        "endpoints": [
          {
            "authentication": {
              "domain": "VOESTALPINE",
              "password": "***ab63fc42a275c27d***",
              "scheme": "ntlm",
              "username": "2217_S_2236_S_DBMON"
            },
            "databaseName": "",
            "host": "2236dbx19q01",
            "instanceName": "",
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
