resource "dynatrace_metric_metadata" "Percent_of_time_in_GC" {
  description        = "The percentage of elapsed time that was spent in performing a garbage collection (GC) since the last GC cycle. This counter is usually an indicator of the work done by the Garbage Collector on behalf of the application to collect and compact memory. This counter is updated only at the end of every GC and the counter value reflects the last observed value; its not an average."
  display_name       = "Percent of time in GC"
  metric_id          = "metric-dotnet.memory.percenttimeingc"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Percent"
}
