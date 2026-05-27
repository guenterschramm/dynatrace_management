resource "dynatrace_web_app_enablement" "APPLICATION-F722C3E93DFB059A" {
  application_id = "APPLICATION-F722C3E93DFB059A"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
