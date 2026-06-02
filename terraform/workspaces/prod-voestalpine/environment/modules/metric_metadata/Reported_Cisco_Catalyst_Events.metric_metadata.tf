resource "dynatrace_metric_metadata" "Reported_Cisco_Catalyst_Events" {
  description        = "Number of Cisco Catalyst Events reported as log records"
  display_name       = "Reported Cisco Catalyst Events"
  metric_id          = "metric-cisco.cc.center.cc_events.count"
  source_entity_type = "cisco_cc:center"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "CC Event ID"
      key          = "cc_event_event_id"
    }
    dimension {
      display_name = "CC Event Category"
      key          = "cc_event_category"
    }
    dimension {
      display_name = "CC Event Type"
      key          = "cc_event_type"
    }
    dimension {
      display_name = "CC Event Domain"
      key          = "cc_event_domain"
    }
    dimension {
      display_name = "CC Event Severity"
      key          = "cc_event_severity"
    }
    dimension {
      display_name = "Device Id"
      key          = "device_id"
    }
    dimension {
      display_name = "Site Id"
      key          = "site_id"
    }
  }
}
