resource "dynatrace_metric_metadata" "Requests" {
  description        = "The total number of requests to the specified pool."
  display_name       = "Requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.tot.requests.count"
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
