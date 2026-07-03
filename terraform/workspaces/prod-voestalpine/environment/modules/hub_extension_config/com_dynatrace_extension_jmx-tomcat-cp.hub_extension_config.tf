resource "dynatrace_hub_extension_config" "com_dynatrace_extension_jmx-tomcat-cp" {
  name                = "com.dynatrace.extension.jmx-tomcat-cp"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-554BA752BD01F8E3"
  # management_zone   = ""
  scope               = "HOST_GROUP-554BA752BD01F8E3"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Corporate - Tomcat Connection Pool",
      "enabled": false,
      "featureSets": [
        "additional-metrics",
        "key-metrics",
        "limits",
        "thread-pools",
        "web-requests"
      ],
      "version": "2.2.4"
    })
}
