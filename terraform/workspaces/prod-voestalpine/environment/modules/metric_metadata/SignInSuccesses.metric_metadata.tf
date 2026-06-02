resource "dynatrace_metric_metadata" "SignInSuccesses" {
  display_name = "SignInSuccesses"
  metric_id    = "metric-cloud.aws.cognito.SignInSuccesses.By.UserPool.UserPoolClient"
  unit         = "Count"
}
