resource "dynatrace_metric_metadata" "YARNMemoryAvailablePercentage" {
  display_name = "YARNMemoryAvailablePercentage"
  metric_id    = "metric-cloud.aws.emr_ec2.YARNMemoryAvailablePercentage.By.JobFlowId"
  unit         = "Percent"
}
