resource "dynatrace_session_replay_web_privacy" "APPLICATION-1511292D0FDC055A" {
  application_id     = "APPLICATION-1511292D0FDC055A"
  enable_opt_in_mode = false
  masking_presets {
    playback_masking_preset  = "MASK_USER_INPUT"
    recording_masking_preset = "ALLOW_LIST"
  }
}
