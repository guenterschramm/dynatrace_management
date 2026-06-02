resource "dynatrace_segment" "PAM-Privileged_Access_Management" {
  name          = "PAM - Privileged Access Management"
  # description = ""
  is_public     = false
  includes {
    items {
      data_object = "_all_data_object"
      filter      = jsonencode({
              "children": [
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 20,
                                      "to": 21
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 19
                                },
                                "textValue": "dt.security_context",
                                "type": "Key",
                                "value": "dt.security_context"
                          },
                          "operator": {
                                "range": {
                                      "from": 20,
                                      "to": 21
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 27
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 27
                                },
                                "textValue": "\"PAM\"",
                                "type": "String",
                                "value": "PAM"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 46,
                                      "to": 47
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 32,
                                      "to": 45
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 46,
                                      "to": 47
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 32,
                                "to": 80
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 48,
                                      "to": 80
                                },
                                "textValue": "PAM_Privileged_Access_Management",
                                "type": "String",
                                "value": "PAM_Privileged_Access_Management"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 81
              },
              "type": "Group",
              "version": "004"
        })
    }
    items {
      data_object = "dt.entity.host_group"
      filter      = jsonencode({
              "children": [
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 12,
                                      "to": 13
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 11
                                },
                                "textValue": "entity.name",
                                "type": "Key",
                                "value": "entity.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 12,
                                      "to": 13
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 17
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 17
                                },
                                "textValue": "PAM",
                                "type": "String",
                                "value": "PAM"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 18
              },
              "type": "Group",
              "version": "004"
        })
    }
    items {
      data_object = "dt.entity.process_group"
      filter      = ""
      relationship {
        name   = "groups"
        target = "dt.entity.host_group"
      }
    }
    items {
      data_object = "dt.entity.process_group_instance"
      filter      = ""
      relationship {
        name   = "groups"
        target = "dt.entity.host_group"
      }
    }
    items {
      data_object = "dt.entity.host"
      filter      = ""
      relationship {
        name   = "instance_of"
        target = "dt.entity.host_group"
      }
    }
    items {
      data_object = "dt.entity.application"
      filter      = jsonencode({
              "children": [
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 12,
                                      "to": 13
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 11
                                },
                                "textValue": "entity.name",
                                "type": "Key",
                                "value": "entity.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 12,
                                      "to": 13
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 50
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 50
                                },
                                "textValue": "\"PAM - Privileged Access Management\"",
                                "type": "String",
                                "value": "PAM - Privileged Access Management"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 50
              },
              "type": "Group",
              "version": "004"
        })
    }
  }
}
