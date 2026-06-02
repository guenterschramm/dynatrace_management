resource "dynatrace_span_attribute" "messaging_controller_class" {
  key     = "messaging.controller.class"
  masking = "NOT_MASKED"
}
