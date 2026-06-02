resource "dynatrace_alerting" "xECM_Corporate_Alerts" {
  name            = "xECM Corporate Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQ4MGNkMzYyMS1mNzVlLTM5NTktYjExOS01MWQ1MmI2M2M1MWa-71TeFdrerQ"
  filters {
    filter {
      custom {
        title {
          enabled          = true
          # case_sensitive = false
          # negate         = false
          operator         = "BEGINS_WITH"
          value            = "xECM Corporate - A log source is show unusual high logging activity"
        }
      }
    }
    filter {
      predefined {
        type     = "SERVICE_UNEXPECTED_HIGH_LOAD"
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
        type     = "APPLICATION_ERROR_RATE_INCREASED"
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
        type     = "PROCESS_NA_HIGH_CONN_FAIL_RATE"
        # negate = false
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
        type     = "SERVICE_ERROR_RATE_INCREASED"
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
  }
  rules {
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "AVAILABILITY"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 30
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
