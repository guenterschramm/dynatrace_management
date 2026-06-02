resource "dynatrace_web_app_enablement" "APPLICATION-CCAD3C50DAE69F7D" {
  application_id = "APPLICATION-CCAD3C50DAE69F7D"
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
