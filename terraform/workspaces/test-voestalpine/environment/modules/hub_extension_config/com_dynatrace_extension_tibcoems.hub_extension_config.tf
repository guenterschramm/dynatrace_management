resource "dynatrace_hub_extension_config" "com_dynatrace_extension_tibcoems" {
  name                = "com.dynatrace.extension.tibcoems"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-2FA0CB405B360D1C"
  # management_zone   = ""
  scope               = "HOST_GROUP-2FA0CB405B360D1C"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Application:TibcoEMS"
      ],
      "description": "Tibco EMS - Production",
      "enabled": false,
      "featureSets": [
        "BrokerMetrics",
        "DurableMetrics",
        "QueueMetrics",
        "QueueRateMetrics",
        "TopicMetrics",
        "TopicRateMetrics"
      ],
      "pythonLocal": {
        "debug": false,
        "ems_config": {
          "64bit": false,
          "captureSystem": true,
          "monitoringRules": [
            {
              "name": "*",
              "rule_type": "include",
              "target": "queue"
            },
            {
              "name": "*",
              "rule_type": "include",
              "target": "topic"
            }
          ],
          "not_autodiscovery": false,
          "password": "***45a77d54100c60e8***",
          "ssl": false,
          "useCredentialVault": false,
          "user": "dynatrace"
        }
      },
      "version": "2.0.2"
    })
}
