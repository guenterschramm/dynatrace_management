resource "dynatrace_document" "_TSG_PAM_User_Disconnect" {
  name      = "[TSG] PAM User Disconnect"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "layouts": {
        "1": {
          "h": 4,
          "w": 16,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 5,
          "w": 16,
          "x": 0,
          "y": 5
        },
        "3": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 11
        },
        "4": {
          "h": 1,
          "w": 11,
          "x": 0,
          "y": 4
        },
        "5": {
          "h": 1,
          "w": 11,
          "x": 0,
          "y": 10
        },
        "6": {
          "h": 5,
          "w": 16,
          "x": 0,
          "y": 17
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-72h",
            "to": "now()"
          }
        }
      },
      "tiles": {
        "1": {
          "content": "# PAM User Disconnect\n\nError **PSMSR519E** is indicating an issue where user session are being disconnected. When that occurs:\n * the affected hosts have to be rebooted\n * a cleanup as to be performed\n\nContact for the PAM system: [Robert Traxler](mailto://robert.traxler@voestalpine.com)",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries sum(pam.disconnects,default:0), nonempty:true, by:{host.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Explore metrics",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter matchesValue(dt.host_group.id, \"PAM\") AND matchesValue(PAM_Error_Reason, \"PSMSR519E\") AND content ~ \"handling session.\"\n| sort timestamp desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-24h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"timestamp\"]",
                "[\"content\"]",
                "[\"host.name\"]",
                "[\"loglevel\"]",
                "[\"log.source\"]",
                "[\"winlog.level\"]",
                "[\"status\"]",
                "[\"dt.entity.process_group\"]",
                "[\"PAM_Error_Reason\"]",
                "[\"dt.host_group.id\"]",
                "[\"winlog.username\"]",
                "[\"winlog.keywords\"]",
                "[\"dt.cost.costcenter\"]",
                "[\"winlog.opcode\"]",
                "[\"dt.openpipeline.pipelines\"]",
                "[\"winlog.task\"]",
                "[\"RecordID\"]",
                "[\"winlog.provider\"]",
                "[\"winlog.eventid\"]",
                "[\"Loadbalancer\"]",
                "[\"dt.entity.host\"]",
                "[\"dt.cost.product\"]",
                "[\"dt.source_entity\"]",
                "[\"dt.entity.host_group\"]",
                "[\"dt.openpipeline.source\"]",
                "[\"PAM_Error\"]",
                "[\"dt.security_context\"]",
                "[\"dt.entity.process_group_instance\"]",
                "[\"PAM_WindowsPatchgroup\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1757590170821,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"content\"]": 1569,
                "[\"host.name\"]": 353
              },
              "hiddenColumns": [
                [
                  "dt.entity.host"
                ],
                [
                  "dt.entity.process_group"
                ],
                [
                  "dt.entity.process_group_instance"
                ],
                [
                  "dt.host_group.id"
                ],
                [
                  "dt.security_context"
                ],
                [
                  "dt.source_entity"
                ],
                [
                  "loglevel"
                ],
                [
                  "status"
                ],
                [
                  "winlog.level"
                ],
                [
                  "winlog.opcode"
                ],
                [
                  "winlog.provider"
                ],
                [
                  "winlog.task"
                ],
                [
                  "RecordID"
                ],
                [
                  "dt.cost.costcenter"
                ],
                [
                  "dt.cost.product"
                ],
                [
                  "dt.entity.host_group"
                ],
                [
                  "dt.openpipeline.pipelines"
                ],
                [
                  "dt.openpipeline.source"
                ],
                [
                  "winlog.eventid"
                ],
                [
                  "winlog.keywords"
                ],
                [
                  "winlog.username"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"timestamp\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "4": {
          "content": "# Disconnect History",
          "type": "markdown"
        },
        "5": {
          "content": "# Log details",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch dt.davis.events\n| filter event.name ==  \"PAM User Disconnect\"\n| expand entityId = dt.source_entity\n| fieldsAdd entityName = if(startsWith(entityId,\"PROCESS_GROUP_INSTANCE-\"), lookup([fetch dt.entity.process_group_instance], sourceField:entityId, lookupField:id)[entity.name], else: entityName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Explore metrics",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "problem-TSG-5669121691853976939-1759919156201V2-faf16d6e-6e69-42f3-8e09-2071def9fb22"
  # private = false
}
