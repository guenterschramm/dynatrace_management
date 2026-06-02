resource "dynatrace_metric_metadata" "Sensor_value" {
  description        = "The value of sensors as reported in the Cisco entity sensor MIB. The type/unit of the value (e.g. rpm, hertz, celcius) depends on the type of sensor (sensor.type dimension). The sensor.status dimension reports the operational status of the sensor."
  display_name       = "Sensor value"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.sensor.value"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "Name"
      key          = "entity.name"
    }
    dimension {
      display_name = "Description"
      key          = "entity.description"
    }
    dimension {
      display_name = "Sensor type"
      key          = "sensor.type"
    }
    dimension {
      display_name = "Sensor status"
      key          = "sensor.status"
    }
  }
}
