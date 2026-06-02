resource "dynatrace_platform_bucket" "default_mobile_user_replays" {
  name         = "default_mobile_user_replays"
  display_name = "Default mobile user replays"
  retention    = 35
  table        = "user.replays"
}
