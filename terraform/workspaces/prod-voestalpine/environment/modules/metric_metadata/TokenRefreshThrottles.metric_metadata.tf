resource "dynatrace_metric_metadata" "TokenRefreshThrottles" {
  display_name = "TokenRefreshThrottles"
  metric_id    = "metric-cloud.aws.cognito.TokenRefreshThrottles.By.UserPool.UserPoolClient"
  unit         = "Count"
}
