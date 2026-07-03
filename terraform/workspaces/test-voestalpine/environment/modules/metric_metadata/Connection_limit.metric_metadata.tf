resource "dynatrace_metric_metadata" "Connection_limit" {
  description        = "The maximum number of connections the specified virtual server is allowed to have open at one time"
  display_name       = "Connection limit"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.conn_limit"
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
}
