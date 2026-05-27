resource "dynatrace_oneagent_features" "GO_DYNAMIZER_MEMFD" {
  enabled = true
  key     = "GO_DYNAMIZER_MEMFD"
  scope   = "environment"
}
