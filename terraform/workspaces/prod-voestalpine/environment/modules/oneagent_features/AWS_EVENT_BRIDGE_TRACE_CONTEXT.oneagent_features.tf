resource "dynatrace_oneagent_features" "AWS_EVENT_BRIDGE_TRACE_CONTEXT" {
  enabled = true
  key     = "AWS_EVENT_BRIDGE_TRACE_CONTEXT"
  scope   = "environment"
}
