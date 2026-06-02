resource "dynatrace_platform_bucket" "davis_virtualization_events" {
  name         = "davis_virtualization_events"
  display_name = "Virtualization - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
