resource "dynatrace_generic_types" "f5_instance" {
  name         = "f5:instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDk2MGJkMTdmLWM1MDUtNTFkOS1hNTkxLTFkODViNjk5NGM0Yr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "f5"
      id_pattern            = "f5_instance_{instance.name}"
      instance_name_pattern = "{instance.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "OS release"
          key          = "OSRelease"
          pattern      = "{instance.systemrelease}"
        }
        attribute {
          display_name = "OS architecture"
          key          = "OSArchitecture"
          pattern      = "{instance.systemarch}"
        }
        attribute {
          display_name = "OS name"
          key          = "OSName"
          pattern      = "{instance.systemname}"
        }
        attribute {
          display_name = "Product version"
          key          = "ProductVersion"
          pattern      = "{instance.productversion}"
        }
        attribute {
          display_name = "Node name"
          key          = "NodeName"
          pattern      = "{instance.systemnodename}"
        }
        attribute {
          display_name = "Failover status"
          key          = "FailoverStatus"
          pattern      = "{failover.state}"
        }
        attribute {
          display_name = "Config sync status"
          key          = "SyncStatus"
          pattern      = "{sync.state}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
        attribute {
          display_name = "IP Addresses"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "instance.systemname"
        }
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dt.metrics.source"
          value_pattern = "$eq(com.dynatrace.extension.f5.bigip)"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.network_device.sysuptime)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "f5"
      id_pattern            = "f5_instance_{instance.name}"
      instance_name_pattern = "{instance.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{virtualserver.port}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "instance.name"
        }
        required_dimension {
          key = "virtualserver.port"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.virtualserver.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "f5"
      id_pattern            = "f5_instance_{instance.name}"
      instance_name_pattern = "{instance.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "DNS Name"
          key          = "dt.dns_names"
          pattern      = "{device.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "f5"
      id_pattern            = "f5_instance_{instance.name}"
      instance_name_pattern = "{instance.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "instance.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(func:com.dynatrace.extension.f5.bigip)"
          source_type = "Metrics"
        }
      }
    }
  }
}
