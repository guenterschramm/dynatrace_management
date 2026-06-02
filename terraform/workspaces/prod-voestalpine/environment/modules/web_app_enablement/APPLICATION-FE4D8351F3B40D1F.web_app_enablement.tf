resource "dynatrace_web_app_enablement" "APPLICATION-FE4D8351F3B40D1F" {
  application_id = "APPLICATION-FE4D8351F3B40D1F"
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
