resource "dynatrace_browser_monitor" "xECM_Steel_Folder_Change" {
  name                   = "xECM Steel Folder Change"
  # enabled              = false
  frequency              = 15
  manually_assigned_apps = [ "APPLICATION-1511292D0FDC055A" ]
  anomaly_detection {
    loading_time_thresholds {
      enabled = true
    }
    outage_handling {
      global_outage  = true
      local_outage   = true
      retry_on_error = true
      global_outage_policy {
        consecutive_runs = 2
      }
      local_outage_policy {
        affected_locations = 1
        consecutive_runs   = 3
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
        description = "click on \"node79218\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node79218"
              }
              locator {
                type  = "css"
                value = "a:contains(\"Kundenaufträge\"):eq(1)"
              }
              locator {
                type  = "css"
                value = "td:contains(\"Kundenaufträge\"):eq(8)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(8)"
              }
              locator {
                type  = "css"
                value = "#rowCell8 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node79218"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node26569229\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node26569229"
              }
              locator {
                type  = "css"
                value = "a:contains(\"0010 Kundenaufträge\")"
              }
              locator {
                type  = "css"
                value = "td:contains(\"0010 Kundenaufträge\"):eq(6)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(0)"
              }
              locator {
                type  = "css"
                value = "#rowCell0 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node26569229"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node120740140\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node120740140"
              }
              locator {
                type  = "css"
                value = "a:contains(\"2022 Kundenaufträge\")"
              }
              locator {
                type  = "css"
                value = "td:contains(\"2022 Kundenaufträge\"):eq(6)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(3)"
              }
              locator {
                type  = "css"
                value = "#rowCell3 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node120740140"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node120740141\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node120740141"
              }
              locator {
                type  = "css"
                value = "a:contains(\"01\"):eq(1)"
              }
              locator {
                type  = "css"
                value = "td:contains(\"01\"):eq(8)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(0)"
              }
              locator {
                type  = "css"
                value = "#rowCell0 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node120740141"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node121414838\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node121414838"
              }
              locator {
                type  = "css"
                value = "a:contains(\"2022 KW03\")"
              }
              locator {
                type  = "css"
                value = "td:contains(\"2022 KW03\"):eq(6)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(2)"
              }
              locator {
                type  = "css"
                value = "#rowCell2 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node121414838"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node121577152\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node121577152"
              }
              locator {
                type  = "css"
                value = "a:contains(\"19\")"
              }
              locator {
                type  = "css"
                value = "td:contains(\"19\"):eq(8)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(2)"
              }
              locator {
                type  = "css"
                value = "#rowCell2 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node121577152"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"node121611100\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#node121611100"
              }
              locator {
                type  = "css"
                value = "a:contains(\"Kundenauftrag 1247595\")"
              }
              locator {
                type  = "css"
                value = "td:contains(\"Kundenauftrag 1247595\"):eq(6)"
              }
              locator {
                type  = "css"
                value = ".browseItemNameContainer:eq(0)"
              }
              locator {
                type  = "css"
                value = "#rowCell0 td:nth-child(3) a"
              }
              locator {
                type  = "css"
                value = "#node121611100"
              }
            }
          }
          wait {
            wait_for = "page_complete"
          }
        }
      }
      event {
        description = "click on \"121414838_0\""
        click {
          button = 0
          target {
            locators {
              locator {
                type  = "css"
                value = "#121414838_0"
              }
              locator {
                type  = "css"
                value = "a:contains(\"2022 KW03\")"
              }
              locator {
                type  = "css"
                value = "div:contains(\"Vertrieb und Kundenservic...\"):eq(3)"
              }
              locator {
                type  = "css"
                value = ".locationDisplayTrailNonterminalElement:eq(6)"
              }
              locator {
                type  = "css"
                value = "#trail a:nth-child(13)"
              }
              locator {
                type  = "css"
                value = "#121414838_0"
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
                value = "td:contains(\"Komprimieren und per E-Mail senden\"):eq(3)"
              }
              locator {
                type  = "css"
                value = ".browseview-wrapper"
              }
              locator {
                type  = "css"
                value = "#sidebarIndicator table:nth-child(3) tbody tr td:nth-child(2)"
              }
              locator {
                type  = "css"
                value = "#sidebarIndicator table.tightTable tbody tr td.browseview-wrapper"
              }
            }
          }
        }
      }
    }
  }
}
