resource "dynatrace_session_replay_web_privacy" "APPLICATION-EA92380C21E9BC8E" {
  application_id     = "APPLICATION-EA92380C21E9BC8E"
  enable_opt_in_mode = false
  masking_presets {
    playback_masking_preset  = "MASK_ALL"
    recording_masking_preset = "MASK_USER_INPUT"
  }
}
