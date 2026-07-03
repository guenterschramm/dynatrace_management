resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_wmi_iis_2" {
  name  = "com.dynatrace.extension.wmi.iis"
  scope = "HOST_GROUP-C345CA5D0D760424"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Webserver:IIS"
      ],
      "description": "xECM Steel IIS",
      "enabled": true,
      "featureSets": [
        "IIS Extended Request Metrics",
        "WWW publishing service"
      ],
      "vars": {
        "iis_app_pool": "Name != '_Total'",
        "iis_site": "Name != '_Total'"
      },
      "version": "1.2.6"
    })
}
