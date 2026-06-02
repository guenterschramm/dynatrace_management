resource "dynatrace_metric_metadata" "glue_driver_system_cpuSystemLoad" {
  display_name = "glue.driver.system.cpuSystemLoad"
  metric_id    = "metric-cloud.aws.glue.glue.driver.system.cpuSystemLoad.By.JobName.JobRunId.Type"
  unit         = "Percentage"
}
