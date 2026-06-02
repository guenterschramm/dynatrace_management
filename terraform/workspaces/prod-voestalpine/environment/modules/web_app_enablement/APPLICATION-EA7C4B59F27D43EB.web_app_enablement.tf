resource "dynatrace_web_app_enablement" "APPLICATION-EA7C4B59F27D43EB" {
  application_id = "APPLICATION-EA7C4B59F27D43EB"
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
