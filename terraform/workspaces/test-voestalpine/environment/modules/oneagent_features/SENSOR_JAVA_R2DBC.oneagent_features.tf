resource "dynatrace_oneagent_features" "SENSOR_JAVA_R2DBC" {
  enabled         = true
  instrumentation = true
  key             = "SENSOR_JAVA_R2DBC"
  scope           = "environment"
}
