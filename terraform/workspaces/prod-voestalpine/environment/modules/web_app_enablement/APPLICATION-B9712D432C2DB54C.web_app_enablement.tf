resource "dynatrace_web_app_enablement" "APPLICATION-B9712D432C2DB54C" {
  application_id = "APPLICATION-B9712D432C2DB54C"
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
