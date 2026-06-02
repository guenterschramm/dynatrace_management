resource "dynatrace_mobile_application" "SAP_Gui_TPI" {
  name                      = "SAP_Gui_TPI"
  application_id            = "4d64d21b-a285-41f0-bdea-515de8b9a4dc"
  application_type          = "CUSTOM_APPLICATION"
  beacon_endpoint_type      = "CLUSTER_ACTIVE_GATE"
  icon_type                 = "DESKTOP"
  key_user_actions          = [ "Sales and Distribution - VA01 (Create Sales Order) (0100)", "Sales and Distribution - VA01 (Create Sales Order) (4001)", "SESSION_MANAGER (Session Manager Menu Tree Display) (0100)", "Sales and Distribution - VA02 (Change Sales Order) (4001)", "/SCT/QP_QV (0100)" ]
  # session_replay          = false
  # session_replay_on_crash = false
  user_session_percentage   = 100
  apdex {
    frustrated          = 12000
    frustrated_on_error = true
    tolerable           = 3000
  }
  properties {
    api_value {
      name                          = "Data output size"
      type                          = "DOUBLE"
      aggregation                   = "LAST"
      display_name                  = "Data output size"
      key                           = "data_output_size"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
    api_value {
      name                          = "Database calls"
      type                          = "DOUBLE"
      aggregation                   = "LAST"
      display_name                  = "Database calls"
      key                           = "database_calls"
      store_as_session_property     = true
      store_as_user_action_property = true
    }
    api_value {
      name                          = "Database physical read count"
      type                          = "DOUBLE"
      aggregation                   = "LAST"
      display_name                  = "Database physical read count"
      key                           = "database_physical_read_count"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
    api_value {
      name                          = "GUI screen"
      type                          = "STRING"
      aggregation                   = "LAST"
      # cleanup_rule                = ""
      display_name                  = "GUI screen"
      key                           = "gui_screen"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
    api_value {
      name                            = "GUI version"
      type                            = "STRING"
      aggregation                     = "LAST"
      # cleanup_rule                  = ""
      display_name                    = "GUI version"
      key                             = "gui_version"
      store_as_session_property       = true
      # store_as_user_action_property = false
    }
    api_value {
      name                          = "Number of GUI network trips"
      type                          = "DOUBLE"
      aggregation                   = "LAST"
      display_name                  = "Number of GUI network trips"
      key                           = "number_of_gui_network_trips"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
    api_value {
      name                            = "Server"
      type                            = "STRING"
      aggregation                     = "LAST"
      # cleanup_rule                  = ""
      display_name                    = "server"
      key                             = "server"
      store_as_session_property       = true
      # store_as_user_action_property = false
    }
    api_value {
      name                          = "Terminal"
      type                          = "STRING"
      aggregation                   = "LAST"
      # cleanup_rule                = ""
      display_name                  = "Terminal"
      key                           = "terminal"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
    api_value {
      name                          = "User input size"
      type                          = "DOUBLE"
      aggregation                   = "LAST"
      display_name                  = "User input size"
      key                           = "user_input_size"
      # store_as_session_property   = false
      store_as_user_action_property = true
    }
  }
}
