resource "dynatrace_network_monitor" "ITSM-Check_Functionality" {
  name          = "ITSM - Check Functionality"
  type          = "BROWSER"
  # enabled     = true
  frequency_min = 10
  locations     = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
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
      name         = "Open ITSM SSO Bypass Page"
      request_type = ""
    }
    step {
      name         = "Enter Username"
      request_type = ""
    }
    step {
      name         = "Enter Password"
      request_type = ""
    }
    step {
      name         = "Click Login Button"
      request_type = ""
    }
    step {
      name         = "Enter Incident ID"
      request_type = ""
    }
    step {
      name         = "Goto CMDB"
      request_type = ""
    }
    step {
      name         = "Enter Service Name"
      request_type = ""
    }
    step {
      name         = "Click on Search"
      request_type = ""
    }
    step {
      name         = "Goto ITAM"
      request_type = ""
    }
    step {
      name         = "Enter Asset Name"
      request_type = ""
    }
    step {
      name         = "Click on Logout"
      request_type = ""
    }
  }
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "Application"
      source  = "USER"
      value   = "Remedy_Production"
    }
  }
}
