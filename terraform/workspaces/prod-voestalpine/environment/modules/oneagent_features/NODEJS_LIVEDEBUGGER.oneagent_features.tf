resource "dynatrace_oneagent_features" "NODEJS_LIVEDEBUGGER" {
  enabled = false
  key     = "NODEJS_LIVEDEBUGGER"
  scope   = "environment"
}
