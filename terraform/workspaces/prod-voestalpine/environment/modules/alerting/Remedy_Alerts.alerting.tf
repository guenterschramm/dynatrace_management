resource "dynatrace_alerting" "Remedy_Alerts" {
  name            = "Remedy Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQ1NTZlZWExZC1lNmE0LTM0NmItYTMzYS03OWU1MjkxMzVkYjO-71TeFdrerQ"
  filters {
    filter {
      predefined {
        type     = "APPLICATION_SLOWDOWN"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "APPLICATION_ERROR_RATE_INCREASED"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "CUSTOM_APPLICATION_UNEXPECTED_HIGH_LOAD"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "CUSTOM_APPLICATION_SLOWDOWN"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "CUSTOM_APPLICATION_ERROR_RATE_INCREASED"
        # negate = false
      }
    }
  }
  rules {
    rule {
      delay_in_minutes = 5
      include_mode     = "NONE"
      severity_level   = "AVAILABILITY"
    }
    rule {
      delay_in_minutes = 5
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      delay_in_minutes = 5
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 5
      include_mode     = "NONE"
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      delay_in_minutes = 10
      include_mode     = "NONE"
      severity_level   = "PERFORMANCE"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "RESOURCE_CONTENTION"
    }
  }
}
