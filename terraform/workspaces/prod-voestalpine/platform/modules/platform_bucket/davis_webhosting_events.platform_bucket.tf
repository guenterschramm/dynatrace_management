resource "dynatrace_platform_bucket" "davis_webhosting_events" {
  name         = "davis_webhosting_events"
  display_name = "Webhosting Services - Davis Problem and Events (15 month)"
  retention    = 462
  table        = "events"
}
