resource "dynatrace_metric_metadata" "Bytes_received" {
  description        = "The number of bytes received by the specified pool from server-side."
  display_name       = "Bytes received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.bytes.in.count"
  source_entity_type = "f5:pool"
  tags               = [ "F5", "Pool" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
  }
}
