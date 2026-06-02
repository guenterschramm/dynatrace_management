resource "dynatrace_metric_metadata" "FederationThrottles" {
  display_name = "FederationThrottles"
  metric_id    = "metric-cloud.aws.cognito.FederationThrottles.By.UserPool.UserPoolClient"
  unit         = "Count"
}
