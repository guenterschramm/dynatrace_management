resource "dynatrace_hub_extension_config" "com_dynatrace_extension_wmi_iis" {
  name                = "com.dynatrace.extension.wmi.iis"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-554BA752BD01F8E3"
  # management_zone   = ""
  scope               = "HOST_GROUP-554BA752BD01F8E3"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Corporate IIS",
      "enabled": false,
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
