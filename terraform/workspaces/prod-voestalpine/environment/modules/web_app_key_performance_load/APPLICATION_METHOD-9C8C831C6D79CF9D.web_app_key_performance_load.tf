resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-9C8C831C6D79CF9D" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-9C8C831C6D79CF9D"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 4
  }
  thresholds {
    frustrating_threshold_seconds = 10
    tolerated_threshold_seconds   = 4
  }
}
