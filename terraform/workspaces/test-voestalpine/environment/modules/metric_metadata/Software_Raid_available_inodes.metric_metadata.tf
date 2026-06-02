resource "dynatrace_metric_metadata" "Software_Raid_available_inodes" {
  description  = "Number of inodes available on the filesystem"
  display_name = "Software Raid available inodes"
  metric_id    = "metric-com.dynatrace.extension.disk-devices.software-raid.inodes.available"
  unit         = "Count"
}
