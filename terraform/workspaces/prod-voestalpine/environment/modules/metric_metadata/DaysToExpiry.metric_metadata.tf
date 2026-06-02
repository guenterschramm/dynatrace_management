resource "dynatrace_metric_metadata" "DaysToExpiry" {
  display_name = "DaysToExpiry"
  metric_id    = "metric-cloud.aws.certificatemanager.DaysToExpiry.By.CertificateArn"
  unit         = "Count"
}
