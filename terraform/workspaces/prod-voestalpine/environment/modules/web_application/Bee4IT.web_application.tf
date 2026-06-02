resource "dynatrace_web_application" "Bee4IT" {
  name                                 = "Bee4IT"
  type                                 = "AUTO_INJECTED"
  cost_control_user_session_percentage = 100
  load_action_key_performance_metric   = "VISUALLY_COMPLETE"
  real_user_monitoring_enabled         = true
  xhr_action_key_performance_metric    = "VISUALLY_COMPLETE"
  custom_action_apdex_settings {
    frustrating_fallback_threshold = 12000
    frustrating_threshold          = 12000
    tolerated_fallback_threshold   = 3000
    tolerated_threshold            = 3000
  }
  load_action_apdex_settings {
    frustrating_fallback_threshold = 12000
    frustrating_threshold          = 12000
    tolerated_fallback_threshold   = 3000
    tolerated_threshold            = 3000
  }
  meta_data_capture_settings {
    capture {
      name              = "VisitTag0"
      type              = "CSS_SELECTOR"
      capturing_name    = "body > bee-root > bee-dashboard-navigation-layout > bee-layout > mat-sidenav-container > mat-sidenav-content > div:nth-child(2) > div > div.title > div"
      # public_metadata = false
      unique_id         = 1
      # use_last_value  = false
    }
  }
  monitoring_settings {
    cache_control_header_optimizations   = true
    # cookie_placement_domain            = ""
    # correlation_header_inclusion_regex = ""
    # custom_configuration_properties    = ""
    # exclude_xhr_regex                  = ""
    fetch_requests                       = true
    injection_mode                       = "JAVASCRIPT_TAG"
    # library_file_from_cdn              = false
    # library_file_location              = ""
    # secure_cookie_attribute            = false
    # server_request_path_id             = ""
    xml_http_request                     = true
    advanced_javascript_tag_settings {
      # instrument_unsupported_ajax_frameworks = false
      max_action_name_length                   = 100
      max_errors_to_capture                    = 10
      # proxy_wrapper_enabled                  = true
      # special_characters_to_escape           = ""
      # sync_beacon_firefox                    = false
      # sync_beacon_internet_explorer          = false
      additional_event_handlers {
        # blur                          = false
        # change                        = false
        # click                         = false
        max_dom_nodes                   = 5000
        # mouseup                       = false
        # to_string_method              = false
        # use_mouse_up_event_for_clicks = false
      }
      global_event_capture_settings {
        # additional_event_captured_as_user_input = ""
        # change                                  = true
        click                                     = true
        doubleclick                               = true
        keydown                                   = true
        keyup                                     = true
        mousedown                                 = true
        mouseup                                   = true
        scroll                                    = true
        # touch_end                               = true
        # touch_start                             = true
      }
    }
    content_capture {
      javascript_errors                 = true
      visually_complete_and_speed_index = true
      resource_timing_settings {
        instrumentation_delay      = 50
        # non_w3c_resource_timings = false
        w3c_resource_timings       = true
      }
      timeout_settings {
        temporary_action_limit         = 0
        temporary_action_total_timeout = 100
        # timed_action_support         = false
      }
      visually_complete_settings {
        # exclude_url_regex      = ""
        # ignored_mutations_list = ""
        inactivity_timeout       = 1000
        mutation_timeout         = 50
        threshold                = 50
      }
    }
    javascript_framework_support {
      # active_x_object = false
      angular           = true
      # dojo            = false
      # extjs           = false
      # icefaces        = false
      # jquery          = false
      # moo_tools       = false
      # prototype       = false
    }
  }
  session_replay_config {
    # enabled                     = false
    cost_control_percentage       = 100
    enable_css_resource_capturing = true
  }
  user_action_naming_settings {
    ignore_case                      = true
    query_parameter_cleanups         = [ "cfid", "phpsessid", "__sid", "cftoken", "sid" ]
    split_user_actions_by_domain     = true
    # use_first_detected_load_action = false
    load_action_naming_rules {
      rule {
        template            = "view Homescreen"
        # use_or_conditions = false
        conditions {
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/dashboard/home"
            operator = "CONTAINS"
          }
        }
      }
      rule {
        template            = "view Timereport"
        # use_or_conditions = false
        conditions {
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/resource-management/time-reporting/"
            operator = "CONTAINS"
          }
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "?view=daily"
            operator = "CONTAINS"
          }
        }
      }
    }
    placeholders {
      placeholder {
        name                             = "Date"
        input                            = "XHR_URL"
        processing_part                  = "ALL"
        # use_guessed_element_identifier = false
        processing_steps {
          step {
            type                       = "SUBSTRING"
            # fallback_to_input        = false
            pattern_after              = "T"
            pattern_after_search_type  = "LAST"
            pattern_before             = "/rm/2.0/time-reporting/?moment="
            pattern_before_search_type = "FIRST"
          }
        }
      }
    }
    xhr_action_naming_rules {
      rule {
        template            = "time booking (regular)"
        # use_or_conditions = false
        conditions {
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/resource-management/time-reporting/"
            operator = "CONTAINS"
          }
          condition {
            operand1 = "{xhrUrl (default)}"
            operand2 = "/rm/2.0/time-reporting/?moment="
            operator = "CONTAINS"
          }
        }
      }
      rule {
        template            = "time booking (remedy)"
        # use_or_conditions = false
        conditions {
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/embedded/resource-management/time-reporting/"
            operator = "CONTAINS"
          }
          condition {
            operand1 = "{xhrUrl (default)}"
            operand2 = "/rm/2.0/time-reporting/ticket-service/remedy/"
            operator = "CONTAINS"
          }
        }
      }
      rule {
        template            = "time booking (ticket)"
        # use_or_conditions = false
        conditions {
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/resource-management/time-reporting/"
            operator = "CONTAINS"
          }
          condition {
            operand1 = "{xhrUrl (default)}"
            operand2 = "/rm/2.0/time-reporting/ticket-service/remedy/"
            operator = "CONTAINS"
          }
          condition {
            operand1 = "{pageUrl (default)}"
            operand2 = "/embedded/"
            operator = "NOT_CONTAINS"
          }
        }
      }
    }
  }
  user_tags {
    tag {
      cleanup_rule  = "([^-]*+)"
      # ignore_case = false
      metadata_id   = 1
    }
  }
  waterfall_settings {
    resource_browser_caching_threshold            = 50
    resources_threshold                           = 100000
    slow_cnd_resources_threshold                  = 200000
    slow_first_party_resources_threshold          = 200000
    slow_third_party_resources_threshold          = 200000
    speed_index_visually_complete_ratio_threshold = 50
    uncompressed_resources_threshold              = 860
  }
  xhr_action_apdex_settings {
    frustrating_fallback_threshold = 12000
    frustrating_threshold          = 12000
    tolerated_fallback_threshold   = 3000
    tolerated_threshold            = 3000
  }
}
