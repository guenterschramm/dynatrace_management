resource "dynatrace_platform_bucket" "tpi_messaging_events" {
  name         = "tpi_messaging_events"
  display_name = "TPI Messaging Events"
  retention    = 30
  table        = "events"
}
