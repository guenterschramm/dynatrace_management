resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-0E3B43C5C90079BA" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-0E3B43C5C90079BA"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 5.95
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 4.5
    tolerated_threshold_seconds   = 1.99
  }
}
