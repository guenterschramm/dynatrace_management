resource "dynatrace_metric_metadata" "Gen_2_collections" {
  description        = "This counter displays the number of times the generation 2 objects (older) are garbage collected since the start of the application. The counter is incremented at the end of a Gen 2 GC (also called full GC). _Global_ counter value is not accurate and should be ignored. This counter displays the last observed value."
  display_name       = "Gen 2 collections"
  metric_id          = "metric-dotnet.memory.numbergen2collections.count"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
