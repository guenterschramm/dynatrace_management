resource "dynatrace_metric_metadata" "Available_swap" {
  description        = "The amount of swap space currently unused or available."
  display_name       = "Available swap"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.mem.avail.swap"
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
