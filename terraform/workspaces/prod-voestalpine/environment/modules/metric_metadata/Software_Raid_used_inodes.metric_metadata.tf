resource "dynatrace_metric_metadata" "Software_Raid_used_inodes" {
  description  = "Number of inodes used on the filesystem"
  display_name = "Software Raid used inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.inodes.used"
  unit         = "Count"
}
