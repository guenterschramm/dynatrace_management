resource "dynatrace_oneagent_features" "JAVA_VIRTUAL_THREADS" {
  enabled = false
  key     = "JAVA_VIRTUAL_THREADS"
  scope   = "environment"
}
