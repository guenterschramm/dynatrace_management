resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-0ADFE27CB0AE93D6" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-0ADFE27CB0AE93D6"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 12
    tolerated_threshold_seconds   = 3
  }
}
