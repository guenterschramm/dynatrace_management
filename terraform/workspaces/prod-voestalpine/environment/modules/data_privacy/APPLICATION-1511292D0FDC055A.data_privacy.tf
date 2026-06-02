resource "dynatrace_data_privacy" "APPLICATION-1511292D0FDC055A" {
  application_id = "APPLICATION-1511292D0FDC055A"
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
    persistent_cookie_enabled = false
  }
}
