resource "dynatrace_web_app_enablement" "APPLICATION-0D2E39FAC87814BC" {
  application_id = "APPLICATION-0D2E39FAC87814BC"
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
