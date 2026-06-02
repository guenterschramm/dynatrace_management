resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_memcached" {
  name  = "com.dynatrace.extension.memcached"
  scope = "HOST-E35D35EA4ACC0205"
  value = jsonencode({
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
      "version": "2.1.1"
    })
}
