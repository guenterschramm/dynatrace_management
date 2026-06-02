resource "dynatrace_network_monitor" "q-ecm-steel_voestalpine_net_Test_DW" {
  name          = "q-ecm-steel.voestalpine.net/ (Test DW)"
  type          = "BROWSER"
  enabled       = false
  frequency_min = 15
  outage_handling {
    global_consecutive_outage_count_threshold = 2
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    # enabled = true
  }
  steps {
    step {
      name         = "Loading of \"https://q-ecm-steel.voestalpine.net/\""
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
      name         = "click on \"node79218\""
      request_type = ""
    }
    step {
      name         = "click on \"node26569229\""
      request_type = ""
    }
    step {
      name         = "click on \"node120740140\""
      request_type = ""
    }
    step {
      name         = "click on \"node120740141\""
      request_type = ""
    }
    step {
      name         = "click on \"node121414838\""
      request_type = ""
    }
    step {
      name         = "click on \"node121577152\""
      request_type = ""
    }
    step {
      name         = "click on \"node121611100\""
      request_type = ""
    }
    step {
      name         = "click on \"121414838_0\""
      request_type = ""
    }
    step {
      name         = "click"
      request_type = ""
    }
  }
}
