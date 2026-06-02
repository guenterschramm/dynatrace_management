resource "dynatrace_web_app_enablement" "APPLICATION-1F821B38D9E0D4B8" {
  application_id = "APPLICATION-1F821B38D9E0D4B8"
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
