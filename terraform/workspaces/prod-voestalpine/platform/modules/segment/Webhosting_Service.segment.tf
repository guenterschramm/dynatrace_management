resource "dynatrace_segment" "Webhosting_Service" {
  name          = "Webhosting Service"
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
                                "to": 42
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 42
                                },
                                "textValue": "\"Webhosting Service\"",
                                "type": "String",
                                "value": "Webhosting Service"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 60,
                                      "to": 61
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "starts-with"
                          },
                          "key": {
                                "range": {
                                      "from": 46,
                                      "to": 59
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 60,
                                      "to": 61
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "starts-with"
                          },
                          "range": {
                                "from": 46,
                                "to": 75
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 62,
                                      "to": 75
                                },
                                "textValue": "\"Webhosting*\"",
                                "type": "String",
                                "value": "Webhosting"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 96,
                                      "to": 97
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 79,
                                      "to": 95
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 96,
                                      "to": 97
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 79,
                                "to": 108
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 98,
                                      "to": 108
                                },
                                "textValue": "Webhosting",
                                "type": "String",
                                "value": "Webhosting"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 109
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
                                "to": 24
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 24
                                },
                                "textValue": "Webhosting",
                                "type": "String",
                                "value": "Webhosting"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 25
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
                                "value": "starts-with"
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
                                "value": "starts-with"
                          },
                          "range": {
                                "from": 0,
                                "to": 27
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 27
                                },
                                "textValue": "\"Webhosting*\"",
                                "type": "String",
                                "value": "Webhosting"
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
              "type": "Group",
              "version": "004"
        })
    }
  }
}
