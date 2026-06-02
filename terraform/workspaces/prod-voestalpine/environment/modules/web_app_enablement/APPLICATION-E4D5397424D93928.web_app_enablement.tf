resource "dynatrace_web_app_enablement" "APPLICATION-E4D5397424D93928" {
  application_id = "APPLICATION-E4D5397424D93928"
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
