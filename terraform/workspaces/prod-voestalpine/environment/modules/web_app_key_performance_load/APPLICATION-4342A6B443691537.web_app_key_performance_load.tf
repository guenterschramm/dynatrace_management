resource "dynatrace_web_app_key_performance_load" "APPLICATION-4342A6B443691537" {
  kpm   = "VISUALLY_COMPLETE"
  scope = "APPLICATION-4342A6B443691537"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 4.5
    tolerated_threshold_seconds   = 1.99
  }
}
