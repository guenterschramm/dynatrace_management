resource "dynatrace_session_replay_web_privacy" "APPLICATION-8E8732CD12CF7B8A" {
  application_id     = "APPLICATION-8E8732CD12CF7B8A"
  enable_opt_in_mode = false
  masking_presets {
    playback_masking_preset  = "MASK_ALL"
    recording_masking_preset = "MASK_USER_INPUT"
  }
}
