resource "dynatrace_metric_metadata" "Total_bytes_in_all_heaps" {
  description        = "This counter is the sum of four other counters; Gen 0 Heap Size; Gen 1 Heap Size; Gen 2 Heap Size and the Large Object Heap Size. This counter indicates the current memory allocated in bytes on the GC Heaps."
  display_name       = "Total bytes in all heaps"
  metric_id          = "metric-dotnet.memory.numberbytesinallheaps"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Byte"
}
