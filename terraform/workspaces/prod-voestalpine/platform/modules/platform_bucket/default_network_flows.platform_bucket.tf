resource "dynatrace_platform_bucket" "default_network_flows" {
  name         = "default_network_flows"
  display_name = "Network flows"
  retention    = 10
  table        = "events"
}
