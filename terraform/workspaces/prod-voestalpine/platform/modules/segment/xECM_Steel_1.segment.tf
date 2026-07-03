resource "dynatrace_segment" "xECM_Steel_1" {
  name          = "xECM Steel"
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
                                      "to": 22
                                },
                                "textValue": "in",
                                "type": "InclusionOperator",
                                "value": "in"
                          },
                          "range": {
                                "from": 0,
                                "to": 48
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 23,
                                      "to": 48
                                },
                                "textValue": "(\"xECM Steel\",xECM_Steel)",
                                "type": "List",
                                "value": [
                                      {
                                            "range": {
                                                  "from": 24,
                                                  "to": 36
                                            },
                                            "textValue": "\"xECM Steel\"",
                                            "type": "String",
                                            "value": "xECM Steel"
                                      },
                                      {
                                            "range": {
                                                  "from": 37,
                                                  "to": 47
                                            },
                                            "textValue": "xECM_Steel",
                                            "type": "String",
                                            "value": "xECM_Steel"
                                      }
                                ]
                          }
                    },
                    {
                          "key": {
                                "range": {
                                      "from": 52,
                                      "to": 72
                                },
                                "textValue": "opl_security_context",
                                "type": "Key",
                                "value": "opl_security_context"
                          },
                          "operator": {
                                "range": {
                                      "from": 73,
                                      "to": 74
                                },
                                "textValue": "=",
                                "type": "ComparisonOperator",
                                "value": "="
                          },
                          "range": {
                                "from": 52,
                                "to": 87
                          },
                          "type": "Statement",
                          "value": {
                                "range": {
                                      "from": 75,
                                      "to": 87
                                },
                                "textValue": "\"xECM Steel\"",
                                "type": "String",
                                "value": "xECM Steel"
                          }
                    }
              ],
              "explicit": false,
              "explicitLogicalOperator": true,
              "logicalOperator": "OR",
              "range": {
                    "from": 0,
                    "to": 88
              },
              "type": "Group",
              "version": "007"
        })
    }
  }
}
