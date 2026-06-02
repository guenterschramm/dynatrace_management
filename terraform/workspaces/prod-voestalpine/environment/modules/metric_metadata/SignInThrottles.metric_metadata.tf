resource "dynatrace_metric_metadata" "SignInThrottles" {
  display_name = "SignInThrottles"
  metric_id    = "metric-cloud.aws.cognito.SignInThrottles.By.UserPool.UserPoolClient"
  unit         = "Count"
}
