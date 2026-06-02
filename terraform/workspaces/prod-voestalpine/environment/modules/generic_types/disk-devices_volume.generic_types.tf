resource "dynatrace_generic_types" "disk-devices_volume" {
  name         = "disk-devices:volume"
  enabled      = true
  created_by   = "com.dynatrace.extension.disk-devices 1.0.3"
  display_name = "Logical volume"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDY3ZTA2MTg2LWM3NzYtNThjMS1hMTliLTkwN2JhMWY5N2Y0Y77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "{storage.volume.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.volume.display-name} logical volume"
      attributes {
        attribute {
          display_name = "Type"
          key          = "volume_type"
          pattern      = "{storage.volume.type}"
        }
        attribute {
          display_name = "Mountpoint"
          key          = "volume_mountpoint"
          pattern      = "{storage.volume.mountpoint}"
        }
        attribute {
          display_name = "Other mountpoints"
          key          = "volume_othermount"
          pattern      = "{storage.volume.other-mountpoints}"
        }
        attribute {
          display_name = "File system type"
          key          = "volume_fstype"
          pattern      = "{storage.volume.fstype}"
        }
        attribute {
          display_name = "Device path"
          key          = "volume_path"
          pattern      = "{storage.volume.path}"
        }
        attribute {
          display_name = "Read only"
          key          = "volume_readonly"
          pattern      = "{storage.volume.read-only}"
        }
        attribute {
          display_name = "Removable"
          key          = "volume_removable"
          pattern      = "{storage.volume.removable}"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.volume)"
          source_type = "Metrics"
        }
      }
    }
  }
}
