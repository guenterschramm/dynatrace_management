resource "dynatrace_segment" "xECM_Corporate" {
  name          = "xECM Corporate"
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
                                "to": 38
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 38
                                },
                                "textValue": "\"xECM Corporate\"",
                                "type": "String",
                                "value": "xECM Corporate"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 66,
                                      "to": 67
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 42,
                                      "to": 65
                                },
                                "textValue": "dt.management_zone.name",
                                "type": "Key",
                                "value": "dt.management_zone.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 66,
                                      "to": 67
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 42,
                                "to": 84
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 68,
                                      "to": 84
                                },
                                "textValue": "\"xECM Corporate\"",
                                "type": "String",
                                "value": "xECM Corporate"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 105,
                                      "to": 106
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 88,
                                      "to": 104
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 105,
                                      "to": 106
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 88,
                                "to": 116
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 107,
                                      "to": 116
                                },
                                "textValue": "xECM_Corp",
                                "type": "String",
                                "value": "xECM_Corp"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 135,
                                      "to": 136
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 121,
                                      "to": 134
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 135,
                                      "to": 136
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 121,
                                "to": 151
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 137,
                                      "to": 151
                                },
                                "textValue": "xECM_Corporate",
                                "type": "String",
                                "value": "xECM_Corporate"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 152
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
                                "to": 23
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 23
                                },
                                "textValue": "xECM_Corp",
                                "type": "String",
                                "value": "xECM_Corp"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 24
              },
              "type": "Group",
              "version": "004"
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
                                "to": 30
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 30
                                },
                                "textValue": "\"xECM Corporate\"",
                                "type": "String",
                                "value": "xECM Corporate"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 31
              },
              "type": "Group",
              "version": "004"
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
    items {
      data_object = "security.events"
      filter      = jsonencode({
              "children": [
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 17,
                                      "to": 18
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 0,
                                      "to": 16
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 17,
                                      "to": 18
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 0,
                                "to": 28
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 19,
                                      "to": 28
                                },
                                "textValue": "xECM_Corp",
                                "type": "String",
                                "value": "xECM_Corp"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 29
              },
              "type": "Group",
              "version": "004"
        })
    }
  }
}
