resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-E432DD2ED0C0376F" {
  kpm   = "VISUALLY_COMPLETE"
  scope = "APPLICATION_METHOD-E432DD2ED0C0376F"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 20
    tolerated_fallback_threshold_seconds   = 10
  }
  thresholds {
    frustrating_threshold_seconds = 20
    tolerated_threshold_seconds   = 10
  }
}
