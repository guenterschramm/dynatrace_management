resource "dynatrace_metric_metadata" "RepositoryPullCount" {
  display_name = "RepositoryPullCount"
  metric_id    = "metric-cloud.aws.ecr.RepositoryPullCount.By.RepositoryName"
  unit         = "Count"
}
