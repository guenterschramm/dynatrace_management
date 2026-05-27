resource "dynatrace_web_app_enablement" "APPLICATION-6AF31975BDB90B93" {
  application_id = "APPLICATION-6AF31975BDB90B93"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
