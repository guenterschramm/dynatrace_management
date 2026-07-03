resource "dynatrace_platform_bucket" "default_user_sessions" {
  name         = "default_user_sessions"
  display_name = "Default user sessions"
  retention    = 35
  table        = "user.sessions"
}
