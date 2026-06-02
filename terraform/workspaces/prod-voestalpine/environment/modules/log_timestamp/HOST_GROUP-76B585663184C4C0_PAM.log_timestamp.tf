resource "dynatrace_log_timestamp" "HOST_GROUP-76B585663184C4C0_PAM" {
  enabled           = false
  config_item_title = "PAM "
  date_search_limit = 24
  date_time_pattern = "[%d/%m/%Y | %H:%M:%S]"
  insert_after      = ""
  scope             = "HOST_GROUP-76B585663184C4C0"
  timezone          = "Local time zone"
  entry_boundary {
  }
}
