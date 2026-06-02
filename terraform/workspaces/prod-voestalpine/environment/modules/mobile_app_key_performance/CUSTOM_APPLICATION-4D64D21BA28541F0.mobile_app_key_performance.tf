resource "dynatrace_mobile_app_key_performance" "CUSTOM_APPLICATION-4D64D21BA28541F0" {
  frustrating_if_reported_or_web_request_error = true
  scope                                        = "CUSTOM_APPLICATION-4D64D21BA28541F0"
  thresholds {
    frustrating_threshold_seconds = 12
    tolerable_threshold_seconds   = 3
  }
}
