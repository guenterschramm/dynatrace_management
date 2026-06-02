resource "dynatrace_metric_metadata" "Gen_0_heap_size" {
  description        = "This counter displays the maximum bytes that can be allocated in generation 0 (Gen 0); its does not indicate the current number of bytes allocated in Gen 0. A Gen 0 GC is triggered when the allocations since the last GC exceed this size. The Gen 0 size is tuned by the Garbage Collector and can change during the execution of the application. At the end of a Gen 0 collection the size of the Gen 0 heap is infact 0 bytes; this counter displays the size (in bytes) of allocations that would trigger the next Gen 0 GC. This counter is updated at the end of a GC; its not updated on every allocation."
  display_name       = "Gen 0 heap size"
  metric_id          = "metric-dotnet.memory.gen0heapsize"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Bytes"
}
