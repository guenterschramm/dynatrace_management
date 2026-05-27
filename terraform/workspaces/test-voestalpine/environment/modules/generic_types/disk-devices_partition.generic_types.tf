resource "dynatrace_generic_types" "disk-devices_partition" {
  name         = "disk-devices:partition"
  enabled      = true
  created_by   = "com.dynatrace.extension.disk-devices 1.0.3"
  display_name = "Partition"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDM2OTQ3OTRhLTAzNTYtNTUxZC1iYjIzLWFmNTJhYTZkZTExNr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "{storage.partition.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.partition.kname} partition"
      attributes {
        attribute {
          display_name = "Type"
          key          = "partition_type"
          pattern      = "{storage.partition.type}"
        }
        attribute {
          display_name = "Encrypted"
          key          = "partition_encrypted"
          pattern      = "{storage.partition.encrypted}"
        }
        attribute {
          display_name = "Mountpoint"
          key          = "partition_mountpoint"
          pattern      = "{storage.partition.mountpoint}"
        }
        attribute {
          display_name = "Other mountpoints"
          key          = "partition_othermount"
          pattern      = "{storage.partition.other-mountpoints}"
        }
        attribute {
          display_name = "File system type"
          key          = "partition_fstype"
          pattern      = "{storage.partition.fstype}"
        }
        attribute {
          display_name = "Device path"
          key          = "partition_path"
          pattern      = "{storage.partition.path}"
        }
        attribute {
          display_name = "Read only"
          key          = "partition_readonly"
          pattern      = "{storage.partition.read-only}"
        }
        attribute {
          display_name = "Removable"
          key          = "partition_removable"
          pattern      = "{storage.partition.removable}"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.partition)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{storage.partition.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.partition.kname} partition"
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.software-raid)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.volume)"
          source_type = "Metrics"
        }
      }
    }
  }
}
