resource "dynatrace_metric_metadata" "Current_sessions" {
  description        = "The current number of sessions to the specified pool."
  display_name       = "Current sessions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.cur.sessions"
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
