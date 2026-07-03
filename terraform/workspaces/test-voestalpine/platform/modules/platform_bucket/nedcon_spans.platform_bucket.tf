resource "dynatrace_platform_bucket" "nedcon_spans" {
  name         = "nedcon_spans"
  display_name = "Nedcon Spans"
  retention    = 14
  table        = "spans"
}
