resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_jmx-tomcat-cp_1" {
  name  = "com.dynatrace.extension.jmx-tomcat-cp"
  scope = "HOST_GROUP-554BA752BD01F8E3"
  value = jsonencode({
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
