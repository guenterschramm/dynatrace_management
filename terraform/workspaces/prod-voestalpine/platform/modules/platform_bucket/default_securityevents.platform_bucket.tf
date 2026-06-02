resource "dynatrace_platform_bucket" "default_securityevents" {
  name         = "default_securityevents"
  display_name = "Default bucket for ingested Security events"
  retention    = 372
  table        = "security.events"
}
