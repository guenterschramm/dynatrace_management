resource "dynatrace_segment" "PCD_PW_Portal" {
  name          = "PCD / PW Portal"
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
                                "to": 37
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 22,
                                      "to": 37
                                },
                                "textValue": "\"PCD_PW_Portal\"",
                                "type": "String",
                                "value": "PCD_PW_Portal"
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 56,
                                      "to": 58
                                },
                                "textValue": "in",
                                "type": "InclusionOperator",
                                "value": "in"
                          },
                          "key": {
                                "range": {
                                      "from": 42,
                                      "to": 55
                                },
                                "textValue": "frontend.name",
                                "type": "Key",
                                "value": "frontend.name"
                          },
                          "operator": {
                                "range": {
                                      "from": 56,
                                      "to": 58
                                },
                                "textValue": "in",
                                "type": "InclusionOperator",
                                "value": "in"
                          },
                          "range": {
                                "from": 42,
                                "to": 81
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 59,
                                      "to": 81
                                },
                                "textValue": "(PW_Portal,PCD_Portal)",
                                "type": "List",
                                "value": [
                                      {
                                            "range": {
                                                  "from": 60,
                                                  "to": 69
                                            },
                                            "textValue": "PW_Portal",
                                            "type": "String",
                                            "value": "PW_Portal"
                                      },
                                      {
                                            "range": {
                                                  "from": 70,
                                                  "to": 80
                                            },
                                            "textValue": "PCD_Portal",
                                            "type": "String",
                                            "value": "PCD_Portal"
                                      }
                                ]
                          }
                    },
                    {
                          "comparisonOperator": {
                                "range": {
                                      "from": 102,
                                      "to": 103
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "key": {
                                "range": {
                                      "from": 85,
                                      "to": 101
                                },
                                "textValue": "dt.host_group.id",
                                "type": "Key",
                                "value": "dt.host_group.id"
                          },
                          "operator": {
                                "range": {
                                      "from": 102,
                                      "to": 103
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 85,
                                "to": 117
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 104,
                                      "to": 117
                                },
                                "textValue": "PCD_PW_Portal",
                                "type": "String",
                                "value": "PCD_PW_Portal"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 118
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
                                "to": 27
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 14,
                                      "to": 27
                                },
                                "textValue": "PCD_PW_Portal",
                                "type": "String",
                                "value": "PCD_PW_Portal"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 28
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
                                      "to": 14
                                },
                                "textValue": "in",
                                "type": "InclusionOperator",
                                "value": "in"
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
                                      "to": 14
                                },
                                "textValue": "in",
                                "type": "InclusionOperator",
                                "value": "in"
                          },
                          "range": {
                                "from": 0,
                                "to": 41
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 15,
                                      "to": 41
                                },
                                "textValue": "(\"PCD Portal\",\"PW Portal\")",
                                "type": "List",
                                "value": [
                                      {
                                            "range": {
                                                  "from": 16,
                                                  "to": 28
                                            },
                                            "textValue": "\"PCD Portal\"",
                                            "type": "String",
                                            "value": "PCD Portal"
                                      },
                                      {
                                            "range": {
                                                  "from": 29,
                                                  "to": 40
                                            },
                                            "textValue": "\"PW Portal\"",
                                            "type": "String",
                                            "value": "PW Portal"
                                      }
                                ]
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": false,
              "logicalOperator": "AND",
              "range": {
                    "from": 0,
                    "to": 42
              },
              "type": "Group",
              "version": "004"
        })
    }
  }
}
