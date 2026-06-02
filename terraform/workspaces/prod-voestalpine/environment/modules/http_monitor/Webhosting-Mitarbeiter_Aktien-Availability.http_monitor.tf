resource "dynatrace_http_monitor" "Webhosting-Mitarbeiter_Aktien-Availability" {
  name                   = "Webhosting - Mitarbeiter Aktien- Availability"
  enabled                = true
  frequency              = 10
  locations              = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  manually_assigned_apps = [ "APPLICATION-1CF4A917DFBACBAC" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
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
      description = "Mitarbeiter Aktien"
      method      = "GET"
      url         = "https://mab-aktien.voestalpine.com/"
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
