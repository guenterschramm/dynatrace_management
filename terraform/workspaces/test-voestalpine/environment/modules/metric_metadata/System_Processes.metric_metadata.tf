resource "dynatrace_metric_metadata" "System_Processes" {
  description        = "The number of process contexts currently loaded or running on this system. hrSystemProcesses"
  display_name       = "System Processes"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.num_processes"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
