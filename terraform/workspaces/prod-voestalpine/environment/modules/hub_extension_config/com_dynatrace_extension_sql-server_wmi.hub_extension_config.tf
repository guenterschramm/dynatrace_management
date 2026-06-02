resource "dynatrace_hub_extension_config" "com_dynatrace_extension_sql-server_wmi" {
  name                = "com.dynatrace.extension.sql-server.wmi"
  # active_gate_group = ""
  # host              = ""
  # host_group        = ""
  # management_zone   = ""
  scope               = "environment"
  value               = jsonencode({
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
