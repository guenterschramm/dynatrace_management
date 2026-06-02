resource "dynatrace_metric_metadata" "TokenRefreshSuccesses" {
  display_name = "TokenRefreshSuccesses"
  metric_id    = "metric-cloud.aws.cognito.TokenRefreshSuccesses.By.UserPool.UserPoolClient"
  unit         = "Count"
}
