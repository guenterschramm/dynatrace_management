resource "dynatrace_platform_bucket" "default_user_events" {
  name         = "default_user_events"
  display_name = "Default user events"
  retention    = 35
  table        = "user.events"
}
