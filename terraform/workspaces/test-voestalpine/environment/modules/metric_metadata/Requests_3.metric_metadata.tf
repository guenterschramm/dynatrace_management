resource "dynatrace_metric_metadata" "Requests_3" {
  description        = "The total number of requests going through the specified virtual server."
  display_name       = "Requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.tot.requests.count"
  source_entity_type = "f5:virtualserver"
  tags               = [ "F5", "VirtualServer" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
  }
  metric_properties {
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
