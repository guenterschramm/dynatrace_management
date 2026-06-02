resource "dynatrace_oneagent_features" "SENSOR_SDK_PYTHON_CUSTOM_SERVICE" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_SDK_PYTHON_CUSTOM_SERVICE"
  scope             = "environment"
}
