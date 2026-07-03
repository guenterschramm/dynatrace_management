resource "dynatrace_metric_metadata" "Buffer_memory" {
  description        = "The total amount of real or virtual memory currently allocated for use as memory buffers. This object will not be implemented on hosts where the underlying operating system does not explicitly identify memory as specifically reserved for this purpose."
  display_name       = "Buffer memory"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.mem.buffer"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "Memory" ]
  unit               = "KiloByte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
}
