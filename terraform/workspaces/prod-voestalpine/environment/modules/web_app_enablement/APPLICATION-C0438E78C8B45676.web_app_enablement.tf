resource "dynatrace_web_app_enablement" "APPLICATION-C0438E78C8B45676" {
  application_id = "APPLICATION-C0438E78C8B45676"
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
