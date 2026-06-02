resource "dynatrace_data_privacy" "APPLICATION-EA92380C21E9BC8E" {
  application_id = "APPLICATION-EA92380C21E9BC8E"
  data_collection {
    opt_in_mode_enabled = false
  }
  do_not_track {
    comply_with_do_not_track = false
  }
  masking {
    personal_data_uri_masking_enabled = false
    user_action_masking_enabled       = false
  }
  user_tracking {
    persistent_cookie_enabled = true
  }
}
