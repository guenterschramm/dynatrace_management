resource "dynatrace_oneagent_features" "SENSOR_JAVA_BIZEVENTS_HTTP_OUTGOING" {
  enabled           = false
  # instrumentation = false
  key               = "SENSOR_JAVA_BIZEVENTS_HTTP_OUTGOING"
  scope             = "environment"
}
