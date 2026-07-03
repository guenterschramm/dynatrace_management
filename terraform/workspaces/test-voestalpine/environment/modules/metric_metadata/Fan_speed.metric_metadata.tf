resource "dynatrace_metric_metadata" "Fan_speed" {
  description        = "The actual speed of the indexed chassis fan on the system. This is only supported for the platform where the actual fan speed data is available.'0' means fan speed is unavailable while the associated chassis status is good."
  display_name       = "Fan speed"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.chassis.fan.speed"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Unknown"
}
