resource "dynatrace_hub_extension_config" "com_dynatrace_extension_jmx-tomcat-cp_3" {
  name                = "com.dynatrace.extension.jmx-tomcat-cp"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-43F6C4407DC19AD5"
  # management_zone   = ""
  scope               = "HOST_GROUP-43F6C4407DC19AD5"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "PCD_PW Portal - Tomcat Connection Pool",
      "enabled": true,
      "featureSets": [
        "additional-metrics",
        "key-metrics",
        "limits",
        "stuck-threads",
        "thread-pools",
        "web-requests"
      ],
      "version": "2.2.4"
    })
}
