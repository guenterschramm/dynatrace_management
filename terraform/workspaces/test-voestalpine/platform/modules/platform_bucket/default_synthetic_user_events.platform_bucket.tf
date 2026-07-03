resource "dynatrace_platform_bucket" "default_synthetic_user_events" {
  name         = "default_synthetic_user_events"
  display_name = "Default synthetic user events"
  retention    = 35
  table        = "user.events"
}
