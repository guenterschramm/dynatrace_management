resource "dynatrace_span_attribute" "messaging_controller_method" {
  key     = "messaging.controller.method"
  masking = "NOT_MASKED"
}
