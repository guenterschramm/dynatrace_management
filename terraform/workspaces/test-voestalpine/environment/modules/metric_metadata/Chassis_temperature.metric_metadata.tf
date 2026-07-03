resource "dynatrace_metric_metadata" "Chassis_temperature" {
  description        = "The chassis temperature (in Celsius) of the indexed sensor on the system. This is only supported for the platform where the sensor data is available."
  display_name       = "Chassis temperature"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.chassis.temperature"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
