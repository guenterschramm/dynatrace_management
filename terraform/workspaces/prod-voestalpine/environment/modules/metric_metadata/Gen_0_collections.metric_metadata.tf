resource "dynatrace_metric_metadata" "Gen_0_collections" {
  description        = "This counter displays the number of times the generation 0 objects (youngest; most recently allocated) are garbage collected (Gen 0 GC) since the start of the application. Gen 0 GC occurs when the available memory in generation 0 is not sufficient to satisfy an allocation request. This counter is incremented at the end of a Gen 0 GC. Higher generation GCs include all lower generation GCs. This counter is explicitly incremented when a higher generation (Gen 1 or Gen 2) GC occurs. _Global_ counter value is not accurate and should be ignored. This counter displays the last observed value."
  display_name       = "Gen 0 collections"
  metric_id          = "metric-dotnet.memory.numbergen0collections.count"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Count"
}
