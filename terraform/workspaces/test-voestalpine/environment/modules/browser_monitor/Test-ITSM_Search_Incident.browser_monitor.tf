resource "dynatrace_browser_monitor" "Test-ITSM_Search_Incident" {
  name      = "Test-ITSM Search Incident"
  # enabled = false
  frequency = 10
  locations = [ "SYNTHETIC_LOCATION-F4D0540A09C35B8D" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
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
    load_action_kpm = "VISUALLY_COMPLETE"
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
    }
    events {
      event {
        description = "Loading of \"https://t-sso-itsm.voestalpine.net/rsso/start?bypass-auth=true&goto=https://test-itsm.voestalpine.net&tenant=*\""
        navigate {
          url = "https://t-sso-itsm.voestalpine.net/rsso/start?bypass-auth=true&goto=https://test-itsm.voestalpine.net&tenant=*"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"user_login\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#user_login"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="text"][name="user-name"]
                EOT
              }
              locator {
                type  = "css"
                value = ".login-expired:eq(0)"
              }
              locator {
                type  = "css"
                value = "form[name=\"login_form\"] div:nth-child(2) div label input:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#user_login"
              }
            }
          }
        }
      }
      event {
        description = "keystrokes on \"user_login\""
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          text                  = "U889959"
          target {
            locators {
              locator {
                type  = "css"
                value = "#user_login"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="text"][name="user-name"]
                EOT
              }
              locator {
                type  = "css"
                value = ".login-expired:eq(0)"
              }
              locator {
                type  = "css"
                value = "form[name=\"login_form\"] div:nth-child(2) div label input:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#user_login"
              }
            }
          }
        }
      }
      event {
        description = "click on \"login_user_password\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#login_user_password"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="password"][name="password"]
                EOT
              }
              locator {
                type  = "css"
                value = ".login-expired:eq(1)"
              }
              locator {
                type  = "css"
                value = "form[name=\"login_form\"] div:nth-child(3) div label input:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#login_user_password"
              }
            }
          }
        }
      }
      event {
        description = "keystrokes on \"login_user_password\""
        keystrokes {
          masked                = true
          simulate_blur_event   = true
          # simulate_return_key = false
          text                  = "U2FsdGVkX1/y31IRrQkMww1Yb/CTLVDw3mwSl5hvjpsK8n9kf0IGLsdEsfoRsA1V"
          target {
            locators {
              locator {
                type  = "css"
                value = "#login_user_password"
              }
              locator {
                type  = "css"
                value =<<-EOT
                  input[type="password"][name="password"]
                EOT
              }
              locator {
                type  = "css"
                value = ".login-expired:eq(1)"
              }
              locator {
                type  = "css"
                value = "form[name=\"login_form\"] div:nth-child(3) div label input:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#login_user_password"
              }
            }
          }
        }
      }
      event {
        description = "click on \"login-jsp-btn\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#login-jsp-btn"
              }
              locator {
                type  = "css"
                value = "button[type=\"submit\"]:eq(0)"
              }
              locator {
                type  = "css"
                value = "button:contains(\"Anmelden\")"
              }
              locator {
                type  = "css"
                value = ".d-button:eq(0)"
              }
              locator {
                type  = "css"
                value = "form[name=\"login_form\"] div:nth-child(21) button"
              }
              locator {
                type  = "css"
                value = "#login-jsp-btn"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click"
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "a[title=\"Anwendungsliste anzeigen\"]:eq(0)"
              }
              locator {
                type  = "css"
                value = ".btnimgdiv:eq(16)"
              }
              locator {
                type  = "css"
                value = "#WIN_0_304316340 div"
              }
              locator {
                type  = "css"
                value = "#WIN_0_304316340 div.btnimgdiv"
              }
            }
          }
        }
      }
      event {
        description = "click on \"Incident suchen\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "a:contains(\"Incident suchen\"):eq(4)"
              }
              locator {
                type  = "css"
                value = "span:contains(\"Incident suchen\"):eq(4)"
              }
              locator {
                type  = "css"
                value = ".navLabel:eq(320)"
              }
              locator {
                type  = "css"
                value = "#FormContainer div:nth-child(7) div div:nth-child(11) div:nth-child(2) div:nth-child(3) a span"
              }
              locator {
                type  = "css"
                value = "#FormContainer div.FlyoutContainer div.flyout div.root div.flyout div.item a.btn span.navLabel:eq(290)"
              }
            }
          }
          wait {
            wait_for = "network"
          }
        }
      }
      event {
        description = "keystrokes on \"Incident-ID*+\""
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          text                  = "INC000004716191"
          target {
            locators {
              locator {
                type  = "css"
                value = "#arid_WIN_3_1000000161"
              }
              locator {
                type  = "css"
                value = "textarea:eq(56)"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Incident-ID*+\"):eq(27)"
              }
              locator {
                type  = "css"
                value = ".text:eq(67)"
              }
              locator {
                type  = "css"
                value = "#WIN_3_1000000161 textarea:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#arid_WIN_3_1000000161"
              }
            }
          }
        }
      }
      event {
        description = "click on \"TBsearchsavechanges\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "a:contains(\"Suchen\"):eq(3)"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Suchen\"):eq(66)"
              }
              locator {
                type  = "css"
                value = "#Toolbar table:nth-child(3) tbody tr td a div"
              }
            }
          }
          wait {
            wait_for = "network"
          }
        }
      }
      event {
        description = "click on \"Abmelden\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "a:contains(\"Abmelden\"):eq(1)"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Abmelden\"):eq(11)"
              }
              locator {
                type  = "css"
                value = ".f9:eq(6)"
              }
              locator {
                type  = "css"
                value = "#WIN_0_300000044 div div"
              }
              locator {
                type  = "css"
                value = "#WIN_0_300000044 div.btntextdiv div.f9"
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
