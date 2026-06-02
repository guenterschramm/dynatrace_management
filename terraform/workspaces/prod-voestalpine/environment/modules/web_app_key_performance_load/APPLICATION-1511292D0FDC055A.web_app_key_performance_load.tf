resource "dynatrace_web_app_key_performance_load" "APPLICATION-1511292D0FDC055A" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION-1511292D0FDC055A"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 4.5
    tolerated_threshold_seconds   = 1.99
  }
}
