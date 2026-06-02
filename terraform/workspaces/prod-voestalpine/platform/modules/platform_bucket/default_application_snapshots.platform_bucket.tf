resource "dynatrace_platform_bucket" "default_application_snapshots" {
  name         = "default_application_snapshots"
  display_name = "Default application snapshots"
  retention    = 10
  table        = "application.snapshots"
}
