resource "dynatrace_metric_metadata" "IP_Route" {
  description  = "Used to get Juniper SNMP IP Routing Info"
  display_name = "IP Route"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.cidr.route"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Device.address"
      key          = "device.address"
    }
    dimension {
      display_name = "Device.port"
      key          = "device.port"
    }
    dimension {
      display_name = "System.contact"
      key          = "system.contact"
    }
    dimension {
      display_name = "System.name"
      key          = "system.name"
    }
    dimension {
      display_name = "System.location"
      key          = "system.location"
    }
    dimension {
      display_name = "Route Destination"
      key          = "route.destination"
    }
    dimension {
      display_name = "Route Nexthop"
      key          = "route.nexthop"
    }
    dimension {
      display_name = "Route Type"
      key          = "route.type"
    }
    dimension {
      display_name = "Route Protocol"
      key          = "route.proto"
    }
    dimension {
      display_name = "Route Nexthop ASN"
      key          = "route.nexthop.asn"
    }
    dimension {
      display_name = "Route Status"
      key          = "route.status"
    }
  }
}
