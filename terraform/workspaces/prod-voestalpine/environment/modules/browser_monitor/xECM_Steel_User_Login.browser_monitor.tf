resource "dynatrace_browser_monitor" "xECM_Steel_User_Login" {
  name                   = "xECM Steel User Login"
  # enabled              = false
  frequency              = 15
  manually_assigned_apps = [ "APPLICATION-1511292D0FDC055A" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage  = true
      # local_outage = false
      retry_on_error = true
      global_outage_policy {
        consecutive_runs = 1
      }
    }
  }
  key_performance_metrics {
    load_action_kpm = "DOM_INTERACTIVE"
    xhr_action_kpm  = "VISUALLY_COMPLETE"
  }
  script {
    type = "clickpath"
    configuration {
      # bypass_csp           = false
      # disable_web_security = false
      # monitor_frames       = false
      device {
        name        = "Desktop"
        orientation = "landscape"
      }
      ignored_error_codes {
        status_codes = "401"
      }
    }
    events {
      event {
        description = "Loading of \"https://ecm-steel.voestalpine.net/\""
        navigate {
          url = "https://ecm-steel.voestalpine.net/"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"otds_username\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#otds_username"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="text"][name="otds_username"]
                EOT
              }
              locator {
                type  = "css"
                value = ".form-control:eq(0)"
              }
              locator {
                type  = "css"
                value = "#thisform div:nth-child(9) div input"
              }
              locator {
                type  = "css"
                value = "#otds_username"
              }
            }
          }
        }
      }
      event {
        description = "keystrokes on \"otds_username\""
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          text                  = "dynatrace"
          target {
            locators {
              locator {
                type  = "css"
                value = "#otds_username"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="text"][name="otds_username"]
                EOT
              }
              locator {
                type  = "css"
                value = ".form-control:eq(0)"
              }
              locator {
                type  = "css"
                value = "#thisform div:nth-child(9) div input"
              }
              locator {
                type  = "css"
                value = "#otds_username"
              }
            }
          }
        }
      }
      event {
        description = "keystrokes on \"otds_password\""
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          credential {
            field    = "password"
            vault_id = "CREDENTIALS_VAULT-7339C37FD0F04357"
          }
          target {
            locators {
              locator {
                type  = "css"
                value = "#otds_password"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="password"][name="otds_password"]
                EOT
              }
              locator {
                type  = "css"
                value = ".form-control:eq(1)"
              }
              locator {
                type  = "css"
                value = "#thisform div:nth-child(10) div input"
              }
              locator {
                type  = "css"
                value = "#otds_password"
              }
            }
          }
        }
      }
      event {
        description = "click on \"loginbutton\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#loginbutton"
              }
              locator {
                type  = "css"
                value = "button[type=\"submit\"]"
              }
              locator {
                type  = "css"
                value = "button:contains(\"Anmelden\")"
              }
              locator {
                type  = "css"
                value = ".submit-btn"
              }
              locator {
                type  = "css"
                value = "#thisform button:nth-child(11)"
              }
              locator {
                type  = "css"
                value = "#loginbutton"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node78557\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node78557"
              }
              locator {
                type  = "css"
                value = "a:contains(\"Vertrieb und Kundenservice\"):eq(1)"
              }
              locator {
                type  = "css"
                value = "td:contains(\"Vertrieb und Kundenservice\"):eq(8)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer"
              }
              locator {
                type  = "css"
                value = "#rowCell0 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node78557"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node16377291\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node16377291"
              }
              locator {
                type  = "css"
                value = "a:contains(\"Geschäftspartner\"):eq(2)"
              }
              locator {
                type  = "css"
                value = "td:contains(\"Geschäftspartner\"):eq(9)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(6)"
              }
              locator {
                type  = "css"
                value = "#rowCell6 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node16377291"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
    }
  }
}
