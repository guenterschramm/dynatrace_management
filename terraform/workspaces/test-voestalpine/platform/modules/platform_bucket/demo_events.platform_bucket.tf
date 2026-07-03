resource "dynatrace_platform_bucket" "demo_events" {
  name         = "demo_events"
  display_name = "mycooldemo events bucket"
  retention    = 35
  table        = "events"
}
