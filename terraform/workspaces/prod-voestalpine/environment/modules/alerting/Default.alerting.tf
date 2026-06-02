resource "dynatrace_alerting" "Default" {
  name = "Default"
  rules {
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "AVAILABILITY"
    }
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "PERFORMANCE"
    }
    rule {
      delay_in_minutes = 60
      include_mode     = "NONE"
      severity_level   = "RESOURCE_CONTENTION"
    }
  }
}
