resource "dynatrace_web_app_enablement" "APPLICATION-5F16E8C7D53A0F59" {
  application_id = "APPLICATION-5F16E8C7D53A0F59"
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
