resource "dynatrace_segment" "xECM_Steel" {
  name          = "xECM Steel"
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
                                "to": 34
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 34
                                },
                                "textValue": "\"xECM Steel\"",
                                "type": "String",
                                "value": "xECM Steel"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 58,
                                      "to": 59
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 38,
                                      "to": 57
                                },
                                "textValue": "dt.security_context",
                                "type": "Key",
                                "value": "dt.security_context"
                          },
                          "operator": {
                                "range": {
                                      "from": 58,
                                      "to": 59
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 38,
                                "to": 66
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 60,
                                      "to": 66
                                },
                                "textValue": "xECM_P",
                                "type": "String",
                                "value": "xECM_P"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 94,
                                      "to": 95
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 70,
                                      "to": 93
                                },
                                "textValue": "dt.management_zone.name",
                                "type": "Key",
                                "value": "dt.management_zone.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 94,
                                      "to": 95
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 70,
                                "to": 108
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 96,
                                      "to": 108
                                },
                                "textValue": "\"xECM Steel\"",
                                "type": "String",
                                "value": "xECM Steel"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 129,
                                      "to": 130
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 112,
                                      "to": 128
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 129,
                                      "to": 130
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 112,
                                "to": 137
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 131,
                                      "to": 137
                                },
                                "textValue": "xECM_P",
                                "type": "String",
                                "value": "xECM_P"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 155,
                                      "to": 156
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 141,
                                      "to": 154
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 155,
                                      "to": 156
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 141,
                                "to": 167
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 157,
                                      "to": 167
                                },
                                "textValue": "xECM_Steel",
                                "type": "String",
                                "value": "xECM_Steel"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 168
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
                                "to": 20
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 20
                                },
                                "textValue": "xECM_P",
                                "type": "String",
                                "value": "xECM_P"
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
                                "to": 26
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 26
                                },
                                "textValue": "\"xECM Steel\"",
                                "type": "String",
                                "value": "xECM Steel"
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
                                "to": 25
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 19,
                                      "to": 25
                                },
                                "textValue": "xECM_P",
                                "type": "String",
                                "value": "xECM_P"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 26
              },
              "type": "Group",
              "version": "004"
        })
    }
  }
}
