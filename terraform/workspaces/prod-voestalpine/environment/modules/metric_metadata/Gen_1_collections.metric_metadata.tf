resource "dynatrace_metric_metadata" "Gen_1_collections" {
  description        = "This counter displays the number of times the generation 1 objects are garbage collected since the start of the application. The counter is incremented at the end of a Gen 1 GC. Higher generation GCs include all lower generation GCs. This counter is explicitly incremented when a higher generation (Gen 2) GC occurs. _Global_ counter value is not accurate and should be ignored. This counter displays the last observed value."
  display_name       = "Gen 1 collections"
  metric_id          = "metric-dotnet.memory.numbergen1collections.count"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
