resource "dynatrace_oneagent_features" "SENSOR_SDK_PYTHON_DATABASE_REQUEST" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_SDK_PYTHON_DATABASE_REQUEST"
  scope             = "environment"
}
