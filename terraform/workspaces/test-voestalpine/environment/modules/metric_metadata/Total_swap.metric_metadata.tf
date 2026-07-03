resource "dynatrace_metric_metadata" "Total_swap" {
  description        = "The total amount of swap space configured for this host."
  display_name       = "Total swap"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.mem.total.swap"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "Memory" ]
  unit               = "KiloByte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
}
