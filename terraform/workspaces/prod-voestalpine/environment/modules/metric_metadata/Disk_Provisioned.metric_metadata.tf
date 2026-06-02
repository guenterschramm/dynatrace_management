resource "dynatrace_metric_metadata" "Disk_Provisioned" {
  description        = "Amount of storage set aside for use by a datastore or a virtual machine"
  display_name       = "Disk Provisioned"
  metric_id          = "metric-vmware.datastore.disk.provisioned.latest"
  source_entity_type = "vmware:datastore"
  unit               = "KibiByte"
}
