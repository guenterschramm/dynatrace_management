resource "dynatrace_platform_bucket" "default_synthetic_user_sessions" {
  name         = "default_synthetic_user_sessions"
  display_name = "Default synthetic user sessions"
  retention    = 35
  table        = "user.sessions"
}
