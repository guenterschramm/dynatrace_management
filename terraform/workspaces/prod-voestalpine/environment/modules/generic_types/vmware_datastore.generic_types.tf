resource "dynatrace_generic_types" "vmware_datastore" {
  name         = "vmware:datastore"
  enabled      = true
  created_by   = "com.dynatrace.vmware-integration 3.14.13"
  display_name = "VMware Datastores"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQ3YTc2N2Q5LWY2YWMtNWFmZC1iZTI3LWU2M2Y2NDgzZDM4M77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "storage"
      id_pattern            = "vmware_vm_{vcenter.address}_{datastore.id}_{datastore.name}"
      instance_name_pattern = "{datastore.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{vcenter.address}"
        }
        attribute {
          display_name = "ID"
          key          = "datastore_id"
          pattern      = "{datastore.id}"
        }
        attribute {
          display_name = "Name"
          key          = "datastore_name"
          pattern      = "{datastore.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "storage"
      id_pattern            = "vmware_vm_{device.address}_{datastore.id}_{datastore.name}"
      instance_name_pattern = "{datastore.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "ID"
          key          = "datastore_id"
          pattern      = "{datastore.id}"
        }
        attribute {
          display_name = "Name"
          key          = "datastore_name"
          pattern      = "{datastore.name}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{datastore.type}"
        }
        attribute {
          display_name = "Status"
          key          = "status"
          pattern      = "{datastore.status}"
        }
        attribute {
          display_name = "NAS Remote Host"
          key          = "nas_remotehost"
          pattern      = "{datastore.nas.remotehost}"
        }
        attribute {
          display_name = "NAS Remote Path"
          key          = "nas_remotepath"
          pattern      = "{datastore.nas.remotepath}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(vmware.info.datastore_info)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "storage"
      id_pattern            = "vmware_vm_{device.address}_{datastore.id}_{datastore.name}"
      instance_name_pattern = "{datastore.name}"
      attributes {
        attribute {
          display_name = "vCenter"
          key          = "vcenter"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "ID"
          key          = "datastore_id"
          pattern      = "{datastore.id}"
        }
        attribute {
          display_name = "Name"
          key          = "datastore_name"
          pattern      = "{datastore.name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(vmware.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
