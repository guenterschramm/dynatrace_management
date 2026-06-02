resource "dynatrace_web_app_enablement" "APPLICATION-FC0C3727A8F1C4EA" {
  application_id = "APPLICATION-FC0C3727A8F1C4EA"
  experience_analytics {
    enabled = true
  }
  rum {
    enabled                  = true
    cost_and_traffic_control = 100
    enabled_on_grail         = true
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
