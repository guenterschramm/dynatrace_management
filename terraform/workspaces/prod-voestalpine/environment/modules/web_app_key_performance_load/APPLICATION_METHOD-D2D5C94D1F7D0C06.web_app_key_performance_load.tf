resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-D2D5C94D1F7D0C06" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-D2D5C94D1F7D0C06"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 5
    tolerated_threshold_seconds   = 3
  }
}
