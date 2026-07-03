resource "dynatrace_hub_extension_config" "com_dynatrace_extension_wmi_iis" {
  name                = "com.dynatrace.extension.wmi.iis"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-C6F48352C098ABE8"
  # management_zone   = ""
  scope               = "HOST_GROUP-C6F48352C098ABE8"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "Nedcon US 2161",
      "enabled": true,
      "featureSets": [
        "IIS Extended Request Metrics",
        "Http request processing"
      ],
      "vars": {
        "iis_app_pool": "Name != '_Total'",
        "iis_site": "Name != '_Total'"
      },
      "version": "2.0.1"
    })
}
