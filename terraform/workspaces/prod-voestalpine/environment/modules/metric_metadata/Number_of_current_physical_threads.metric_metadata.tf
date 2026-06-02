resource "dynatrace_metric_metadata" "Number_of_current_physical_threads" {
  description        = "This counter displays the number of native OS threads created and owned by the CLR to act as underlying threads for .NET thread objects. This counters value does not include the threads used by the CLR in its internal operations; it is a subset of the threads in the OS process."
  display_name       = "Number of current physical threads"
  metric_id          = "metric-dotnet.locksandthreads.numberofcurrentphysicalthreads"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
