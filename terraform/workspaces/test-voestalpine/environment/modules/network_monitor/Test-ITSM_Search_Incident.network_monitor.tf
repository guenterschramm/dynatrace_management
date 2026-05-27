resource "dynatrace_network_monitor" "Test-ITSM_Search_Incident" {
  name          = "Test-ITSM Search Incident"
  type          = "BROWSER"
  enabled       = false
  frequency_min = 10
  locations     = [ "SYNTHETIC_LOCATION-F4D0540A09C35B8D" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 1
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    enabled = false
  }
  steps {
    step {
      name         = "Loading of \"https://t-sso-itsm.voestalpine.net/rsso/start?bypass-auth=true&goto=https://test-itsm.voestalpine.net&tenant=*\""
      request_type = ""
    }
    step {
      name         = "click on \"user_login\""
      request_type = ""
    }
    step {
      name         = "keystrokes on \"user_login\""
      request_type = ""
    }
    step {
      name         = "click on \"login_user_password\""
      request_type = ""
    }
    step {
      name         = "keystrokes on \"login_user_password\""
      request_type = ""
    }
    step {
      name         = "click on \"login-jsp-btn\""
      request_type = ""
    }
    step {
      name         = "click"
      request_type = ""
    }
    step {
      name         = "click on \"Incident suchen\""
      request_type = ""
    }
    step {
      name         = "keystrokes on \"Incident-ID*+\""
      request_type = ""
    }
    step {
      name         = "click on \"TBsearchsavechanges\""
      request_type = ""
    }
    step {
      name         = "click on \"Abmelden\""
      request_type = ""
    }
  }
}
