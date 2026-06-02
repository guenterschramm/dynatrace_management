resource "dynatrace_oneagent_features" "JAVA_LIVEDEBUGGER" {
  enabled = false
  key     = "JAVA_LIVEDEBUGGER"
  scope   = "environment"
}
