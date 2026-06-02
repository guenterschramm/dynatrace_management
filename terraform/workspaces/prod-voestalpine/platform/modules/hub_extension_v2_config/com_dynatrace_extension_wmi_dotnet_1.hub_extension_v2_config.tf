resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_wmi_dotnet_1" {
  name  = "com.dynatrace.extension.wmi.dotnet"
  scope = "HOST_GROUP-554BA752BD01F8E3"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Corporate .NET",
      "enabled": false,
      "version": "1.2.8"
    })
}
