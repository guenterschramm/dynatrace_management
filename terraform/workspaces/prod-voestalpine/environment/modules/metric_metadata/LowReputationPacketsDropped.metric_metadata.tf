resource "dynatrace_metric_metadata" "LowReputationPacketsDropped" {
  display_name = "LowReputationPacketsDropped"
  metric_id    = "metric-cloud.aws.wafv2.LowReputationPacketsDropped.By.Region.Rule.WebACL"
  unit         = "Count"
}
