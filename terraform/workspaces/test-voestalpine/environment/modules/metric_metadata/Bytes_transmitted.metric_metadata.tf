resource "dynatrace_metric_metadata" "Bytes_transmitted" {
  description        = "The number of bytes sent to server-side from the specified pool."
  display_name       = "Bytes transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.bytes.out.count"
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
