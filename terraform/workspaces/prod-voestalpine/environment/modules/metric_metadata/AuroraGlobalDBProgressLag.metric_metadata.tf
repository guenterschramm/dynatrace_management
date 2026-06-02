resource "dynatrace_metric_metadata" "AuroraGlobalDBProgressLag" {
  display_name = "AuroraGlobalDBProgressLag"
  metric_id    = "metric-cloud.aws.rds.AuroraGlobalDBProgressLag.By.DBClusterIdentifier"
  unit         = "Milliseconds"
}
