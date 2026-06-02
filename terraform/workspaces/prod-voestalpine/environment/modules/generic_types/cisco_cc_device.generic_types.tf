resource "dynatrace_generic_types" "cisco_cc_device" {
  name         = "cisco_cc:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.cisco-cc 2.2.1"
  display_name = "Catalyst Device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGMxOWI3MjJhLWY4MDUtNTdkOC05ZmM5LWI5YjQ1OGM3Y2ZhZL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "switch"
      id_pattern            = "cisco_cc_device_{center}_{device_id}"
      instance_name_pattern = "{device}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{type}"
        }
        attribute {
          display_name = "IP Address"
          key          = "ip_address"
          pattern      = "{ip_address}"
        }
        attribute {
          display_name = "Family"
          key          = "family"
          pattern      = "{family}"
        }
        attribute {
          display_name = "Location"
          key          = "location"
          pattern      = "{location}"
        }
        attribute {
          display_name = "Role"
          key          = "role"
          pattern      = "{role}"
        }
        attribute {
          display_name = "Device Serial Number"
          key          = "serial_number"
          pattern      = "{serial_number}"
        }
        attribute {
          display_name = "Device Platform"
          key          = "platform_id"
          pattern      = "{platform_id}"
        }
        attribute {
          display_name = "Device Total Memory"
          key          = "memory_size_text"
          pattern      = "{memory_size_text}"
        }
        attribute {
          display_name = "Device Uptime"
          key          = "uptime_text"
          pattern      = "{uptime_text}"
        }
        attribute {
          display_name = "OS Type"
          key          = "os_type"
          pattern      = "{os_type}"
        }
        attribute {
          display_name = "OS Version"
          key          = "os_version"
          pattern      = "{os_version}"
        }
        attribute {
          display_name = "Contact"
          key          = "contact"
          pattern      = "{contact}"
        }
        attribute {
          display_name = "Reachability Status"
          key          = "reachability_status"
          pattern      = "{reachability_status}"
        }
        attribute {
          display_name = "Center Device Link"
          key          = "cc_device_link"
          pattern      = "{cc_device_link}"
        }
        attribute {
          display_name = "Full Site Name"
          key          = "site_name_hierarchy"
          pattern      = "{site_name_hierarchy}"
        }
        attribute {
          display_name = "Site Type"
          key          = "site_type"
          pattern      = "{site_type}"
        }
        attribute {
          display_name = "Site Name"
          key          = "site_name"
          pattern      = "{site_name}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Area"
          key          = "area"
          pattern      = "{area}"
        }
        attribute {
          display_name = "Building"
          key          = "building"
          pattern      = "{building}"
        }
        attribute {
          display_name = "Floor"
          key          = "floor"
          pattern      = "{floor}"
        }
        attribute {
          display_name = "Center Site Link"
          key          = "cc_site_link"
          pattern      = "{cc_site_link}"
        }
        attribute {
          display_name = "1st Level Id"
          key          = "level_01_id"
          pattern      = "{level_01_id}"
        }
        attribute {
          display_name = "1st Level name"
          key          = "level_01_name"
          pattern      = "{level_01_name}"
        }
        attribute {
          display_name = "2nd Level Id"
          key          = "level_02_id"
          pattern      = "{level_02_id}"
        }
        attribute {
          display_name = "2nd Level name"
          key          = "level_02_name"
          pattern      = "{level_02_name}"
        }
        attribute {
          display_name = "3rd Level Id"
          key          = "level_03_id"
          pattern      = "{level_03_id}"
        }
        attribute {
          display_name = "3rd Level name"
          key          = "level_03_name"
          pattern      = "{level_03_name}"
        }
        attribute {
          display_name = "4th Level Id"
          key          = "level_04_id"
          pattern      = "{level_04_id}"
        }
        attribute {
          display_name = "4th Level name"
          key          = "level_04_name"
          pattern      = "{level_04_name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.device_discovery)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "switch"
      id_pattern            = "cisco_cc_device_{center}_{device_id}"
      instance_name_pattern = "{device}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.issue)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "cisco_cc_device_{center}_{device_id}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          key     = "cc_event_attr"
          pattern = "true"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.event)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "switch"
      id_pattern            = "cisco_cc_device_{center}_{device_id}"
      instance_name_pattern = "{device}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Name"
          key          = "device"
          pattern      = "{device}"
        }
        attribute {
          display_name = "Device Id"
          key          = "device_id"
          pattern      = "{device_id}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{type}"
        }
        attribute {
          display_name = "CC Device IP Address"
          key          = "device_ip_address"
          pattern      = "{device_ip_address}"
        }
        attribute {
          display_name = "Family"
          key          = "family"
          pattern      = "{family}"
        }
        attribute {
          display_name = "Location"
          key          = "location"
          pattern      = "{location}"
        }
        attribute {
          display_name = "Full Site Name"
          key          = "site_name_hierarchy"
          pattern      = "{site_name_hierarchy}"
        }
        attribute {
          display_name = "Site Type"
          key          = "site_type"
          pattern      = "{site_type}"
        }
        attribute {
          display_name = "Site Name"
          key          = "site_name"
          pattern      = "{site_name}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "device_id"
        }
        required_dimension {
          key           = "device"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(cisco.cc.device.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.interface.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
