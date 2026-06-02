resource "dynatrace_session_replay_web_privacy" "environment" {
  application_id     = "environment"
  enable_opt_in_mode = false
  masking_presets {
    playback_masking_preset  = "MASK_ALL"
    recording_masking_preset = "MASK_ALL"
  }
}
