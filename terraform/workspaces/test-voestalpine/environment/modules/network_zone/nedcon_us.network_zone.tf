resource "dynatrace_network_zone" "nedcon_us" {
  name                              = "nedcon_us_1013"
  # description                     = ""
  fallback_mode                     = "ANY_ACTIVE_GATE"
  num_of_configured_activegates     = 3
  num_of_configured_oneagents       = 5
  num_of_oneagents_from_other_zones = 0
  num_of_oneagents_using            = 5
}
