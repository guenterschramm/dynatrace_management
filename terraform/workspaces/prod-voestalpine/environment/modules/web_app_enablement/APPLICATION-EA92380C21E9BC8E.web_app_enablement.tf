resource "dynatrace_web_app_enablement" "APPLICATION-EA92380C21E9BC8E" {
  application_id = "APPLICATION-EA92380C21E9BC8E"
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
