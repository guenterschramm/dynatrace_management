resource "dynatrace_metric_metadata" "Volume_filesystem_used_space_percent" {
  description  = "Percentage of used space on the volume filesystem"
  display_name = "Volume filesystem used space percent"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.volume.space.usedpercent"
  unit         = "Percent"
}
