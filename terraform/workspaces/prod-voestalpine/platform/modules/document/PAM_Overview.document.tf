resource "dynatrace_document" "PAM_Overview" {
  name    = "PAM Overview"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 6,
          "w": 16,
          "x": 23,
          "y": 0
        },
        "10": {
          "h": 5,
          "w": 50,
          "x": 0,
          "y": 18
        },
        "11": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 0
        },
        "13": {
          "h": 6,
          "w": 50,
          "x": 0,
          "y": 23
        },
        "4": {
          "h": 6,
          "w": 13,
          "x": 9,
          "y": 0
        },
        "7": {
          "h": 6,
          "w": 50,
          "x": 0,
          "y": 6
        },
        "8": {
          "h": 6,
          "w": 25,
          "x": 0,
          "y": 12
        },
        "9": {
          "h": 6,
          "w": 25,
          "x": 25,
          "y": 12
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-7d",
            "to": "now()"
          }
        },
        "gridLayout": {
          "columnsCount": 52,
          "mode": "responsive"
        }
      },
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host \n| lookup [\n\tfetch dt.davis.problems\n\t| filter event.status == \"ACTIVE\"\n\t| expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields id, name=entity.name, event.id=lookup.event.id, event.kind=lookup.event.kind, affected ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 3,
            "maxResultRecords": 15000
          },
          "title": "Host health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#006650",
                  "field": "affected",
                  "value": "no"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#ae132d",
                  "field": "affected",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "affected"
              },
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries disconnects = sum(pam.disconnects), by: { host.name }\n| sort arraySum(disconnects) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "User Disconnects",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": []
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "davisCopilot": {
            "feedbackProvided": false,
            "prompt": "count of all open problems\n",
            "response": {
              "data": {
                "dql": "fetch dt.davis.problems\n| filter event.status == \"ACTIVE\"\n| summarize openProblems = count()",
                "messageToken": "e9139fda-6e05-49d0-8ba0-a2d3d98f8bb0",
                "metadata": {
                  "notifications": []
                },
                "prompt": "count of all open problems\n",
                "status": "SUCCESSFUL"
              },
              "status": "success"
            },
            "showDqlSnippet": true
          },
          "description": "",
          "query": "fetch dt.davis.problems\n| filter event.status == \"ACTIVE\"\n| summarize openProblems = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "davis-copilot",
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Problems"
            }
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { count(pam.loglevels.counter), value.A = avg(pam.loglevels.counter, scalar: true) }, by: {log.source }, filter: { matchesValue(loglevel, { \"WARN\", \"ERROR\" }) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log History by Source (only WARN and ERROR)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.application\n| append [fetch dt.entity.custom_application]\n| append [fetch dt.entity.mobile_application] \n| lookup [\n\tfetch dt.davis.problems\n\t| filter event.status == \"ACTIVE\"\n\t| expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields id, name=entity.name, event.id=lookup.event.id, event.kind=lookup.event.kind, affected ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 3,
            "maxResultRecords": 15000
          },
          "title": "Application health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#006650",
                  "field": "affected",
                  "value": "no"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#ae132d",
                  "field": "affected",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "affected"
              },
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries interval: 1h, { count = sum(iis.total.method.requests.count, filter: { (host.name == \"2217pvwa0469p01.voestalpine.root.local\") AND (loadbalancer == \"Region1\") }), count.0 = sum(iis.total.method.requests.count, filter: { (host.name == \"2217pvwa0469p02.voestalpine.root.local\") AND (loadbalancer == \"Region2\") }) }, by: { dt.entity.host }, union: true\n| fieldsAdd entityName(dt.entity.host)\n| sort arraySum(count) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Load Distribution",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "count",
                "identifier": "count",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "count.0",
                "identifier": "count.0",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { CurrentAnonymousUsers = avg(iis.W3SVC_WebService.CurrentAnonymousUsers, filter: { host.name == \"2217pvwa0469p01.voestalpine.root.local\" }), CurrentNonAnonymousUsers = avg(iis.W3SVC_WebService.CurrentNonAnonymousUsers, filter: { host.name == \"2217pvwa0469p01.voestalpine.root.local\" }) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current Users 2217pvwa0469p01",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "CurrentAnonymousUsers",
                "identifier": "CurrentAnonymousUsers",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "CurrentNonAnonymousUsers",
                "identifier": "CurrentNonAnonymousUsers",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { CurrentAnonymousUsers = avg(iis.W3SVC_WebService.CurrentAnonymousUsers, filter: { host.name == \"2217pvwa0469p02.voestalpine.root.local\" }), CurrentNonAnonymousUsers = avg(iis.W3SVC_WebService.CurrentNonAnonymousUsers, filter: { host.name == \"2217pvwa0469p02.voestalpine.root.local\" }) }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current Users 2217pvwa0469p02",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "CurrentAnonymousUsers",
                "identifier": "CurrentAnonymousUsers",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "id": "CurrentNonAnonymousUsers",
                "identifier": "CurrentNonAnonymousUsers",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        }
      },
      "variables": [],
      "version": 21
    })
  private = true
}
