resource "dynatrace_segment" "Amazon_AWS_Machines" {
  name        = "Amazon AWS Machines"
  description = "Hosts running in AWS"
  is_public   = false
  includes {
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
                                "to": 49
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 26,
                                      "to": 49
                                },
                                "textValue": "\"Virtualization Alerts\"",
                                "type": "String",
                                "value": "Virtualization Alerts"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 49
              },
              "type": "Group"
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
                                      "to": 14
                                },
                                "textValue": "hypervisorType",
                                "type": "Key",
                                "value": "hypervisorType"
                          },
                          "operator": {
                                "range": {
                                      "from": 15,
                                      "to": 16
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 26
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 17,
                                      "to": 26
                                },
                                "textValue": "AWS_NITRO",
                                "type": "String",
                                "value": "AWS_NITRO"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 27
              },
              "type": "Group"
        })
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
  }
}
