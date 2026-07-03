resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_jmx-tomcat-cp_2" {
  name  = "com.dynatrace.extension.jmx-tomcat-cp"
  scope = "HOST_GROUP-C345CA5D0D760424"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Steel - Tomcat Connection Pool",
      "enabled": true,
      "featureSets": [
        "key-metrics",
        "limits",
        "additional-metrics",
        "thread-pools",
        "web-requests"
      ],
      "version": "2.2.4"
    })
}
