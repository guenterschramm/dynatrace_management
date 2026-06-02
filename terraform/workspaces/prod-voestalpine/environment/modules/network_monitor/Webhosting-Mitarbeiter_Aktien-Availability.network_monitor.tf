resource "dynatrace_network_monitor" "Webhosting-Mitarbeiter_Aktien-Availability" {
  name          = "Webhosting - Mitarbeiter Aktien- Availability"
  type          = "HTTP"
  # enabled     = true
  frequency_min = 10
  locations     = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 2
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    enabled = false
  }
  steps {
    step {
      name         = "Mitarbeiter Aktien"
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
      value   = "Webhosting"
    }
  }
}
