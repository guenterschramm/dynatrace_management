resource "dynatrace_oneagent_features" "DOTNET_ASPNETCORE_UEM" {
  enabled = true
  key     = "DOTNET_ASPNETCORE_UEM"
  scope   = "environment"
}
