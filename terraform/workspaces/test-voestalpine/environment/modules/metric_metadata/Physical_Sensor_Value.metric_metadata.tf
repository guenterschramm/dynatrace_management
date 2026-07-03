resource "dynatrace_metric_metadata" "Physical_Sensor_Value" {
  description        = "The most recent measurement obtained by the agent for this sensor. entPhySensorValue"
  display_name       = "Physical Sensor Value"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sensor.value"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
