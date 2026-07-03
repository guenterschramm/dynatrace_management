resource "dynatrace_metric_metadata" "Pool_state" {
  description        = "General state metric for the pool. Value is always 1, but dimensions 'Enabled state' and 'Availability state' define the state. The availability state takes the following values: 0 (none/error); 1 (green/available in some capacity); 2 (yellow/not currently available); 3 (red/not available); 4 (blue/availability is unknown); 5 (gray/unlicensed). Enabled state takes values 0 (none), 1 (enabled), 2 (disabled), 3 (disabled by parent)."
  display_name       = "Pool state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.state"
  source_entity_type = "f5:pool"
  tags               = [ "F5", "Pool" ]
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
    dimension {
      display_name = "Availability state"
      key          = "pool.availstate"
    }
    dimension {
      display_name = "Enabled state"
      key          = "pool.enablestate"
    }
    dimension {
      display_name = "State detail"
      key          = "pool.statedetail"
    }
  }
}
