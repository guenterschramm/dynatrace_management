resource "dynatrace_platform_bucket" "nedcon_events" {
  name         = "nedcon_events"
  display_name = "Nedcon Events"
  retention    = 30
  table        = "events"
}
