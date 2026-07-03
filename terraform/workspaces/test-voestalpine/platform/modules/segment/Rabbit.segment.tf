resource "dynatrace_segment" "Rabbit" {
  name          = "Rabbit"
  # description = ""
  is_public     = false
  includes {
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
                                "textValue": "TPI_Messaging",
                                "type": "String",
                                "value": "TPI_Messaging"
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
      data_object = "dt.entity.host"
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
                                "to": 93
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 15,
                                      "to": 93
                                },
                                "textValue": "(2217sqmserv01.voestalpine.root.local , 2236dblogwebt.voestalpine.root.local )",
                                "type": "List",
                                "value": [
                                      {
                                            "range": {
                                                  "from": 16,
                                                  "to": 52
                                            },
                                            "textValue": "2217sqmserv01.voestalpine.root.local",
                                            "type": "String",
                                            "value": "2217sqmserv01.voestalpine.root.local"
                                      },
                                      {
                                            "range": {
                                                  "from": 55,
                                                  "to": 91
                                            },
                                            "textValue": "2236dblogwebt.voestalpine.root.local",
                                            "type": "String",
                                            "value": "2236dblogwebt.voestalpine.root.local"
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
                    "to": 93
              },
              "type": "Group",
              "version": "004"
        })
      relationship {
        name   = "instance_of"
        target = "dt.entity.host_group"
      }
    }
  }
}
