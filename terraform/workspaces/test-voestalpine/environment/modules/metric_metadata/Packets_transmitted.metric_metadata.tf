resource "dynatrace_metric_metadata" "Packets_transmitted" {
  description        = "The number of packets sent to server-side from the specified pool."
  display_name       = "Packets transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.pkts.out.count"
  source_entity_type = "f5:pool"
  tags               = [ "F5", "Pool" ]
  unit               = "Count"
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
