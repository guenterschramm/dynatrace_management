resource "dynatrace_platform_bucket" "davis_network_events" {
  name         = "davis_network_events"
  display_name = "Network - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
