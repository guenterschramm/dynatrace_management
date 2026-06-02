resource "dynatrace_web_app_enablement" "APPLICATION-7CFD0CDA3C724F01" {
  application_id = "APPLICATION-7CFD0CDA3C724F01"
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
