resource "dynatrace_web_app_enablement" "APPLICATION-1511292D0FDC055A" {
  application_id = "APPLICATION-1511292D0FDC055A"
  experience_analytics {
    enabled = true
  }
  rum {
    enabled                  = true
    cost_and_traffic_control = 100
    enabled_on_grail         = true
  }
  session_replay {
    enabled                  = true
    cost_and_traffic_control = 100
  }
}
