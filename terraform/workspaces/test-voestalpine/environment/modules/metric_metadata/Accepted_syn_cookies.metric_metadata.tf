resource "dynatrace_metric_metadata" "Accepted_syn_cookies" {
  description        = "The number of whitelist syn cookies received that were accepted."
  display_name       = "Accepted syn cookies"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.wl.syncookie.accepts.count"
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
