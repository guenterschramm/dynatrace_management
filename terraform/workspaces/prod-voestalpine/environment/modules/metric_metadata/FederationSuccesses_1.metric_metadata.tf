resource "dynatrace_metric_metadata" "FederationSuccesses_1" {
  display_name = "FederationSuccesses"
  metric_id    = "metric-cloud.aws.cognito.FederationSuccesses.By.IdentityProvider.UserPool.UserPoolClient"
  unit         = "Count"
}
