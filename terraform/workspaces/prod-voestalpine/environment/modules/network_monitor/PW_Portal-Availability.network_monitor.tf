resource "dynatrace_network_monitor" "PW_Portal-Availability" {
  name          = "PW Portal - Availability"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-0000000000000046", "SYNTHETIC_LOCATION-0000000000000059", "SYNTHETIC_LOCATION-000000000000004B", "SYNTHETIC_LOCATION-0000000000000087", "SYNTHETIC_LOCATION-0000000000000098", "SYNTHETIC_LOCATION-000000000000004C", "SYNTHETIC_LOCATION-0000000000000044", "SYNTHETIC_LOCATION-000000000000004D", "SYNTHETIC_LOCATION-0000000000000067", "SYNTHETIC_LOCATION-0000000000000094", "SYNTHETIC_LOCATION-0000000000000062", "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 2
    # global_outages                          = true
    local_consecutive_outage_count_threshold  = 2
    local_location_outage_count_threshold     = 3
    local_outages                             = true
  }
  performance_thresholds {
    # enabled = true
  }
  steps {
    step {
      name         = "pwportal.voestalpine.com"
      request_type = ""
      constraints {
        constraint {
          type = "HTTP_STATUSES"
          properties = {
            "operator" = "<"
            "value"    = "400"
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
      value   = "PW_Portal"
    }
  }
}
