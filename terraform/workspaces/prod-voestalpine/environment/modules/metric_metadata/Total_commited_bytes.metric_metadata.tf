resource "dynatrace_metric_metadata" "Total_commited_bytes" {
  description        = "This counter displays the amount of virtual memory (in bytes) currently committed by the Garbage Collector. (Committed memory is the physical memory for which space has been reserved on the disk paging file)."
  display_name       = "Total commited bytes"
  metric_id          = "metric-dotnet.memory.numbertotalcommittedbytes"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "Bytes"
}
