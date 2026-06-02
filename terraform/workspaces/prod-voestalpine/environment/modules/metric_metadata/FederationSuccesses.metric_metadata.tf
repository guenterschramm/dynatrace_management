resource "dynatrace_metric_metadata" "FederationSuccesses" {
  display_name = "FederationSuccesses"
  metric_id    = "metric-cloud.aws.cognito.FederationSuccesses.By.UserPool.UserPoolClient"
  unit         = "Count"
}
