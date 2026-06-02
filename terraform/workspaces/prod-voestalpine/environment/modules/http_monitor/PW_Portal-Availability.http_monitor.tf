resource "dynatrace_http_monitor" "PW_Portal-Availability" {
  name                   = "PW Portal - Availability"
  enabled                = true
  frequency              = 5
  locations              = [ "GEOLOCATION-C7F68DB3A7DCB40E", "GEOLOCATION-D3F66706B8A0D641", "GEOLOCATION-2FD31C834DE4D601", "GEOLOCATION-68BF6B6D8F1A5E0A", "GEOLOCATION-8CE0B526122F75AB", "GEOLOCATION-2340C2C253B92657", "GEOLOCATION-3E5C618F168F83BD", "GEOLOCATION-5CFB19F054837D6C", "GEOLOCATION-DEA69DE32CE4FA9C", "SYNTHETIC_LOCATION-7CF31B1ED762C751", "GEOLOCATION-5123CC219E23E539", "GEOLOCATION-205F1808D1AD69A1" ]
  manually_assigned_apps = [ "APPLICATION-7CFD0CDA3C724F01" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage    = true
      local_outage     = true
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 2
      }
      local_outage_policy {
        affected_locations = 3
        consecutive_runs   = 2
      }
    }
  }
  script {
    request {
      description = "pwportal.voestalpine.com"
      method      = "GET"
      url         = "https://pwportal.voestalpine.com/"
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
