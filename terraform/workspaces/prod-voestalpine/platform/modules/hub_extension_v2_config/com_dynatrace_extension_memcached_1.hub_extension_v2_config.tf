resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_memcached_1" {
  name  = "com.dynatrace.extension.memcached"
  scope = "HOST-48D8D0E1FD5ADEE0"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Steel - Memcached (Backend 1)",
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
