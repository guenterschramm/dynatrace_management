resource "dynatrace_platform_bucket" "xecm_corp_spans" {
  name         = "xecm_corp_spans"
  display_name = "xECM Corporate - Transaction Data"
  retention    = 14
  table        = "spans"
}
