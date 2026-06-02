resource "dynatrace_web_app_enablement" "APPLICATION-E95AAFFB1A207ABC" {
  application_id = "APPLICATION-E95AAFFB1A207ABC"
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
