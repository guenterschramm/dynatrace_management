resource "dynatrace_segment" "Database_Servers" {
  name        = "Database Servers"
  description = "Database related resources"
  is_public   = false
  includes {
    items {
      data_object = "_all_data_object"
      filter      = jsonencode({
              "children": [
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 5,
                                      "to": 6
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 4
                                },
                                "textValue": "tags",
                                "type": "Key",
                                "value": "tags"
                          },
                          "operator": {
                                "range": {
                                      "from": 5,
                                      "to": 6
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 31
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 7,
                                      "to": 31
                                },
                                "textValue": "\"Application:SQL Server\"",
                                "type": "String",
                                "value": "Application:SQL Server"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 55,
                                      "to": 56
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 35,
                                      "to": 54
                                },
                                "textValue": "dt.security_context",
                                "type": "Key",
                                "value": "dt.security_context"
                          },
                          "operator": {
                                "range": {
                                      "from": 55,
                                      "to": 56
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 35,
                                "to": 65
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 57,
                                      "to": 65
                                },
                                "textValue": "Database",
                                "type": "String",
                                "value": "Database"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 66
              },
              "type": "Group",
              "version": "004"
        })
    }
    items {
      data_object = "dt.entity.host"
      filter      = jsonencode({
              "children": [
                    {
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 4
                                },
                                "textValue": "tags",
                                "type": "Key",
                                "value": "tags"
                          },
                          "operator": {
                                "range": {
                                      "from": 5,
                                      "to": 6
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 31
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 7,
                                      "to": 31
                                },
                                "textValue": "\"Application:SQL Server\"",
                                "type": "String",
                                "value": "Application:SQL Server"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 32
              },
              "type": "Group"
        })
    }
    items {
      data_object = "dt.entity.ec2_instance"
      filter      = ""
      relationship {
        name   = "runs"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.aws_availability_zone"
      filter      = ""
      relationship {
        name   = "contains"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.hypervisor"
      filter      = ""
      relationship {
        name   = "runs"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.virtualmachine"
      filter      = ""
      relationship {
        name   = "runs"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.vmware_datacenter"
      filter      = ""
      relationship {
        name   = "contains"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.geoloc_site"
      filter      = ""
      relationship {
        name   = "contains"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.service_instance"
      filter      = ""
      relationship {
        name   = "runs_on"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.service"
      filter      = ""
      relationship {
        name   = "runs_on"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.process_group_instance"
      filter      = ""
      relationship {
        name   = "belongs_to"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.process_group"
      filter      = ""
      relationship {
        name   = "runs_on"
        target = "dt.entity.host"
      }
    }
    items {
      data_object = "dt.entity.host_group"
      filter      = ""
      relationship {
        name   = "instantiates"
        target = "dt.entity.host"
      }
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
                                "to": 43
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 26,
                                      "to": 43
                                },
                                "textValue": "\"Database Alerts\"",
                                "type": "String",
                                "value": "Database Alerts"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 43
              },
              "type": "Group"
        })
    }
  }
}
