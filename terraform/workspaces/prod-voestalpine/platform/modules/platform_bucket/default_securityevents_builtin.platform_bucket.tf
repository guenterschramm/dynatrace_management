resource "dynatrace_platform_bucket" "default_securityevents_builtin" {
  name         = "default_securityevents_builtin"
  display_name = "Default bucket for Dynatrace built-in Security events"
  retention    = 1102
  table        = "security.events"
}
