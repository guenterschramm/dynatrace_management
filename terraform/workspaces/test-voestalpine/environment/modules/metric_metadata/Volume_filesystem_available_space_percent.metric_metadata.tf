resource "dynatrace_metric_metadata" "Volume_filesystem_available_space_percent" {
  description  = "Percentage of free space available for the volume filesystem"
  display_name = "Volume filesystem available space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.space.availablepercent"
  unit         = "Percent"
}
