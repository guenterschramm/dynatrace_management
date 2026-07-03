resource "dynatrace_metric_metadata" "System_Max_Processes" {
  description        = "The maximum number of process contexts this system can support. hrSystemMaxProcesses"
  display_name       = "System Max Processes"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.max_processes"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
