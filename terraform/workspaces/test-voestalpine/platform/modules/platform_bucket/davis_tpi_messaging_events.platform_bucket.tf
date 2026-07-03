resource "dynatrace_platform_bucket" "davis_tpi_messaging_events" {
  name         = "davis_tpi_messaging_events"
  display_name = "Davis TPI Messaging Events"
  retention    = 30
  table        = "events"
}
