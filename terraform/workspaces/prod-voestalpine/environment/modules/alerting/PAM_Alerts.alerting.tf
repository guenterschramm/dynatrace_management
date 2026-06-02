resource "dynatrace_alerting" "PAM_Alerts" {
  name            = "PAM Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQ0MGNlODE1Zi0wNjRjLTMxMjItYjUxOS0yNzMxYTJlNjkyMDi-71TeFdrerQ"
  filters {
    filter {
      custom {
        title {
          enabled          = true
          # case_sensitive = false
          # negate         = false
          operator         = "BEGINS_WITH"
          value            = "PAM - A log source is show unusual high logging activity"
        }
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
      custom {
        title {
          enabled          = true
          # case_sensitive = false
          # negate         = false
          operator         = "BEGINS_WITH"
          value            = "PAM User Disconnect"
        }
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
        type     = "OSI_HIGH_MEMORY"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "OSI_LOW_DISK_SPACE"
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
      predefined {
        type     = "OSI_HIGH_CPU"
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
        type     = "SERVICE_UNEXPECTED_HIGH_LOAD"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "HOST_OF_SERVICE_UNAVAILABLE"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "SERVICE_SLOWDOWN"
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
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 15
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
