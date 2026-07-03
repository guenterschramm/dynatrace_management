resource "dynatrace_platform_bucket" "nedcon_logs" {
  name         = "nedcon_logs"
  display_name = "Nedcon Logs"
  retention    = 14
  table        = "logs"
}
