resource "dynatrace_metric_metadata" "Current_queue_length" {
  description        = "This counter displays the total number of threads currently waiting to acquire some managed lock in the application. This counter is not an average over time; it displays the last observed value."
  display_name       = "Current queue length"
  metric_id          = "metric-dotnet.locksandthreads.currentqueuelength"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
