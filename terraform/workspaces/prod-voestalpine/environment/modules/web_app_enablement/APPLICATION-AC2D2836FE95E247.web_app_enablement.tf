resource "dynatrace_web_app_enablement" "APPLICATION-AC2D2836FE95E247" {
  application_id = "APPLICATION-AC2D2836FE95E247"
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
