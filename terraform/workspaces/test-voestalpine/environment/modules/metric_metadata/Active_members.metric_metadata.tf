resource "dynatrace_metric_metadata" "Active_members" {
  description        = "The number of the current active members in the specified pool."
  display_name       = "Active members"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.active.member.cnt"
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
    dimension {
      display_name = "Load balancing mode"
      key          = "pool.lbmode"
    }
    dimension {
      display_name = "Active members"
      key          = "pool.activembrcount"
    }
    dimension {
      display_name = "Monitor rule"
      key          = "pool.monitorrule"
    }
  }
}
