resource "dynatrace_oneagent_features" "SENSOR_DOTNET_KAFKA_FORCIBLE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_DOTNET_KAFKA_FORCIBLE"
  scope             = "environment"
}
