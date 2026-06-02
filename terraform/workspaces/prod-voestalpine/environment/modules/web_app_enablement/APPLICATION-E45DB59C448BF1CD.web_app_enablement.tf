resource "dynatrace_web_app_enablement" "APPLICATION-E45DB59C448BF1CD" {
  application_id = "APPLICATION-E45DB59C448BF1CD"
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
