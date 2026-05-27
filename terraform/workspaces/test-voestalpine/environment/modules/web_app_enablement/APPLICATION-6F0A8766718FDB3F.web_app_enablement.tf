resource "dynatrace_web_app_enablement" "APPLICATION-6F0A8766718FDB3F" {
  application_id = "APPLICATION-6F0A8766718FDB3F"
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
