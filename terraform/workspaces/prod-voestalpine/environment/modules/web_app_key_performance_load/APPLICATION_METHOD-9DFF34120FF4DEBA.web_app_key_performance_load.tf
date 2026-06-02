resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-9DFF34120FF4DEBA" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-9DFF34120FF4DEBA"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 5.95
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 4.5
    tolerated_threshold_seconds   = 1.99
  }
}
