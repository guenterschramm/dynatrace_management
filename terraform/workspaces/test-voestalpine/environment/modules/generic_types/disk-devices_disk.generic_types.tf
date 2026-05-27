resource "dynatrace_generic_types" "disk-devices_disk" {
  name         = "disk-devices:disk"
  enabled      = true
  created_by   = "com.dynatrace.extension.disk-devices 1.0.3"
  display_name = "Disk"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDg3YmUwZmEzLWI0NDUtNWU1Mi05ZjcwLWJkNzkxZjc5YjExM77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "{storage.disk.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.disk.kname} disk"
      attributes {
        attribute {
          display_name = "Type"
          key          = "disk_type"
          pattern      = "{storage.disk.type}"
        }
        attribute {
          display_name = "Encrypted"
          key          = "disk_encrypted"
          pattern      = "{storage.disk.encrypted}"
        }
        attribute {
          display_name = "Mountpoint"
          key          = "disk_mountpoint"
          pattern      = "{storage.disk.mountpoint}"
        }
        attribute {
          display_name = "Other mountpoints"
          key          = "disk_othermount"
          pattern      = "{storage.disk.other-mountpoints}"
        }
        attribute {
          display_name = "File system type"
          key          = "disk_fstype"
          pattern      = "{storage.disk.fstype}"
        }
        attribute {
          display_name = "Device path"
          key          = "disk_path"
          pattern      = "{storage.disk.path}"
        }
        attribute {
          display_name = "Read only"
          key          = "disk_readonly"
          pattern      = "{storage.disk.read-only}"
        }
        attribute {
          display_name = "Removable"
          key          = "disk_removable"
          pattern      = "{storage.disk.removable}"
        }
        attribute {
          display_name = "Model"
          key          = "disk_model"
          pattern      = "{storage.disk.model}"
        }
        attribute {
          display_name = "Vendor"
          key          = "disk_vendor"
          pattern      = "{storage.disk.vendor}"
        }
        attribute {
          display_name = "Serial number"
          key          = "disk_serial"
          pattern      = "{storage.disk.serial}"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.disk)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{storage.disk.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.disk.kname} disk"
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.partition)"
          source_type = "Metrics"
        }
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
