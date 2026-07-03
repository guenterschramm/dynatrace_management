resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_jmx-tomcat-cp_3" {
  name  = "com.dynatrace.extension.jmx-tomcat-cp"
  scope = "HOST_GROUP-0A0A9B6358002D55"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "Webhosting - Tomcat Connection Pool",
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
