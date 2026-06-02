resource "dynatrace_segment" "Bee4IT" {
  name          = "Bee4IT"
  # description = ""
  is_public     = false
  includes {
    items {
      data_object = "_all_data_object"
      filter      = jsonencode({
              "children": [
                    {
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
                                "to": 30
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 30
                                },
                                "textValue": "\"Bee4IT\"",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    },
                    {
                          "key": {
                                "range": {
                                      "from": 35,
                                      "to": 58
                                },
                                "textValue": "dt.management_zone.name",
                                "type": "Key",
                                "value": "dt.management_zone.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 59,
                                      "to": 60
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 35,
                                "to": 70
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 62,
                                      "to": 70
                                },
                                "textValue": "\"Bee4IT\"",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    },
                    {
                          "key": {
                                "range": {
                                      "from": 74,
                                      "to": 90
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 91,
                                      "to": 92
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 74,
                                "to": 99
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 93,
                                      "to": 99
                                },
                                "textValue": "Bee4IT",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    },
                    {
                          "key": {
                                "range": {
                                      "from": 103,
                                      "to": 116
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 117,
                                      "to": 118
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 103,
                                "to": 125
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 119,
                                      "to": 125
                                },
                                "textValue": "Bee4IT",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 126
              },
              "type": "Group",
              "version": "007"
        })
    }
    items {
      data_object = "dt.entity.host_group"
      filter      = jsonencode({
              "children": [
                    {
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
                                "to": 20
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 20
                                },
                                "textValue": "Bee4IT",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 21
              },
              "type": "Group",
              "version": "007"
        })
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
      data_object = "dt.entity.process_group"
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
                                "to": 22
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 22
                                },
                                "textValue": "\"Bee4IT\"",
                                "type": "String",
                                "value": "Bee4IT"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 22
              },
              "type": "Group",
              "version": "007"
        })
    }
    items {
      data_object = "dt.entity.http_check"
      filter      = ""
      relationship {
        name   = "monitors"
        target = "dt.entity.application"
      }
    }
  }
}
