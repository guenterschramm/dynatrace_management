resource "dynatrace_segment" "VMWare_Hosts" {
  name        = "VMWare Hosts"
  description = "VMware Machines"
  is_public   = false
  includes {
    items {
      data_object = "dt.entity.datastore"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.host"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.hypervisor"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.hypervisor_disk"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.vcenter"
      filter      = ""
      relationship {
        name   = "manages"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.virtualmachine"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.vmware_datacenter"
      }
    }
    items {
      data_object = "dt.entity.vmware_datacenter"
      filter      = jsonencode({
              "children": [
                    {
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 24
                                },
                                "textValue": "virtualizationSupervisor",
                                "type": "Key",
                                "value": "virtualizationSupervisor"
                          },
                          "operator": {
                                "range": {
                                      "from": 25,
                                      "to": 26
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 41
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 27,
                                      "to": 41
                                },
                                "textValue": "VMWARE_VCENTER",
                                "type": "String",
                                "value": "VMWARE_VCENTER"
                          }
                    }
              ],
              "explicit": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 42
              },
              "type": "Group"
        })
    }
    items {
      data_object = "events"
      filter      = jsonencode({
              "children": [
                    {
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 23
                                },
                                "textValue": "labels.alerting_profile",
                                "type": "Key",
                                "value": "labels.alerting_profile"
                          },
                          "operator": {
                                "range": {
                                      "from": 24,
                                      "to": 25
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 41
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 26,
                                      "to": 41
                                },
                                "textValue": "\"VMWare Alerts\"",
                                "type": "String",
                                "value": "VMWare Alerts"
                          }
                    },
                    {
                          "key": {
                                "range": {
                                      "from": 45,
                                      "to": 68
                                },
                                "textValue": "labels.alerting_profile",
                                "type": "Key",
                                "value": "labels.alerting_profile"
                          },
                          "operator": {
                                "range": {
                                      "from": 69,
                                      "to": 70
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 45,
                                "to": 94
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 71,
                                      "to": 94
                                },
                                "textValue": "\"Virtualization Alerts\"",
                                "type": "String",
                                "value": "Virtualization Alerts"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 94
              },
              "type": "Group"
        })
    }
  }
}
