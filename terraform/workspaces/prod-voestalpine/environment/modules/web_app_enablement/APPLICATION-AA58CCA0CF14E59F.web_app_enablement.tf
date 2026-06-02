resource "dynatrace_web_app_enablement" "APPLICATION-AA58CCA0CF14E59F" {
  application_id = "APPLICATION-AA58CCA0CF14E59F"
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
