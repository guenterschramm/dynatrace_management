resource "dynatrace_web_app_enablement" "APPLICATION-CEC141EFD5B55FF1" {
  application_id = "APPLICATION-CEC141EFD5B55FF1"
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
