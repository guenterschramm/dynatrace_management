resource "dynatrace_metric_metadata" "Total_reserved_bytes" {
  description        = "This counter displays the amount of virtual memory (in bytes) currently reserved by the Garbage Collector. (Reserved memory is the virtual memory space reserved for the application but no disk or main memory pages have been used.)"
  display_name       = "Total reserved bytes"
  metric_id          = "metric-dotnet.memory.numbertotaleeservedbytes"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Bytes"
}
