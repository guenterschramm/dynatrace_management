resource "dynatrace_network_monitor" "q-ecm-steel_voestalpine_net" {
  name          = "q-ecm-steel.voestalpine.net/"
  type          = "BROWSER"
  enabled       = false
  frequency_min = 15
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
      name         = "Loading of \"https://ecm-steel.voestalpine.net/\""
      request_type = ""
    }
    step {
      name         = "click on \"otds_username\""
      request_type = ""
    }
    step {
      name         = "keystrokes on \"otds_username\""
      request_type = ""
    }
    step {
      name         = "keystrokes on \"otds_password\""
      request_type = ""
    }
    step {
      name         = "click on \"loginbutton\""
      request_type = ""
    }
    step {
      name         = "click on \"node78557\""
      request_type = ""
    }
    step {
      name         = "click on \"node16377291\""
      request_type = ""
    }
  }
}
