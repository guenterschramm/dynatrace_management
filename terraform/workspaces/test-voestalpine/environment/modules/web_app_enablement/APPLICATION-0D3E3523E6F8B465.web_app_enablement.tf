resource "dynatrace_web_app_enablement" "APPLICATION-0D3E3523E6F8B465" {
  application_id = "APPLICATION-0D3E3523E6F8B465"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
