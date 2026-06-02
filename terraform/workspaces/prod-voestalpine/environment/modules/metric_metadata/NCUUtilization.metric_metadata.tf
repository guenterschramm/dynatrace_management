resource "dynatrace_metric_metadata" "NCUUtilization" {
  display_name = "NCUUtilization"
  metric_id    = "metric-cloud.aws.neptune.NCUUtilization.By.DBInstanceIdentifier"
  unit         = "Percent"
}
