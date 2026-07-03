resource "dynatrace_metric_metadata" "Rejected_syn_cookies" {
  description        = "The number of whitelist syn cookies received that were rejected."
  display_name       = "Rejected syn cookies"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.wl.syncookie.rejects.count"
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
