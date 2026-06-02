resource "dynatrace_web_app_enablement" "APPLICATION-6CE1ED25E0C23177" {
  application_id = "APPLICATION-6CE1ED25E0C23177"
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
