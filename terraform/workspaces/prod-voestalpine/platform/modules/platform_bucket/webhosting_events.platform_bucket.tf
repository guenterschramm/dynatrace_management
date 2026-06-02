resource "dynatrace_platform_bucket" "webhosting_events" {
  name         = "webhosting_events"
  display_name = "Webhosting Service Events (450 days)"
  retention    = 450
  table        = "events"
}
