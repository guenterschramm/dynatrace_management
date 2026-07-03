resource "dynatrace_hub_extension_config" "com_dynatrace_extension_memcached_2" {
  name                = "com.dynatrace.extension.memcached"
  # active_gate_group = ""
  host                = "HOST-E35D35EA4ACC0205"
  # host_group        = ""
  # management_zone   = ""
  scope               = "HOST-E35D35EA4ACC0205"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Steel - Memcached (Backend 3)",
      "enabled": true,
      "featureSets": [
        "Connections",
        "Log",
        "Memory usage",
        "Threads",
        "Throughput",
        "Uptime",
        "Usage"
      ],
      "pythonLocal": {
        "debug": false
      },
      "version": "3.0.0"
    })
}
