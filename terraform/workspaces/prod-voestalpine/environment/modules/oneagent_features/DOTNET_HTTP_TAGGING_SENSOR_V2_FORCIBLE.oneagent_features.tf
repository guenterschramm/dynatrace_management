resource "dynatrace_oneagent_features" "DOTNET_HTTP_TAGGING_SENSOR_V2_FORCIBLE" {
  enabled  = true
  forcible = true
  key      = "DOTNET_HTTP_TAGGING_SENSOR_V2_FORCIBLE"
  scope    = "environment"
}
