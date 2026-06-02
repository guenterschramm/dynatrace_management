resource "dynatrace_data_privacy" "APPLICATION-AC2D2836FE95E247" {
  application_id = "APPLICATION-AC2D2836FE95E247"
  data_collection {
    opt_in_mode_enabled = false
  }
  do_not_track {
    comply_with_do_not_track = true
    do_not_track             = "anonymous"
  }
  masking {
    personal_data_uri_masking_enabled = true
    user_action_masking_enabled       = true
  }
  user_tracking {
    persistent_cookie_enabled = true
  }
}
