resource "dynatrace_hub_extension_config" "com_dynatrace_extension_memcached" {
  name                = "com.dynatrace.extension.memcached"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-C345CA5D0D760424"
  # management_zone   = ""
  scope               = "HOST_GROUP-C345CA5D0D760424"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Technology:Memcached"
      ],
      "description": "xECM Steel Memcached",
      "enabled": false,
      "featureSets": [
        "Connections",
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
