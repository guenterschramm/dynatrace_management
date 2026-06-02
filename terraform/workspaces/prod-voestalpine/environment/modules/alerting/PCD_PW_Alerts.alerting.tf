resource "dynatrace_alerting" "PCD_PW_Alerts" {
  name            = "PCD_PW Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQxMDc2ZTJjZC03ODE5LTNmNjktYWMzMi1hZjc5MTQyYjUyYzi-71TeFdrerQ"
  filters {
    filter {
      predefined {
        type     = "SERVICE_UNEXPECTED_HIGH_LOAD"
        # negate = false
      }
    }
    filter {
      custom {
        title {
          enabled          = true
          # case_sensitive = false
          # negate         = false
          operator         = "CONTAINS"
          value            = "SSL Certificate will expire"
        }
      }
    }
    filter {
      predefined {
        type     = "OSI_HIGH_CPU"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "OSI_UNEXPECTEDLY_UNAVAILABLE"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "SERVICE_SLOWDOWN"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "SERVICE_ERROR_RATE_INCREASED"
        # negate = false
      }
    }
  }
  rules {
    rule {
      delay_in_minutes = 10
      include_mode     = "NONE"
      severity_level   = "AVAILABILITY"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      delay_in_minutes = 10
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 20
      include_mode     = "NONE"
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      delay_in_minutes = 30
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
