resource "dynatrace_platform_bucket" "demo_logs" {
  name         = "demo_logs"
  display_name = "mycooldemo logs bucket"
  retention    = 14
  table        = "logs"
}
