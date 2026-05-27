resource "dynatrace_nettracer" "environment" {
  net_tracer = true
  scope      = "environment"
}
