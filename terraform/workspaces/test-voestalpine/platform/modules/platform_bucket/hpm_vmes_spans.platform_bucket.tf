resource "dynatrace_platform_bucket" "hpm_vmes_spans" {
  name         = "hpm_vmes_spans"
  display_name = "HPM VMES Traces"
  retention    = 14
  table        = "spans"
}
