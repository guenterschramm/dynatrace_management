resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_wmi_iis" {
  name  = "com.dynatrace.extension.wmi.iis"
  scope = "HOST_GROUP-76B585663184C4C0"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Webserver:IIS"
      ],
      "description": "PAM IIS",
      "enabled": true,
      "featureSets": [
        "IIS Extended Request Metrics",
        "WWW publishing service",
        "Http request processing",
        "Url groups",
        "WAS worker process",
        "WWW publishing service cache"
      ],
      "vars": {
        "iis_app_pool": "Name != '_Total'",
        "iis_site": "Name != '_Total'"
      },
      "version": "1.2.6"
    })
}
