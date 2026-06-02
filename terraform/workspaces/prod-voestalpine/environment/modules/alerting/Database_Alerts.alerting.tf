resource "dynatrace_alerting" "Database_Alerts" {
  name            = "Database Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACRlNDVmM2Q1ZS04ZTVjLTM0NjYtOGM4NS1jNGE1MDhhY2I2ODO-71TeFdrerQ"
  filters {
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
        type     = "OSI_LOW_DISK_SPACE"
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
