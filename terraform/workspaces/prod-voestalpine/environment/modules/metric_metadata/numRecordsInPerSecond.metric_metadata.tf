resource "dynatrace_metric_metadata" "numRecordsInPerSecond" {
  display_name = "numRecordsInPerSecond"
  metric_id    = "metric-cloud.aws.flink.numRecordsInPerSecond.By.Application.Operator.Parallelism.Task"
  unit         = "Count/Second"
}
