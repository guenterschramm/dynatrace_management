resource "dynatrace_platform_bucket" "default_web_user_replays" {
  name         = "default_web_user_replays"
  display_name = "Default web user replays"
  retention    = 35
  table        = "user.replays"
}
