resource "dynatrace_web_app_enablement" "APPLICATION-4342A6B443691537" {
  application_id = "APPLICATION-4342A6B443691537"
  experience_analytics {
    enabled = false
  }
  rum {
    enabled                  = false
    cost_and_traffic_control = 100
  }
  session_replay {
    enabled                  = false
    cost_and_traffic_control = 100
  }
}
