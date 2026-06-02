resource "dynatrace_metric_metadata" "numRecordsOutPerSecond" {
  display_name = "numRecordsOutPerSecond"
  metric_id    = "metric-cloud.aws.flink.numRecordsOutPerSecond.By.Application.Operator.Parallelism.Task"
  unit         = "Count/Second"
}
