resource "dynatrace_platform_bucket" "webhosting_spans" {
  name         = "webhosting_spans"
  display_name = "Webhosting - Transaction Data"
  retention    = 10
  table        = "spans"
}
