resource "dynatrace_oneagent_features" "JAVA_KAFKA_STREAMS" {
  enabled = true
  key     = "JAVA_KAFKA_STREAMS"
  scope   = "environment"
}
