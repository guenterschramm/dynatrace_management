resource "dynatrace_hub_extension_config" "com_dynatrace_rabbitmq" {
  name                = "com.dynatrace.rabbitmq"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-2FA0CB405B360D1C"
  # management_zone   = ""
  scope               = "HOST_GROUP-2FA0CB405B360D1C"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Application:RabbitMQ"
      ],
      "description": "RabbitMQ",
      "enabled": false,
      "featureSets": [
        "Cluster",
        "Node",
        "Queue",
        "Virtual Host"
      ],
      "pythonLocal": {
        "endpoints": [
          {
            "cluster_name": "RabbitMQ",
            "nodes": [
              "http://localhost:15672"
            ],
            "password": "***389bc0d830fc0db2***",
            "queues_include": [
              ".*"
            ],
            "use_credential_vault": false,
            "user": "otel",
            "verify_certificate": false
          }
        ]
      },
      "version": "2.1.7"
    })
}
