resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_wmi_dotnet" {
  name  = "com.dynatrace.extension.wmi.dotnet"
  scope = "HOST_GROUP-C345CA5D0D760424"
  value = jsonencode({
      "activationContext": "LOCAL",
      "activationTags": [],
      "description": "xECM Steel .NET",
      "enabled": true,
      "version": "1.2.8"
    })
}
