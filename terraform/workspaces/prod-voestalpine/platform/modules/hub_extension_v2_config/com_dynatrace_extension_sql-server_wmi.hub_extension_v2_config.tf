resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_sql-server_wmi" {
  name  = "com.dynatrace.extension.sql-server.wmi"
  scope = "environment"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Application:SQL Server"
      ],
      "description": "SQL Server",
      "enabled": true,
      "featureSets": [
        "Access Methods",
        "Buffer Manager",
        "Latches",
        "Locks",
        "Memory",
        "Queries"
      ],
      "version": "1.3.0"
    })
}
