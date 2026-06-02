resource "dynatrace_platform_bucket" "database_events" {
  name         = "database_events"
  display_name = "database_events"
  retention    = 30
  table        = "events"
}
