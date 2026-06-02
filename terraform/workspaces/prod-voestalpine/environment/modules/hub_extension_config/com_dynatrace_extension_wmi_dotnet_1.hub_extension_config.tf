resource "dynatrace_hub_extension_config" "com_dynatrace_extension_wmi_dotnet_1" {
  name                = "com.dynatrace.extension.wmi.dotnet"
  # active_gate_group = ""
  # host              = ""
  host_group          = "HOST_GROUP-C345CA5D0D760424"
  # management_zone   = ""
  scope               = "HOST_GROUP-C345CA5D0D760424"
  value               = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Steel .NET",
      "enabled": true,
      "version": "1.2.8"
    })
}
