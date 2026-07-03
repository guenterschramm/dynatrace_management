resource "dynatrace_network_monitor" "xECM_Corporate-Availability" {
  name          = "xECM Corporate - Availability"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 3
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    enabled = false
  }
  steps {
    step {
      name         = "xECM Corporate - Starting Page"
      request_type = ""
      constraints {
        constraint {
          type = "HTTP_STATUSES"
          properties = {
            "value"    = "400"
            "operator" = "<"
          }
        }
      }
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "Application"
      source  = "RULE_BASED"
      value   = "xECM Corporate"
    }
  }
}
