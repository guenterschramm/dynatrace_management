resource "dynatrace_web_app_enablement" "APPLICATION-1CF4A917DFBACBAC" {
  application_id = "APPLICATION-1CF4A917DFBACBAC"
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
