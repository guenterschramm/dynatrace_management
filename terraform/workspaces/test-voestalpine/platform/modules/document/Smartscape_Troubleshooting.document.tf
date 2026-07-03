resource "dynatrace_document" "Smartscape_Troubleshooting" {
  name    = "Smartscape Troubleshooting"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "3": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "4": {
          "h": 5,
          "w": 7,
          "x": 0,
          "y": 19
        },
        "5": {
          "h": 5,
          "w": 15,
          "x": 7,
          "y": 19
        },
        "6": {
          "h": 5,
          "w": 22,
          "x": 0,
          "y": 24
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"EXT_NETWORK_DEVICE\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"type\"]": 225
              },
              "sortBy": [
                {
                  "columnId": "[\"id\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"EXT_NETWORK_DEVICE\"\n| fieldsAdd tags,dt.security_context",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"troubleshooting.upsert_source\"]": 436.8
              },
              "sortBy": [
                {
                  "columnId": "[\"description\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes EXT_NETWORK_DEVICE\n| fieldsAdd type, dt.security_context\n| traverse { belongs_to }, { EXT_NETWORK_INTERFACE }, direction:\"backward\", fieldsKeep: { id, name, description, dt.security_context}\n| traverse { calls }, { EXT_NETWORK_INTERFACE }, direction:\"forward\", fieldsKeep: { id, name }\n| traverse { belongs_to}, { EXT_NETWORK_DEVICE }, direction:\"forward\", fieldsKeep: { id, name }\n| fields\n    type,\n    dt.security_context,\n    base.device=record(id=id, name=name),\n    base.interface=record(id=dt.traverse.history[2][id], name=dt.traverse.history[2][name]),\n    connection=\"   ⬅️   \",\n    neighbor.interface=record(id=dt.traverse.history[1][id], name=dt.traverse.history[1][name]),\n    neighbor.device=record(id=dt.traverse.history[0][id], name=dt.traverse.history[0][name]),\n    neighbor.security=record(id=dt.traverse.history[0][id], name=dt.traverse.history[0][dt.security_context])\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"neighbor.security\",\"name\"]": 92.8,
                "[\"type\"]": 172
              }
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| summarize by:{type},count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"NETWORK_INTERFACE\"",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "sortBy": [
                {
                  "columnId": "[\"id\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.network:device`\n| fieldsAdd dt.security_context, managementZones\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"id\"]": 281.4
              }
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  private = true
}
