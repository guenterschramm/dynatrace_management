resource "dynatrace_web_app_key_performance_load" "APPLICATION_METHOD-71AB6B43899A5254" {
  kpm   = "DOM_INTERACTIVE"
  scope = "APPLICATION_METHOD-71AB6B43899A5254"
  fallback_thresholds {
    frustrating_fallback_threshold_seconds = 12
    tolerated_fallback_threshold_seconds   = 3
  }
  thresholds {
    frustrating_threshold_seconds = 6
    tolerated_threshold_seconds   = 3
  }
}
