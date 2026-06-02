resource "dynatrace_web_app_enablement" "APPLICATION-8E8732CD12CF7B8A" {
  application_id = "APPLICATION-8E8732CD12CF7B8A"
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
