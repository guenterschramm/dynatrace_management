resource "dynatrace_metric_metadata" "Certificate_monitor_blocklist" {
  description        = "Metadata on blocklisted certificates"
  display_name       = "Certificate monitor blocklist"
  metric_id          = "metric-certificate.monitor.blocklist"
  source_entity_type = "python:certificate_monitor"
  tags               = [ "Extension", "Python" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Monitoring config"
      key          = "monitoring_config"
    }
    dimension {
      display_name = "Address"
      key          = "address"
    }
    dimension {
      display_name = "Port"
      key          = "port"
    }
    dimension {
      display_name = "Entity ID"
      key          = "entity_id"
    }
    dimension {
      display_name = "Name"
      key          = "name"
    }
    dimension {
      display_name = "Reason"
      key          = "reason"
    }
  }
}
