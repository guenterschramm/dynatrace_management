resource "dynatrace_oneagent_features" "NODEJS_WORKERTHREADS_FORCIBLE" {
  enabled = false
  key     = "NODEJS_WORKERTHREADS_FORCIBLE"
  scope   = "environment"
}
