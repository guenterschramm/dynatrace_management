resource "dynatrace_generic_types" "disk-devices_software-raid" {
  name         = "disk-devices:software-raid"
  enabled      = true
  created_by   = "com.dynatrace.extension.disk-devices 1.0.3"
  display_name = "Software Raid"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQyNDNlNDcwLTI1ZjYtNWExZS05MmM1LWFmNjEzMjY1ZmQxY77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "{storage.software-raid.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.software-raid.kname} software raid"
      role                  = "child"
      attributes {
        attribute {
          display_name = "Type"
          key          = "soft_raid_type"
          pattern      = "{storage.software-raid.type}"
        }
        attribute {
          display_name = "Encrypted"
          key          = "soft_raid_encrypted"
          pattern      = "{storage.software-raid.encrypted}"
        }
        attribute {
          display_name = "Mountpoint"
          key          = "soft_raid_mountpoint"
          pattern      = "{storage.software-raid.mountpoint}"
        }
        attribute {
          display_name = "Other mountpoints"
          key          = "soft_raid_othermount"
          pattern      = "{storage.software-raid.other-mountpoints}"
        }
        attribute {
          display_name = "File system type"
          key          = "soft_raid_fstype"
          pattern      = "{storage.software-raid.fstype}"
        }
        attribute {
          display_name = "Device path"
          key          = "soft_raid_path"
          pattern      = "{storage.software-raid.path}"
        }
        attribute {
          display_name = "Read only"
          key          = "soft_raid_readonly"
          pattern      = "{storage.software-raid.read-only}"
        }
        attribute {
          display_name = "Removable"
          key          = "soft_raid_removable"
          pattern      = "{storage.software-raid.removable}"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.software-raid)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{storage.software-raid.parent} {dt.entity.host}"
      instance_name_pattern = "{storage.software-raid.parent} software raid"
      role                  = "parent"
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.software-raid)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "{storage.software-raid.kname} {dt.entity.host}"
      instance_name_pattern = "{storage.software-raid.kname} software raid"
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.disk-devices.partition)"
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
