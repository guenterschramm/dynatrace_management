resource "dynatrace_metric_metadata" "Number_of_current_logical_threads" {
  description        = "This counter displays the number of current .NET thread objects in the application. A .NET thread object is created either by new System.Threading.Thread or when an unmanaged thread enters the managed environment. This counters maintains the count of both running and stopped threads. This counter is not an average over time; it just displays the last observed value."
  display_name       = "Number of current logical threads"
  metric_id          = "metric-dotnet.locksandthreads.numberofcurrentlogicalthreads"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
