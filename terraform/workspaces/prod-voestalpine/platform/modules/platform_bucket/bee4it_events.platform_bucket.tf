resource "dynatrace_platform_bucket" "bee4it_events" {
  name         = "bee4it_events"
  display_name = "bee4it_events"
  retention    = 450
  table        = "events"
}
