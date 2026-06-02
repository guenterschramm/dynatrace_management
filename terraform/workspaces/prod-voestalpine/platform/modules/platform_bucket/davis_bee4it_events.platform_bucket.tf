resource "dynatrace_platform_bucket" "davis_bee4it_events" {
  name         = "davis_bee4it_events"
  display_name = "Bee4IT - Davis Problems and Events (15 month)"
  retention    = 462
  table        = "events"
}
