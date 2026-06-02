resource "dynatrace_platform_bucket" "default_bizevents" {
  name         = "default_bizevents"
  display_name = "Business events"
  retention    = 35
  table        = "bizevents"
}
