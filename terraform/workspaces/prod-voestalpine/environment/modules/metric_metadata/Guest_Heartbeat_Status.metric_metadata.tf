resource "dynatrace_metric_metadata" "Guest_Heartbeat_Status" {
  description  = "The guest heartbeat. The heartbeat status is classified as: 0=Green : Guest operating system is responding normally. 1=Gray : VMware Tools are not installed or not running. 2=Yellow : Intermittent heartbeat. May be due to guest load. 3=Red : No heartbeat. Guest operating system may have stopped responding."
  display_name = "Guest Heartbeat Status"
  metric_id    = "metric-vmware.vm.guest.status"
  unit         = "Count"
}
