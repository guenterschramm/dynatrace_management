resource "dynatrace_metric_metadata" "Wide_IP_state" {
  description        = "State metric which captures the metadata details of an F5 DNS (GTM) Wide IP. The value is always 1."
  display_name       = "Wide IP state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.state"
  source_entity_type = "f5:gtm:wip"
  tags               = [ "F5", "GTM", "WideIP" ]
  unit               = "NotApplicable"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Wide IP name"
      key          = "wip.name"
    }
    dimension {
      display_name = "Wide IP type"
      key          = "wip.type"
    }
    dimension {
      display_name = "Load balance mode"
      key          = "wip.lb_mode"
    }
    dimension {
      display_name = "Last resort pool"
      key          = "wip.last_resort"
    }
    dimension {
      display_name = "Availability state"
      key          = "wip.available"
    }
    dimension {
      display_name = "Enabled state"
      key          = "wip.enabled"
    }
    dimension {
      display_name = "State detail"
      key          = "wip.state_detail"
    }
  }
}
