resource "dynatrace_platform_bucket" "xecm_steel_spans" {
  name         = "xecm_steel_spans"
  display_name = "xECM Steel - Transaction Data"
  retention    = 14
  table        = "spans"
}
