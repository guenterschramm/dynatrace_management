resource "dynatrace_browser_monitor" "ITSM-Check_Functionality" {
  name                   = "ITSM - Check Functionality"
  enabled                = true
  frequency              = 10
  locations              = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  manually_assigned_apps = [ "APPLICATION-63B1740C1E7F005A" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
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
      ignored_error_codes {
        status_codes = "401"
      }
    }
    events {
      event {
        description = "Open ITSM SSO Bypass Page"
        navigate {
          url = "https://sso-itsm.voestalpine.net/rsso/start?bypass-auth=true&goto=https://itsm.voestalpine.net/arsys/forms/2217asitsm/HPD:Help+Desk"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter Username"
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          credential {
            field    = "username"
            vault_id = "CREDENTIALS_VAULT-BB87D7E02D042D44"
          }
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
        description = "Enter Password"
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          credential {
            field    = "password"
            vault_id = "CREDENTIALS_VAULT-BB87D7E02D042D44"
          }
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
        description = "Click Login Button"
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
        description = "Enter Incident ID"
        keystrokes {
          # masked            = false
          simulate_blur_event = true
          simulate_return_key = true
          text                = "INC000003930270"
          target {
            locators {
              locator {
                type  = "css"
                value = "#arid_WIN_0_1000000161"
              }
              locator {
                type  = "css"
                value = "textarea:eq(15)"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Incident-ID*+\"):eq(14)"
              }
              locator {
                type  = "css"
                value = ".text:eq(18)"
              }
              locator {
                type  = "css"
                value = "#WIN_0_1000000161 textarea:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#arid_WIN_0_1000000161"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Goto CMDB"
        navigate {
          url = "https://itsm.voestalpine.net/arsys/forms/2217asitsm/ZZ:CMDB+Applications"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter Service Name"
        keystrokes {
          # masked              = false
          simulate_blur_event   = true
          # simulate_return_key = false
          text                  = "Wotan"
          target {
            locators {
              locator {
                type  = "css"
                value = "#arid_WIN_0_8"
              }
              locator {
                type  = "css"
                value = "textarea:eq(0)"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Name\"):eq(7)"
              }
              locator {
                type  = "css"
                value = ".text:eq(0)"
              }
              locator {
                type  = "css"
                value = "#WIN_0_8 textarea:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#arid_WIN_0_8"
              }
            }
          }
        }
      }
      event {
        description = "Click on Search"
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#TBsearchsavechanges"
              }
              locator {
                type  = "css"
                value = "a:contains(\"Suchen\")"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Suchen\"):eq(3)"
              }
              locator {
                type  = "css"
                value = "#Toolbar table:nth-child(3) tbody tr td a div"
              }
              locator {
                type  = "css"
                value = "#TBsearchsavechanges"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Goto ITAM"
        navigate {
          url = "https://itsm.voestalpine.net/arsys/forms/2217asitsm/AST:AssetQuickSearch_va"
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "Enter Asset Name"
        keystrokes {
          # masked            = false
          simulate_blur_event = true
          simulate_return_key = true
          text                = "2217asdyntrcag"
          target {
            locators {
              locator {
                type  = "css"
                value = "#arid_WIN_1_536870918"
              }
              locator {
                type  = "css"
                value = "textarea:eq(9)"
              }
              locator {
                type  = "css"
                value = ".text:eq(11)"
              }
              locator {
                type  = "css"
                value = "#WIN_1_536870918 textarea:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#arid_WIN_1_536870918"
              }
            }
          }
          wait {
            wait_for = "network"
          }
        }
      }
      event {
        description = "Click on Logout"
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
        }
      }
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
