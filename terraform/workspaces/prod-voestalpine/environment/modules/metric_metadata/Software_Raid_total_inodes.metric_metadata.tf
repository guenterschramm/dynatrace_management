resource "dynatrace_metric_metadata" "Software_Raid_total_inodes" {
  description  = "Number of inodes on the filesystem"
  display_name = "Software Raid total inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.inodes.total"
  unit         = "Count"
}
