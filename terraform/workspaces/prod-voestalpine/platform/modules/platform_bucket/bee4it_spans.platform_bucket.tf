resource "dynatrace_platform_bucket" "bee4it_spans" {
  name         = "bee4it_spans"
  display_name = "Bee4IT - Transaction Data"
  retention    = 10
  table        = "spans"
}
