resource "dynatrace_platform_bucket" "davis_nedcon_events" {
  name         = "davis_nedcon_events"
  display_name = "David Nedcon Events"
  retention    = 30
  table        = "events"
}
