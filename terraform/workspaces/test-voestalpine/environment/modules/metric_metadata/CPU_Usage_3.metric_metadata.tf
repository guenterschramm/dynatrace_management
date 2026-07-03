resource "dynatrace_metric_metadata" "CPU_Usage_3" {
  description        = "The percentage of time Virtual Server was busy over the last 1 minute."
  display_name       = "CPU Usage"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.vs.usage.ratio1m"
  source_entity_type = "f5:virtualserver"
  tags               = [ "F5", "VirtualServer" ]
  unit               = "Percent"
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
    max_value           = 100
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
