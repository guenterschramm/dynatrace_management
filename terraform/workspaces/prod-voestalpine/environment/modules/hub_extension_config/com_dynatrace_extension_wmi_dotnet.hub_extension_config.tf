resource "dynatrace_hub_extension_config" "com_dynatrace_extension_wmi_dotnet" {
  name                = "com.dynatrace.extension.wmi.dotnet"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-554BA752BD01F8E3"
  # management_zone   = ""
  scope               = "HOST_GROUP-554BA752BD01F8E3"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Corporate .NET",
      "enabled": false,
      "version": "1.2.8"
    })
}
