resource "dynatrace_span_attribute" "mongodb_command" {
  key     = "mongodb.command"
  masking = "NOT_MASKED"
}
