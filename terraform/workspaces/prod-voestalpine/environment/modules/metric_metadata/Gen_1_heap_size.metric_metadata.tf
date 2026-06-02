resource "dynatrace_metric_metadata" "Gen_1_heap_size" {
  description        = "This counter displays the current number of bytes in generation 1 (Gen 1); this counter does not display the maximum size of Gen 1. Objects are not directly allocated in this generation; they are promoted from previous Gen 0 GCs. This counter is updated at the end of a GC; its not updated on every allocation."
  display_name       = "Gen 1 heap size"
  metric_id          = "metric-dotnet.memory.gen1heapsize"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Bytes"
}
