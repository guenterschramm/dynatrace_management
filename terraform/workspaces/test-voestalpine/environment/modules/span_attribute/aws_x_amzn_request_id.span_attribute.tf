resource "dynatrace_span_attribute" "aws_x_amzn_request_id" {
  key     = "aws.x_amzn_request_id"
  masking = "NOT_MASKED"
}
