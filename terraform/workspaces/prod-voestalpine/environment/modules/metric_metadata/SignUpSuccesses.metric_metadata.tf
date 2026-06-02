resource "dynatrace_metric_metadata" "SignUpSuccesses" {
  display_name = "SignUpSuccesses"
  metric_id    = "metric-cloud.aws.cognito.SignUpSuccesses.By.UserPool.UserPoolClient"
  unit         = "Count"
}
