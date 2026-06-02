resource "dynatrace_http_monitor" "PAM-Availability" {
  name                   = "PAM - Availability"
  enabled                = true
  frequency              = 5
  locations              = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  manually_assigned_apps = [ "APPLICATION-8E8732CD12CF7B8A" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 2
      }
    }
  }
  script {
    request {
      description = "pam.voestalpine.net/"
      method      = "GET"
      url         = "https://pam.voestalpine.net/"
      configuration {
        accept_any_certificate = true
        follow_redirects       = true
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
  }
}
