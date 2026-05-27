resource "dynatrace_span_attribute" "aws_x_amzn_trace_id" {
  key     = "aws.x_amzn_trace_id"
  masking = "NOT_MASKED"
}
