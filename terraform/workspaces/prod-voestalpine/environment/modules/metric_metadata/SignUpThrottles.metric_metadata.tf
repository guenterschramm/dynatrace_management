resource "dynatrace_metric_metadata" "SignUpThrottles" {
  display_name = "SignUpThrottles"
  metric_id    = "metric-cloud.aws.cognito.SignUpThrottles.By.UserPool.UserPoolClient"
  unit         = "Count"
}
