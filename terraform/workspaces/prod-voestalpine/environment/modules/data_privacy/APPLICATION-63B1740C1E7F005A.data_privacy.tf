resource "dynatrace_data_privacy" "APPLICATION-63B1740C1E7F005A" {
  application_id = "APPLICATION-63B1740C1E7F005A"
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
