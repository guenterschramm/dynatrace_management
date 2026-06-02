resource "dynatrace_hub_extension_config" "com_dynatrace_extension_wmi_iis_3" {
  name                = "com.dynatrace.extension.wmi.iis"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-F8254B0A4393DA8D"
  # management_zone   = ""
  scope               = "HOST_GROUP-F8254B0A4393DA8D"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [
        "Webserver:IIS"
      ],
      "description": "Bee4IT IIS",
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
