resource "dynatrace_metric_metadata" "Gen_2_heap_size" {
  description        = "This counter displays the current number of bytes in generation 2 (Gen 2). Objects are not directly allocated in this generation; they are promoted from Gen 1 during previous Gen 1 GCs. This counter is updated at the end of a GC; its not updated on every allocation."
  display_name       = "Gen 2 heap size"
  metric_id          = "metric-dotnet.memory.gen2heapsize"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Bytes"
}
