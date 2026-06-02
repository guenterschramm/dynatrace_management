resource "dynatrace_web_app_enablement" "APPLICATION-63B1740C1E7F005A" {
  application_id = "APPLICATION-63B1740C1E7F005A"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
