resource "dynatrace_metric_metadata" "Catalyst_Center_Notification_Count" {
  description        = "Number of Cisco Catalyst Center event notifications reported per collection interval"
  display_name       = "Catalyst Center Notification Count"
  metric_id          = "metric-cisco.cc.center.notification_count.gauge"
  source_entity_type = "cisco_cc:center"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Endpoint IP"
      key          = "endpoint_ip"
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
      display_name = "Device"
      key          = "device"
    }
    dimension {
      display_name = "Type"
      key          = "type"
    }
    dimension {
      display_name = "Family"
      key          = "family"
    }
    dimension {
      display_name = "Role"
      key          = "role"
    }
    dimension {
      display_name = "Platform Id"
      key          = "platform_id"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
    dimension {
      display_name = "Device IP Address"
      key          = "device_ip_address"
    }
    dimension {
      display_name = "Site Id"
      key          = "site_id"
    }
    dimension {
      display_name = "Site Name"
      key          = "site_name"
    }
    dimension {
      display_name = "Site Name Hierarchy"
      key          = "site_name_hierarchy"
    }
    dimension {
      display_name = "Site Type"
      key          = "site_type"
    }
  }
}
